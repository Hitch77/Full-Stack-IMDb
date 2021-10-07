import React from 'react'
import SearchPage from './search_page'

class Search extends React.Component {
    constructor(props) {
        super(props)
        this.state = {title: ""}
        this.handleSubmit = this.handleSubmit.bind(this)
        this.updateField = this.updateField.bind(this)
    }

    updateField(field){
        return e => this.setState({[field]: e.currentTarget.value})
    }

    renderSearch(movies){
        return (
            <SearchPage movies={movies}/>
        )
    }

    handleSubmit(e){
        e.preventDefault()
        this.props.movieSearch(this.state.title).then((movies) =>
        this.renderSearch(movies))
    }

    render() {
        return (
                <form className="search-form"onSubmit={this.handleSubmit}>
                <input 
                className="search-bar" 
                type="search"
                placeholder="Find a movie"
                onChange={this.updateField('title')}/>
                <button type="submit">&#128269;</button>
                </form>
        )
    }
}

export default Search