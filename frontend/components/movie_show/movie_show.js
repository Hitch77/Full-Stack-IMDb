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
                    <div className="movie-show-container">
                        <h1 className="movie-show-title">{movie.title}</h1>
                        <div color="#ffffff" >Year &#8226; Film-Rating &#8226; Duration</div>
                        <img className="movie-show-image" src={movie.photoUrl}/>
                        <div className="storyline">{movie.description}</div>
                    </div>
                </div>
            </div>
        );
    }
}

export default MovieShow;