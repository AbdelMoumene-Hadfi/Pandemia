import React from 'react';
import axios from "axios";
import {Card} from 'primereact/card';
import {Button} from 'primereact/button';
import { Link} from'react-router-dom';
import { Container,} from 'react-bootstrap';
import { Row,Col} from 'react-bootstrap';

class Dashboard extends React.Component {
	constructor() {
    super();
    this.state = {headers_user : {}};
  }
  componentWillMount() {
    const user = JSON.parse(localStorage.getItem('user'));
    if (user && user.accessToken) {
        this.state.headers_user = { Authorization: 'Bearer ' + user.accessToken };
    } else {
       this.props.history.push(`/`);
       return ;
    }
}

  render() {

	  return (
			<div>
				<Container>
					<Row>
						<Col>
							<Link to="/magazin"><a>Magazin</a></Link>
						</Col>
						<Col>
							<Link to="/addmagazin"><a>Add Magazin</a></Link>
						</Col>
					</Row>
				</Container>



	    </div>
    );
}}

export default Dashboard;
