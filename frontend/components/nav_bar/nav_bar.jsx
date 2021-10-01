import React from 'react';
import { Link } from 'react-router-dom';
import Logo from './imdblogo.png'



const NavBar = ({ currentUser, logout}) => {
    const sessionLinks = () => (
        <nav className="nav">
            <Link to={'/'} className="header-link">
                <img className="Logo" src={Logo}/>
            </Link>
            <input className="search-bar" />
            <ul>
                <li><Link to="/login" className="form-button"><button className="sign-in-button" type='button'>Sign In</button></Link></li>
                <li><Link to="/signup" className="form-button"><button className="sign-up-button" type='button'>Sign Up</button></Link></li>
            </ul>
        </nav>
    );
    const logOut = () => (
        <nav className="nav">
            <Link to={'/'} className="header-link">
                <img className="Logo" src={Logo} />
            </Link>
            <input className="search-bar" />
            <ul>
                <li><button className="logout-button" onClick={logout}>Log Out</button></li>
            </ul>
        </nav>
    );

    return currentUser ? logOut() : sessionLinks();
}


export default NavBar;
