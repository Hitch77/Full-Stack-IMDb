import React from 'react'
import ReactDom from 'react-dom'
import ReactStars from 'react-rating-stars-component'

const MODAL_STYLES = {
    position: 'fixed',
    top: '50%',
    left: '50%',
    transform: 'translate(-50%, -50%)',
    backgroundColor: 'rgba(50, 50, 50, 1)',
    padding: '20px',
    zIndex: 1000,
}

const OVERLAY_STYLES = {
    position: 'fixed',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
    backgroundColor: 'rgba(0, 0, 0, .7)',
    zIndex: 1000
}

class EditReviewFormModal extends React.Component {
    constructor(props) {
        super(props)
        // console.log(this.props.review, "this is the review in the modal")
            this.state = {
                id: this.props.review.id,
                rating: this.props.review.rating,
                heading: this.props.review.heading,
                review: this.props.review.review,
                spoilers: this.props.review.spoilers
            }
        // console.log(this.props.review.heading)
        this.handleSubmit = this.handleSubmit.bind(this)
        this.toggleSpoilers = this.toggleSpoilers.bind(this)
        this.updateRating = this.updateRating.bind(this)
        this.modalClose = this.modalClose.bind(this)
    }

    componentDidMount(){
        // this.setState(this.props.review)

    }

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        })
    }

    updateRating(newRating) {
        this.setState({ rating: newRating })
    }

    toggleSpoilers(e) {
        const spoilers = e.currentTarget.value === 'true' ? true : false;
        console.log('handle', spoilers);
        this.setState({ spoilers });
    }

    handleSubmit(e) {
        e.preventDefault()
        const review = Object.assign({}, this.state);
        this.props.updateReview(review).then(() =>
        this.props.closeModal())
    }

    modalClose() {
        this.props.closeModal()
        this.props.clearErrors()
        this.setState({            
        })  
    }

    renderErrors() {
        return (
            <div>
            <h1 className="error-header">There was a problem</h1>
            <ul className="errors">
                {this.props.errors.map((error, i) => (
                    <div>
                    <li key={`error-${i}`}>
                        {error}
                    </li>
                    </div>
                ))}
            </ul>
            </div>
        );
    }

    render() {
        const errorfunc = (this.props.errors.length > 0) ? this.renderErrors() : null
        if (!this.props.open) return null
        // console.log(this.props.review, "this is the review in the modal")
        return ReactDom.createPortal(
            <>
                <div style={OVERLAY_STYLES} onClick={this.modalClose}/>
                <div style={MODAL_STYLES} className="review-form-container">
                    <div className="review-form">
                        <h1 className="review-form-header">Write A Review</h1>
                        {errorfunc}
                        <form onSubmit={this.handleSubmit} className="review-form-box">
                            <div className="rating-stars"><ReactStars
                                count={10}
                                value={this.state.rating}
                                onChange={this.updateRating}
                                size={24}
                                activeColor="#ffd700"
                            /></div>
                            <label className="review-form-heading">
                                <input type="text"
                                    placeholder="Write a header for your review"
                                    value={this.state.heading}
                                    onChange={this.update('heading')}
                                    className="heading-input"
                                />
                            </label>
                            <br />
                            <label className="review-form-body">
                                <textarea
                                    placeholder="Write your review here"
                                    value={this.state.review}
                                    onChange={this.update('review')}
                                    className="body-input"
                                />
                            </label>
                            <label className="spoilers">Does your review contain spoilers?
                                <label><input
                                    type="radio"
                                    name="spoilers"
                                    value="true"
                                    checked={this.state.spoilers === true}
                                    onChange={this.toggleSpoilers} />
                                    Yes
                                </label>
                                <label><input
                                    type="radio"
                                    name="spoilers"
                                    value="false"
                                    checked={this.state.spoilers === false}
                                    onChange={this.toggleSpoilers} />
                                    No
                                </label>
                            </label>
                            <input className="post-review-button" type="submit"/>
                        </form>
                    </div>
                    {/* <button onClick={this.props.onClose}>Close Modal</button> */}
                    {this.props.children}
                </div>
            </>,
            document.getElementById('portal')
        )
    }
}

import { connect } from 'react-redux';

import { clearErrors, updateReview } from '../../actions/review_actions.js';
import { fetchReview } from '../../actions/review_actions.js'

const mapStateToProps = (state) => ({
    // reviews: Object.values(state.entities.reviews),
    user_id: state.session.id,
    errors: state.errors.reviews
})

const mapDispatchToProps = dispatch => ({
    updateReview: (review) => dispatch(updateReview(review)),
    clearErrors:() => dispatch(clearErrors())
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(EditReviewFormModal);


// export default ReviewFormModal







