import React from 'react';
import UserReviewIndexContainer from '../user_profile/user_review_index_container';
import NavBarContainer from '../nav_bar/nav_bar_container';

class UserShow extends React.Component {
    constructor(props) {
        super(props)
    }

    componentDidMount(){
        this.props.fetchMovies()
        // this.props.fetchUserReviews(this.props.user.id)
    }

    render() {
        // if (!this.props.movie) return null
        const { user } = this.props;
        return (
            <div>
                <header>
                    <NavBarContainer/>
                </header>
                <div className="user-show-page">
                    <h1 className="user-show-profile-header"> Profile </h1>
                    <div className="user-profile-info">
                        <i className="far fa-user fa-5x"></i>
                        <div className="profile-email">Email: {user.email}</div>
                    </div>
                    <h1 className="user-show-reviews-header"> Your Reviews</h1>
                    <UserReviewIndexContainer/>
                </div>
            </div>
        );
    }
}

export default UserShow;