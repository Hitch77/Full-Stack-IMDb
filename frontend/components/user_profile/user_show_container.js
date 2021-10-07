import { connect } from 'react-redux';
import UserShow from './user_show';
import { fetchMovies } from '../../actions/movie_actions';
// import { fetchUserReviews } from '../../actions/review_actions';

const mapStateToProps = ( state, ownProps) => {
    return { user: state.entities.users[state.session.id],
            // reviews: Object.values(state.entities.reviews)
    }
};
const mapDispatchToProps = dispatch => ({
    fetchMovies: () => dispatch(fetchMovies),
    // fetchUserReviews: (userId) => dispatch(fetchUserReviews(userId))
});

export default connect(mapStateToProps, mapDispatchToProps)(UserShow);