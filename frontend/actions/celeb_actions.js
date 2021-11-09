import * as CelebAPIUtil from '../util/celeb_api_util'

export const RECEIVE_CELEBS = 'RECEIVE_CELEBS';
export const RECEIVE_CELEB = 'RECEIVE_CELEB';

const receiveCeleb = celeb => ({
    type: RECEIVE_CELEB,
    celeb
});

const receiveCelebs = celebs => ({
    type: RECEIVE_CELEBS,
    celebs,
});

export const fetchCelebs = () => dispatch => (
    CelebAPIUtil.fetchCelebs().then(celebs => (
        dispatch(receiveCelebs(celebs))
    ))
);
export const fetchCeleb = celebId => dispatch => (
    CelebAPIUtil.fetchCeleb(celebId).then(celeb =>
        dispatch(receiveCeleb(celeb)))
);

