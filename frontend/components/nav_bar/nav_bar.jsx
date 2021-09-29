import React from 'react';
import { Link } from 'react-router-dom';
import Logo from './imdblogo.png'



const NavBar = ({ currentUser, logout}) => {
    const sessionLinks = () => (
        <div className="home-page">
        <nav className="nav">
            <Link to={'/'} className="header-link">
                <img className="Logo" src={Logo}/>
            </Link>
            <input className="search-bar"/>
        <nav className="login-signup">
            <Link to="/login" className="Link"><button className="sign-in-button" type='button'>Sign In</button></Link>
            <Link to="/signup" className="Link"><button className="sign-up-button" type='button'>Sign Up</button></Link>
        </nav>
        </nav>
        </div>
    );
    const logOut = () => (
        <div className="home-page">
        <nav className="nav">
            <Link to={'/'} className="header-link">
                <img className="Logo" src={Logo} />
            </Link>
                <input className="search-bar" />
            <button className="logout-button" onClick={logout}>Log Out</button>
        </nav>
        </div>
    );

    return currentUser ? logOut() : sessionLinks();
}


export default NavBar;
