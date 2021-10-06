import { connect } from 'react-redux';
import UserShow from './user_show';
import { fetchUserReviews } from '../../actions/review_actions';
import { fetchMovies } from '../../actions/movie_actions';

const mapStateToProps = ( state, ownProps) => {
    return { user: state.entities.users[ownProps.match.params.userId]}
};
const mapDispatchToProps = dispatch => ({
    fetchMovies: () => dispatch(fetchMovies)
});

export default connect(mapStateToProps, mapDispatchToProps)(UserShow);