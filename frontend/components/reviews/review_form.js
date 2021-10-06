import React, {useState} from 'react'
import ReviewFormModal from './form_modal'
import { Link } from 'react-router-dom'

// const BUTTON_WRAPPER_STYLES = {
//     position: 'relative',
//     zIndex: 1
// }

const ReviewForm = ({movie, user}) => {
    const [isOpen, setIsOpen] = useState(false)
    let redirect
    if (user) {
        redirect =
        <>
            <button className="review-form-button"
            onClick={() => setIsOpen(true)}>
            <span>&#43; </span>
            Review
            </button>
            <ReviewFormModal movie={movie} open={isOpen} onClose={() => setIsOpen(false)} />
        </>
    } else {
        redirect =
        <Link to="/login" className="form-button"><button className="review-form-button"><span>&#43; </span>Review</button></Link>
    }
    return (
        <>
            <div className="reviews-container-title">User reviews</div>
            {redirect}
        </>
    )
}

export default ReviewForm