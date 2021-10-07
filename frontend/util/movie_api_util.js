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

export const movieSearch = query => {
    return $.ajax({
        method: 'GET',
        url: `api/movies/search/`,
        data: {
            query: query
        }
    })
}

