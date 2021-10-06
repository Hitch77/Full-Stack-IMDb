import React from 'react'
import { Link } from 'react-router-dom'
import EditReviewForm from './edit_review_form_container'

class UserReviewItem extends React.Component {
    constructor(props) {
        super(props)
    }

    // componentDidMount() {
    //     this.props.fetchMovies()
    // }

    render() {
        let spoilers
        if (this.props.review.spoilers) {
            spoilers =
                <div className="spoilers-header">Warning: Spoilers</div>
        }
    return (
        <div>
            <div className="user-review-item-container">
                <div>{this.props.movies.map((movie, i) => {
                    if (this.props.review.movie_id === movie.id)
                        return <div className="review-movie-title" key={i}>{movie.title}</div>
                })}</div>
                {spoilers}
                <h2 className="user-review-header">
                    <div className="user-review-heading">{this.props.review.heading}</div>
                    <div className="user-review-rating"> <span className="star">★</span> {this.props.review.rating} / 10</div>
                </h2>
                <p className="user-review-body">{this.props.review.review}</p>
                <div>{this.props.review.spoilers}</div>
                <div className="review-change-buttons">
                    <button className="delete-review-button" onClick={() => this.props.deleteReview(this.props.user.id, this.props.review.id)}>&#128465;</button>
                    <EditReviewForm movie={this.props.movie} review={this.props.review} />
                </div>
            </div>
        </div>
    )
    }
}

export default UserReviewItem