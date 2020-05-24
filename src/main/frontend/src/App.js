import React from 'react';
import {BrowserRouter as Router ,  Route } from 'react-router-dom';
import Who from './Components/Who';

function App() {
  return (
    <Router>
        <div>
          <Route exact path="/" component={Who} />
        </div>
      </Router>
  );
}
export default App;
