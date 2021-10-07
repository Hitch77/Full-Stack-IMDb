import React, { useState } from 'react'
import EditReviewFormModal from './edit_form_modal'
import { Link } from 'react-router-dom'

// const BUTTON_WRAPPER_STYLES = {
//     position: 'relative',
//     zIndex: 1
// }

const EditReviewForm = ({ review, movie, openModal }) => {
    const [isOpen, setIsOpen] = useState(false)
    // console.log(review, "this is the review")
    return (
        <>
            <button className="user-review-form-button" onClick={() => openModal(review)}>&#9998;</button>
            {/* <EditReviewFormModal movie={movie} review={review} open={isOpen} onClose={() => setIsOpen(false)} /> */}
        </>
    )
}

export default EditReviewForm


// import React from 'react';
// import { connect } from 'react-redux';
// import PostForm from './post_form';
// import { fetchPost, updatePost } from '../../actions/post_actions';

// /*
// Export a container component for the `EditPostForm` component given below that
// will be used to edit an existing post. The `EditPostForm` component should fetch
// the post being edited when it successfully mounts to the DOM and will only
// render the `PostForm` once it has received that post.

// In the container, pass in the post being edited as a `post` prop along with a
// `formType` prop set to the string 'Update Post'. The edit form should pre-fill
// each field with the post's values. Additionally, map in a function that will
// dispatch `fetchPost` as a prop of the same name, and one that will dispatch the
// appropriate action to the store on form submission as an `action` prop.

// **Do NOT modify the `render` function provided for the `EditPostForm`.**
// */

// class EditReviewForm extends React.Component {
//     componentDidMount() {
//         this.props.fetchPost(this.props.match.params.postId);
//     }

//     render() {
//         // DO NOT MODIFY THIS FUNCTION
//         const { action, formType, post } = this.props;

//         // Hint: The post will not exist on the first render - what do we need to do
//         // to get it?
//         if (!post) return null;
//         return (
//             <PostForm
//                 action={action}
//                 formType={formType}
//                 post={post} />
//         );
//     }
// }

// const mapStateToProps = (state, ownProps) => ({
//     post: state.posts[ownProps.match.params.postId],
//     formType: 'Update Post'
// });

// const mapDispatchToProps = dispatch => ({
//     fetchPost: postId => dispatch(fetchPost(postId)),
//     action: post => dispatch(updatePost(post))
// });

// export default connect(mapStateToProps, mapDispatchToProps)(EditReviewForm);