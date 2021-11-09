import * as ReviewAPIUtil from '../util/review_api_util'

export const RECEIVE_REVIEWS = "RECEIVE_REVIEWS"
export const RECEIVE_REVIEW = "RECEIVE_REVIEW"
export const REMOVE_REVIEW = "REMOVE_REVIEW"
export const RECEIVE_REVIEW_ERRORS = 'RECEIVE_REVIEW_ERRORS';
export const CLEAR_ERRORS = 'CLEAR_ERRORS'

export const receiveReviews = (reviews) => ({
    type: RECEIVE_REVIEWS,
    reviews
});

export const receiveReview = (review) => ({
    type: RECEIVE_REVIEW,
    review
});

export const removeReview = reviewId => ({
    type: REMOVE_REVIEW,
    reviewId
});

export const receiveErrors = errors => ({
    type: RECEIVE_REVIEW_ERRORS,
    errors
});

export const clearErrors = () => ({
    type: CLEAR_ERRORS
})


export const fetchAllReviews = () => dispatch => (
    ReviewAPIUtil.fetchAllReviews().then(reviews => (
        dispatch(receiveReviews(reviews))
    ))
);


export const fetchReviews = (movieId) => dispatch => (
    ReviewAPIUtil.fetchReviews(movieId).then(reviews => (
        dispatch(receiveReviews(reviews))
    ))
)

export const fetchUserReviews = (userId) => dispatch => (
    ReviewAPIUtil.fetchUserReviews(userId).then(reviews => (
        dispatch(receiveReviews(reviews))
    ))
)

export const createReview = (review) => dispatch => (
    ReviewAPIUtil.createReview(review).then(review => (
        dispatch(receiveReview(review))
    ), err => (
        dispatch(receiveErrors(err.responseJSON))
    ))
);

export const updateReview = review => dispatch => (
    ReviewAPIUtil.updateReview(review)
        .then(review => dispatch(receiveReview(review))
        , err => (
            dispatch(receiveErrors(err.responseJSON))
        ))
);

export const deleteReview = (userId, reviewId) => dispatch => (
    ReviewAPIUtil.deleteReview(userId, reviewId)
        .then(() => dispatch(removeReview(reviewId)))
);