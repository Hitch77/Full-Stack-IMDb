import { combineReducers } from 'redux';

import users from './users_reducer';
import movies from './movies_reducer'
import reviews from './reviews_reducer'
import celebs from './celebs_reducer'

export default combineReducers({
    users,
    celebs,
    movies,
    reviews
});
