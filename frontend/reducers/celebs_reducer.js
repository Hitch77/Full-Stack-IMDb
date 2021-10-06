import {
    RECEIVE_CELEBS,
    RECEIVE_CELEB
} from '../actions/celeb_actions';

const celebsReducer = (state = {}, action) => {
    Object.freeze(state)
    switch (action.type) {
        case RECEIVE_CELEBS:
            return action.celebs;
        case RECEIVE_CELEB:
            const newCeleb = { [action.celeb.id]: action.celeb };
            return Object.assign({}, state, newCeleb);
        default:
            return state;
    }
};

export default celebsReducer;
