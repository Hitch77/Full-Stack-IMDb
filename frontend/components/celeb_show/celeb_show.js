import React from 'react';
import { Link, NavLink } from 'react-router-dom';
import NavBarContainer from '../nav_bar/nav_bar_container';
import ReviewIndexContainer from '../reviews/review_index_container';

class MovieShow extends React.Component {
    constructor(props) {
        super(props)
    }

    componentDidMount() {
        console.log(this.props)
    }

    render() {
        if (!this.props.movie) return null
        return (
            <div>
                <header>
                    <NavBarContainer />
                </header>
            </div>
        );
    }
}

export default MovieShow;