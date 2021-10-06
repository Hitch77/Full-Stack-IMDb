export const fetchCelebs = data => (
    $.ajax({
        method: 'GET',
        url: 'api/celebs',
        data
    })
);

export const fetchCeleb = celebId => (
    $.ajax({
        method: 'GET',
        url: `/api/celebs/${celebId}/`
    })
);