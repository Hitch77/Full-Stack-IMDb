import { connect } from 'react-redux';
import MovieShow from './movie_show';
import { fetchMovie } from '../../actions/movie_actions';
import { fetchReviews } from '../../actions/review_actions';
import { fetchCelebs } from '../../actions/celeb_actions';

const mapStateToProps = (state, ownProps) => {
    return {movie: state.entities.movies[ownProps.match.params.movieId],
            user: state.entities.users[state.session.id],
            celebs: Object.values(state.entities.celebs)}
};
const mapDispatchToProps = dispatch => ({
    fetchMovie: movieId => dispatch(fetchMovie(movieId)),
    fetchReviews: (movieId) => dispatch(fetchReviews(movieId)),
    fetchCelebs: () => dispatch(fetchCelebs())
});

export default connect(mapStateToProps, mapDispatchToProps)(MovieShow);