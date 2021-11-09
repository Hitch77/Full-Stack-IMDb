import React from 'react';
import { Link } from 'react-router-dom';
import Logo from '../../../app/assets/images/imdblogo.png'
import { AiFillLinkedin, AiFillGithub } from 'react-icons/ai'
import SearchContainer from '../search/search_container'


const NavBar = ({ currentUser, logout}) => {
    const sessionLinks = () => (
        <nav className="nav">
            <Link to={'/'} className="header-link">
                <img className="Logo" src={window.logo}/>
            </Link>
            {window.location.href.includes("/movies/") || window.location.href.includes("/users/") || window.location.href.includes("/celebs/") ? null : <SearchContainer />}
            <ul className="buttonUL">
                <li><a href="https://linkedin.com/in/hicham-elalam-06117a128" target="_blank"><AiFillLinkedin className="linkedin"/></a></li>
                <li><a href="https://github.com/Hitch77" target="_blank"><AiFillGithub className="github"/></a></li>
                <li><Link to="/login" className="form-button"><button className="sign-in-button" type='button'>Sign In</button></Link></li>
                <li><Link to="/signup" className="form-button"><button className="sign-up-button" type='button'>Sign Up</button></Link></li>
            </ul>
        </nav>
    );
    const logOut = () => (
        <nav className="nav">
            <Link to={'/'} className="header-link">
                <img className="Logo" src={window.logo} />
            </Link>
            {window.location.href.includes("/movies/") || window.location.href.includes("/users/") || window.location.href.includes("/celebs/") ? null : <SearchContainer />}
            <ul className="buttonUL">
                <li><a href="https://linkedin.com/in/hicham-elalam-06117a128" target="_blank"><AiFillLinkedin className="linkedin" /></a></li>
                <li><a href="https://github.com/Hitch77" target="_blank"><AiFillGithub className="github" /></a></li>
                <li><Link to={`/users/${currentUser.id}`} className="user-profile-nav"><button className="user-profile-button" type="button">My Profile</button></Link></li>
                <li><Link to="/"><button className="logout-button" onClick={logout}>Log Out</button></Link></li>
            </ul>
        </nav>
    );

    return currentUser ? logOut() : sessionLinks();
}


export default NavBar;
