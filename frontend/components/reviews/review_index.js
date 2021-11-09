import React from 'react'
import ReviewItem from './review_item'
import ReviewForm from './review_form'

class ReviewIndex extends React.Component {
    constructor(props) {
        super(props)
    }

    componentDidMount() {
        // this.props.fetchReviews()
    }

    render() {
        return (
            <div className="reviews-container">
                <div className="review-upper">
                    <ReviewForm user={this.props.user} movie={this.props.movie}/>
                </div>
                <div className="reviews">
                    {this.props.reviews.map((review, i) => (
                        <ReviewItem key={i} review={review} errors={this.props.errors}/>
                    ))}
                </div>
            </div>
        )
    }
}

export default ReviewIndex

