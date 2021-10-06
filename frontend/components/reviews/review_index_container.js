import { connect } from 'react-redux';
import ReviewIndex from './review_index';
import { fetchReviews } from '../../actions/review_actions';

const mapStateToProps = (state) => {
    return {reviews: Object.values(state.entities.reviews)}
};
const mapDispatchToProps = dispatch => ({
    fetchReviews:(movieId) => dispatch(fetchReviews(movieId))
});

export default connect(mapStateToProps, mapDispatchToProps)(ReviewIndex);

