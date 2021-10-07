import { connect } from 'react-redux';
import HomePage from './home_page';
import { fetchMovies } from '../../actions/movie_actions';
import { fetchCelebs } from '../../actions/celeb_actions';
import { fetchAllReviews, fetchReviews } from '../../actions/review_actions';

const mapStateToProps = (state) => {
    return {movies: Object.values(state.entities.movies),
            reviews: Object.values(state.entities.reviews)}
};
const mapDispatchToProps = dispatch => ({
    fetchMovies:() => dispatch(fetchMovies()),
    fetchAllReviews:() => dispatch(fetchAllReviews())
});

export default connect(mapStateToProps, mapDispatchToProps)(HomePage);