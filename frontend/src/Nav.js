import React from 'react';
import './Nav.css';
import { Link} from'react-router-dom';
import 'primereact/resources/themes/nova-light/theme.css';
import 'primereact/resources/primereact.min.css';
import 'primeicons/primeicons.css';

function Nav() {
  return (
    <div class="header">
        <ul>
          <Link to="/"><li><h1>PANDEMIA.</h1></li></Link>
          <Link to="/login"><li><a>Latest Updates</a></li></Link>
            <Link to="/login"><li><a>Essentials</a></li></Link>
            <Link to="/donation"><li><a>Donation</a></li></Link>
            
            <div class="dropdown">
            <button class="dropbtn"><i class="fas fa-bars" ></i></button>
            <div class="dropdown-content">
              <Link to="/login"><a href="#">Sign in</a></Link>
              <Link to="/login"><a href="#">Sign up</a></Link>
              <Link to="/Help"><a href="#">Help</a></Link>
            </div>
          </div>
            
            
        </ul>

      </div>
  );
}

export default Nav;
