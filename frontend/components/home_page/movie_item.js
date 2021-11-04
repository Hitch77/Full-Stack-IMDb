import React from 'react'
import {Link} from 'react-router-dom'




class MovieItem extends React.Component {

    constructor(props) {
        super(props)
        // this.avgRatingPerMovie = this.avgRatingPerMovie.bind(this)
    }

    // componentDidMount() {
    //     this.props.fetchAllReviews
    // }

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
    


    render() {
        return (
            <div className={`movie-block`}>
                <Link to={`/movies/${this.props.movie.id}`}>
                    <img src={this.props.movie.photoUrl} className={`movie`}/>
                </Link>
                <Link to={`/movies/${this.props.movie.id}`} className="movie-link">{this.props.movie.title}</Link>
            <div className="genres">
                <div>{this.props.movie.genre_one}</div>
                <div>{this.props.movie.genre_two}</div>
            </div>
                {this.props.movie.year == '2022' ? <><div className="coming-soon">Coming Soon</div><div className="year">2022</div></> : <div>{this.avgRatingPerMovie()}</div>}
            </div>
        )
    }
}

export default MovieItem
