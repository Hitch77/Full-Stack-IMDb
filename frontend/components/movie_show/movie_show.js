import React from 'react';
import { Link, NavLink } from 'react-router-dom';
import NavBarContainer from '../nav_bar/nav_bar_container';
import MovieAd2 from './movieAd2.jpeg'

class MovieShow extends React.Component {
    constructor(props){
        super(props)
    }

    componentDidMount() {
        console.log(this.props)
        this.props.fetchMovie(this.props.match.params.movieId);
    }

    render() {
        if (!this.props.movie) return null
        const { movie } = this.props;
        return (
            <div>
                <header>
                    <NavBarContainer />
                </header>
                    <div><img className="movie-ad" src={MovieAd2} /></div>
                <div className="movie-show-page">
                    <h1 className="movie-show-title">{movie.title}</h1>
                    <div color="#ffffff" className="movie-data">{movie.year} {movie.film_rating} {movie.duration}</div>
                    <div className="movie-show">
                    <div className="movie-show-container-left">
                        <img className="movie-show-image" src={movie.photoUrl}/>
                    </div>
                    <div className="movie-show-container-mid">
                        <div className="storyline">{movie.description}</div>
                        <div className="director">Director</div>
                        <div className="writers">Writers</div>
                        <div className="stars">Stars</div>
                    </div>
                    </div>
                </div>
            </div>
        );
    }
}

export default MovieShow;