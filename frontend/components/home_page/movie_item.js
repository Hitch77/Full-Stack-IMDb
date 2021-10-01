import React from 'react'
import {Link} from 'react-router-dom'

const MovieItem = (props) => {
    return (
        <div className={`movie-block`}>
        <Link to={`/movies/${props.movie.id}`}>
            <img src={props.movie.photoUrl} className={`movie`}/>
        </Link>
        <Link to={`/movies/${props.movie.id}`} className="movie-link">{props.movie.title}</Link>
        </div>
    )
}

export default MovieItem
