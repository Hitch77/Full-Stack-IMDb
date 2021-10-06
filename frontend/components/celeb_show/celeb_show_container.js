import { connect } from 'react-redux';
import CelebShow from './celeb_show';
import { fetchCeleb } from '../../actions/celeb_actions';

const mapStateToProps = (state, ownProps) => {
    return {
        movie: state.entities.movies[ownProps.match.params.movieId]
    }
};
const mapDispatchToProps = dispatch => ({
    fetchCeleb: celebId => dispatch(fetchCeleb(celebId)),
});

export default connect(mapStateToProps, mapDispatchToProps)(CelebShow);