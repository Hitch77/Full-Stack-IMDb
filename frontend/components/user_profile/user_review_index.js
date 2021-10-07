import React from 'react'
import EditReviewForm from './edit_review_form_container'
import UserReviewItem from './user_review_item'
import EditReviewFormModal from './edit_form_modal'

class UserReviewIndex extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            isOpen: false,
            review: null
        }
        this.openModal = this.openModal.bind(this)
        this.closeModal = this.closeModal.bind(this)
    }

    openModal(review){
        this.setState({
            isOpen: true,
            review: review
        })
    }

    closeModal(review){
        this.setState({
            isOpen: false,
            review: review
        })
    }

    componentDidMount() {
        this.props.fetchUserReviews(this.props.user.id)
        this.props.fetchMovies()
    }

    render() {
        if (!this.props.reviews) return null
        return (
            <div className="user-reviews-container">
                <div className="user-reviews">
                    {this.props.reviews.map((review, i) => (
                        <UserReviewItem 
                        key={i}
                        movies={this.props.movies}
                        review={review} 
                        user={this.props.user} 
                        deleteReview={this.props.deleteReview}
                        openModal={this.openModal}
                        closeModal={this.closeModal}/>
                    ))}
                    {this.state.review ? <EditReviewFormModal closeModal={this.closeModal} review={this.state.review} open={this.state.isOpen}/> : null}
                    
                </div>
            </div>
        )
    }
}

export default UserReviewIndex

