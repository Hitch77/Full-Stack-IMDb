import React from 'react'
import { Link } from 'react-router-dom'

const ReviewItem = (props) => {
    let spoilers
    if (props.review.spoilers) {
        spoilers =
        <div className="spoilers-header">Warning: Spoilers</div>
    }
    return (
        <div>
            <div className="review-item-container">
            <h2 className="review-heading">
                {spoilers}
                <div className="review-title">{props.review.heading}</div>
                    <div className="review-rating"> <span className="star">★</span> {props.review.rating} / 10</div>
            </h2>
            <p className="review-body">{props.review.review}</p>
            </div>
        </div>
    )
}

export default ReviewItem
