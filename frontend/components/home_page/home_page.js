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
    }

    render (){

        return (
            <div>
            <header>
                <NavBarContainer/>
            </header>
                <div><img className="movie-ad" src={MovieAd} /></div>
                <div className="index-subtitle">Featured Movies</div>
            <div id="movie-index">{this.props.movies.map((movie, i) => (
                <MovieItem movie={movie} key={i}/>
            ))}
            </div>
            </div>
        
        )
    }
}

export default HomePage

