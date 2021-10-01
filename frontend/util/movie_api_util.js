export const fetchMovies = data => (
    $.ajax({
        method: 'GET',
        url: 'api/movies',
        data
    })
);
export const fetchMovie = movieId => (
    $.ajax({
        method: 'GET',
        url: `/api/movies/${movieId}/`
    })
);