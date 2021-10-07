import React from 'react'
import MovieItem from './movie_item'
import NavBarContainer from '../nav_bar/nav_bar_container'
import MovieAd from '../../../app/assets/images/movieAd.png'

class HomePage extends React.Component {
    constructor(props) {
        super(props)
    }

    componentDidMount () {
        this.props.fetchMovies()
        this.props.fetchAllReviews()
    }

    render (){
        return (
            <div>
            <header>
                <NavBarContainer/>
            </header>
                <div><img className="movie-ad" src={MovieAd} /></div>
                <div className="index-subtitle">Featured Movies</div>
                <div className="featured">{this.props.movies.map((movie, i) => (
                    movie.year == '2021' ? <MovieItem movie={movie} reviews={this.props.reviews} key={i}/> : null
            ))}
            </div>
                <div className="index-subtitle">Unreleased Movies</div>
                <div className="unreleased">{this.props.movies.map((movie, i) => (
                    movie.year == '2022' ? <MovieItem movie={movie} reviews={this.props.reviews} key={i} /> : null
                ))}
                </div>
            </div>
        
        )
    }
}

export default HomePage

