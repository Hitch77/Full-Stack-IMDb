# README

This is a Rails-React clone of the current IMDb. Here you can view revelant information on featured and upcoming movies. Upon creating an account you can also leave a review and rating on each and all released movies.

## Live site

Check it out: [Live Site](https://eyemdbee.herokuapp.com/#/)

## Technologies

### Frontend
  * Javascript
    * React - An open-source, front end, JavaScript library for building user interfaces or UI components.
    * Redux - An open-source JavaScript library for managing application state.
    * Webpack - An open source, Javascript module bundler.
  * HTML - standard markup language for documents designed to be displayed in a web browser.
  * SCSS - preprocessor which lets you use features that aren’t a part of the wider CSS standard yet, and provides better workflows for maintaining your stylesheets.

### Backend
  * Ruby on Rails - model–view–controller framework, providing default structures for a database
  * Jbuilder - template engine for rendering JSON responses.
  * PostgreSQL - A relational data management system

## Highlights

```javascript
avgRatingPerMovie(){
    let movieRatings = []
    this.props.reviews.map((review) => {
        if (review.movie_id == this.props.movie.id) {
            movieRatings.push(review.rating)
        }
    }
    )
    let total = movieRatings.reduce((a, b) => a + b, 0)
    let avg = total / movieRatings.length
    avg = Math.round(avg * 10) / 10
    if (!avg) return (<><div className="splash-rating">Not yet rated</div>
                        <div className="splash-question">
                            Seen it?
                            <Link className="splash-link" to={`/movies/${this.props.movie.id}`}>Write a review</Link>
                        </div>
                        </>)
    return (<>
            <div className="splash-rating">
                <span className="star">★ </span>
                {avg} / 10</div>
                <div className="splash-question">Seen it?
                <Link className="splash-link" to={`/movies/${this.props.movie.id}`}>Write a review</Link>
                </div>
                </>)
}
```

The picture above is the code I used to render ratings to each movie on the home page by extracting the data from each user review. Initially, I was unable to receive any ratings because it was located in a route that was nested under each movie as shown below.


``` javascript
resources :movies, only: [:index, :show] do
      resources :reviews, only: [:index, :show, :create]
      collection do
        get :search, to: "movies#search", as: "search"
      end
end
```

My workaround was to create another route dedicated to fetch all User Reviews that will mounted on the Home Page when rendered. This allowed me to obtain access to all reviews instead of the earlier nested reviews for each movie or user based on their ID's. 

```javascript
class Api::ReviewsController < ApplicationController

  def index
      if params[:movie_id]
          @reviews = Review.where(movie_id: params[:movie_id])
      elsif params[:user_id]
          @reviews = Review.where(user_id: params[:user_id])
      else 
          @reviews = Review.all
          render :index
      end
  end
end
```

After that, I placed another conditional statement in the index method of my reviews controller indicating that if reviews is trying to be fetched without the parameters of a user or movie ID, then it will fetch every review.

```javascript
export const fetchReviews = movieId => (
    $.ajax({
        method: 'GET',
        url: `api/movies/${movieId}/reviews`,
    })
)

export const fetchUserReviews = userId => (
    $.ajax({
        method: 'GET',
        url: `api/users/${userId}/reviews`,
    })
)

export const fetchAllReviews = (data) => (
    $.ajax({
        method: 'GET',
        url: `api/reviews`,
        data
    })
)
```

Following that, I dispatched an action on my frontend and then mounted the result state on my Home Page. I was then allowed to grab the ratings from each review and diplay the average as posted in my first code snippet.

```javascript
const mapDispatchToProps = dispatch => ({
    fetchMovies:() => dispatch(fetchMovies()),
    fetchAllReviews:() => dispatch(fetchAllReviews())
});
```

```javascript
componentDidMount () {
    this.props.fetchMovies()
    this.props.fetchAllReviews()
}

```
In addition, I added a ternery statement in my html that will only render ratings if the movie has been already released as unreleased movies should not have any ratings.

```html
</div>
    {this.props.movie.year == '2022' ? <><div className="coming-soon">Coming Soon</div><div className="year">2022</div></> : <div>{this.avgRatingPerMovie()}</div>}
</div>
```

