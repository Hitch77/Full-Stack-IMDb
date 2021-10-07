import { connect } from 'react-redux';
import { movieSearch } from '../../actions/movie_actions';
import Search from './search'

const mapStateToProps = (state) => {
    return { movies: Object.values(state.entities.movies) }
};
const mapDispatchToProps = dispatch => ({
    movieSearch: (query) => dispatch(movieSearch(query))
});

export default connect(mapStateToProps, mapDispatchToProps)(Search);