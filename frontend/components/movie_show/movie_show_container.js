import { connect } from 'react-redux';
import MovieShow from './movie_show';
import { fetchMovie } from '../../actions/movie_actions';

const mapStateToProps = (state, ownProps) => {
    return {movie: state.entities.movies[ownProps.match.params.movieId]}
};
const mapDispatchToProps = dispatch => ({
    fetchMovie: movieId => dispatch(fetchMovie(movieId))
});

export default connect(mapStateToProps, mapDispatchToProps)(MovieShow);