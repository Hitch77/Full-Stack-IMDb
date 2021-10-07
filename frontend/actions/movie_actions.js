import * as MovieAPIUtil from '../util/movie_api_util'

export const RECEIVE_MOVIES = 'RECEIVE_MOVIES';
export const RECEIVE_MOVIE = 'RECEIVE_MOVIE';

const receiveMovies = movies => ({
    type: RECEIVE_MOVIES,
    movies,
});

const receiveMovie = movie  => ({
    type: RECEIVE_MOVIE,
    movie
});

export const fetchMovies = () => dispatch => (
    MovieAPIUtil.fetchMovies().then(movies => (
        dispatch(receiveMovies(movies))
    ))
);
export const fetchMovie = movieId => dispatch => (
    MovieAPIUtil.fetchMovie(movieId).then(movie => 
        dispatch(receiveMovie(movie)))
);

export const movieSearch = query => dispatch => (
    MovieAPIUtil.movieSearch(query).then(movies => 
        dispatch(receiveMovies(movies)))
)
