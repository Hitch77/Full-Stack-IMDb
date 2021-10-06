import React from 'react'
import UserReviewItem from './user_review_item'

class UserReviewIndex extends React.Component {
    constructor(props) {
        super(props)
    }

    componentDidMount() {
        this.props.fetchUserReviews(this.props.user.id)
        this.props.fetchMovies()
    }

    render() {
        return (
            <div className="user-reviews-container">
                <div className="user-reviews">
                    {this.props.reviews.map((review, i) => (
                        <UserReviewItem 
                        key={i}
                        movies={this.props.movies}
                        review={review} 
                        user={this.props.user} 
                        deleteReview={this.props.deleteReview}/>
                    ))}
                </div>
            </div>
        )
    }
}

export default UserReviewIndex

