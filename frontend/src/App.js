import React from 'react';
import Nav from './Nav';
import Home from './Home';
import Login from './Login';
import Donation from './Donation';
import Dashboard from './Dashboard';
import Help from './Help';

import './App.css';
import{BrowserRouter as Router, Switch,Route} from 'react-router-dom';
import Navbar from './Navbar';
function App() {
  return (
    <Router>
      <div className="App">
        <Nav/>
        <Switch>
        <Route path="/" exact component={Home}   />
        <Route path="/home" component={Home}   />
        <Route path="/login" component={Login}   />
        <Route path="/donation" component={Donation}   />
        <Route path="/Help" component={Help}   />
        <Route path="/dashboard" component={Dashboard}   />


        </Switch>


    </div>
    </Router>
  );
}

export default App;
