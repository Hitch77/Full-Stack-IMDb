import React from 'react';
import { Link, NavLink } from 'react-router-dom';
import NavBarContainer from '../nav_bar/nav_bar_container';
import ReviewIndexContainer from '../reviews/review_index_container';

class CelebShow extends React.Component {
    constructor(props) {
        super(props)
    }

    componentDidMount() {
        this.props.fetchCeleb(this.props.match.params.celebId)
    }

    render() {
        if (!this.props.celeb) return null
        return (
            <div className="celeb-show">
                <header>
                    <NavBarContainer />
                </header>
                <div className="celeb-info-container">
                <img src={this.props.celeb.photoUrl} className='celeb-show-image'/>
                <div className="celeb-name">{this.props.celeb.name}</div>
                <ul className="celeb-info-list">
                    <li>{this.props.celeb.birthdate}</li>
                    <li>{this.props.celeb.birthplace}</li>
                </ul>
                <div className="celeb-bio">{this.props.celeb.bio}</div>
                </div>
            </div>
        );
    }
}

export default CelebShow;