import React from 'react'
import { Link } from 'react-router-dom'
import NavBarContainer from '../nav_bar/nav_bar_container'

const SearchPage = (props) => {
    return (
        <>
        <NavBarContainer/>
        {props.movies.map((movie, i) => (
            <div className={`movie-block`}>
                <Link to={`/movies/${movie.id}`}>
                    <img src={movie.photoUrl} className={`movie`} />
                </Link>
                <Link to={`/movies/${movie.id}`} className="movie-link">{movie.title}</Link>
            </div>
            ))
        }
        </>
    )
}

export default SearchPage
