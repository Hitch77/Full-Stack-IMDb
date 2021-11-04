

export const createReview = (review, movieId) => (
    $.ajax({
        method: 'POST',
        url: `api/movies/${movieId}/reviews`,
        data: { review }
    })
)

export const updateReview = (review, userId)=> (
    $.ajax({
        url: `/api/users/${userId}/reviews/${review.id}`,
        method: 'patch',
        data: { review }
    })
);

export const deleteReview = (userId, reviewId) => (
    $.ajax({
        url: `/api/users/${userId}/reviews/${reviewId}/`,
        method: 'DELETE'
    })
)

export const fetchReviews = movieId => (
    $.ajax({
        method: 'GET',
        url: `api/movies/${movieId}/reviews`,
    })
)

export const fetchUserReviews = userId => (
    $.ajax({
        method: 'GET',
        url: `api/users/${userId}/reviews`,
    })
)

export const fetchAllReviews = (data) => (
    $.ajax({
        method: 'GET',
        url: `api/reviews`,
        data
    })
)