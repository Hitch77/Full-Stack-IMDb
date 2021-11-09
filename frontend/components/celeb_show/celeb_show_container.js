import { connect } from 'react-redux';
import CelebShow from './celeb_show';
import { fetchCeleb, fetchCelebs } from '../../actions/celeb_actions';

const mapStateToProps = (state, ownProps) => {
    return {
        celeb: state.entities.celebs[ownProps.match.params.celebId],
    }
};
const mapDispatchToProps = dispatch => ({
    fetchCeleb: celebId => dispatch(fetchCeleb(celebId)),
});

export default connect(mapStateToProps, mapDispatchToProps)(CelebShow);