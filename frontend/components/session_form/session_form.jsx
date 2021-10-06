import React from 'react';
import { Link } from 'react-router-dom';
import Logo from '../../../app/assets/images/imdblogo.png'
class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            email: '',
            password: ''
        };
        this.handleSubmit = this.handleSubmit.bind(this);
        this.demoSignIn = this.demoSignIn.bind(this)
    }

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }

    componentDidMount() {
        this.props.clearErrors()
    }

    demoSignIn(e) {
        e.preventDefault()
        const user = Object.assign({}, {email: 'forfrodo@gondor.com', password: 'tomordor'})
        this.props.processForm(user)
    }

    handleSubmit(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.processForm(user);
    }

    renderErrors() {
        return (
            <div className="error-container">
            <h1 className="error-header">There was a problem</h1>
            <ul className="errors">
                {this.props.errors.map((error, i) => (
                    <div>
                    <li key={`error-${i}`}>
                        {error}
                    </li>
                    </div>
                ))}
            </ul>
            </div>
        );
    }

    render() {
        const errorfunc = (this.props.errors.length > 0) ? this.renderErrors() : null
        if (this.props.formType === 'Sign-In') {
        return (
            <div className="login-form-container" >
                <Link to={'/'} className="header-link">
                    <img className="form-logo" src={Logo} />
                </Link>
                {errorfunc}
                <div className="form-box">
                <h1 className="session-header">{this.props.formType}</h1>
                <form onSubmit={this.handleSubmit} className="login-form-box">
                    <div className="login-form">
                        <br />
                        <label className="label">Email
                            <input type="text"
                                value={this.state.email}
                                onChange={this.update('email')}
                                className="login-input"
                            />
                        </label>
                        <br />
                        <label className="label">Password
                            <input type="password"
                                value={this.state.password}
                                onChange={this.update('password')}
                                className="login-input"
                            />
                        </label>
                        <br />
                            <button className="demo-submit" onClick={this.demoSignIn}>Demo Sign-In</button>
                        <input className="session-submit" type="submit" value={this.props.formType} />
                    </div>
                </form>
                <h5>New to IMDb?</h5>
                    <Link to="/signup" className="Link"><button className="redirect-button" type='button'>Create your IMDb account</button></Link>
                </div>
            </div>
        )} else {
            return(
            <div className="login-form-container">
                <Link to={'/'} className="header-link">
                    <img className="form-logo" src={Logo} />
                </Link>
                    {errorfunc}
                <div className="form-box">
                    <h1 className="session-header">{this.props.formType}</h1>
                    <form onSubmit={this.handleSubmit} className="login-form-box">
                        <div className="login-form">
                            <br />
                            <label className="label">Email
                                <input type="text"
                                    value={this.state.email}
                                    onChange={this.update('email')}
                                    className="login-input"
                                />
                            </label>
                            <br />
                            <label className="label">Password
                                <input type="password"
                                    value={this.state.password}
                                    onChange={this.update('password')}
                                    className="login-input"
                                />
                            </label>
                            <br />
                            <input className="session-submit" type="submit" value="Create your IMDb account" />
                        </div>
                    </form>
                    <div className="text-redirect">Already have an account? <Link to={'/login'} className="redirect-link">Sign-In</Link></div>
                </div>
            </div>
            )
        }
    }
}

export default SessionForm;
