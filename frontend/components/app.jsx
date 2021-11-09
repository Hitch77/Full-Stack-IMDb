import React from 'react';
import { Provider } from 'react-redux';
import {
    Route,
    Redirect,
    Switch,
    Link,
    HashRouter
} from 'react-router-dom';
import NavBarContainer from './nav_bar/nav_bar_container';
import HomePageContainer from './home_page/home_page_container'
import LogInFormContainer from './session_form/login_form_container'
import SignUpFormContainer from './session_form/signup_form_container';
import MovieShowContainer from './movie_show/movie_show_container';
import CelebShowContainer from './celeb_show/celeb_show_container'
import UserShowContainer from './user_profile/user_show_container'
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import SearchContainer from './search/search_container';

const App = () => (
    <div>
        <Switch>
            <Route exact path="/" component={HomePageContainer}/>
            <AuthRoute exact path="/login" component={LogInFormContainer}/>
            <AuthRoute exact path="/signup" component={SignUpFormContainer}/>
            <Route exact path="/movies/:movieId" component={MovieShowContainer}/>
            <Route exact path="/celebs/:celebId" component={CelebShowContainer}/>
            <Route exact path="/users/:userId" component={UserShowContainer}/>
            <Route exact path="/movies/search" component={SearchContainer}/>
        </Switch>
    </div>
);

export default App;
