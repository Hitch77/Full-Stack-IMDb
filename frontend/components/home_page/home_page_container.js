import { connect } from 'react-redux';
import HomePage from './home_page';
import { fetchMovies } from '../../actions/movie_actions';
import { fetchCelebs } from '../../actions/celeb_actions';

const mapStateToProps = (state) => {
    return {movies: Object.values(state.entities.movies)}
};
const mapDispatchToProps = dispatch => ({
    fetchMovies:() => dispatch(fetchMovies())
});

export default connect(mapStateToProps, mapDispatchToProps)(HomePage);