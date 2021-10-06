import {
    RECEIVE_REVIEWS,
    RECEIVE_REVIEW,
    REMOVE_REVIEW
} from '../actions/review_actions';

import { RECEIVE_MOVIE } from '../actions/movie_actions';

const reviewsReducer = (state = {}, action) => {
    Object.freeze(state)
    switch (action.type) {
        case RECEIVE_REVIEWS:
            // return Object.assign({}, state, action.reviews)
            return action.reviews
        case RECEIVE_REVIEW:
            const { review } = action;
            return Object.assign({}, state, { [review.id]: review });
        case REMOVE_REVIEW:
            let nextState = Object.assign({}, state);
            delete nextState[action.reviewId]
            return nextState;
        default:
            return state;
    }
};

export default reviewsReducer;
