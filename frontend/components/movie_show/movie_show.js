import React from 'react';
import { Link, NavLink } from 'react-router-dom';
import NavBarContainer from '../nav_bar/nav_bar_container';
import MovieAd2 from '../../../app/assets/images/movieAd2.png'
import ReviewIndexContainer from '../reviews/review_index_container';

class MovieShow extends React.Component {
    constructor(props){
        super(props)
    }

    componentDidMount() {
        console.log(this.props)
        this.props.fetchReviews(this.props.match.params.movieId)
        this.props.fetchMovie(this.props.match.params.movieId);
        this.props.fetchCelebs()
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
                            <div className="director"> Director {this.props.celebs.map((celeb, i) => {
                                if (celeb.id === movie.director_id)
                                    return <div key={i} className="celeb_id">{celeb.name}</div>
                            })}</div>
                            <div className="writers">Writer {this.props.celebs.map((celeb, i) => {
                                if (celeb.id === movie.writer_id)
                                    return <div key={i} className="celeb_id">{celeb.name}</div>
                            })}</div>
                            <div className="stars">Starring {this.props.celebs.map((celeb, i) => {
                                if (celeb.id === movie.actor_id)
                                    return <div key={i} className="celeb_id">{celeb.name}</div>
                            })}</div>
                    </div>
                    </div>
                </div>
                {movie.year == '2021' ? <ReviewIndexContainer user={this.props.user} movie={movie} /> : <div>No reviews yet, check back after its release</div>}
            </div>
        );
    }
}

export default MovieShow;