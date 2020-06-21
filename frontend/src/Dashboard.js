import React from 'react';
import axios from "axios";
class Dashboard extends React.Component {
	constructor() {
    super();
    this.state = {data : {},errors : ''};
  }
  componentWillMount() {
    const user = JSON.parse(localStorage.getItem('user'));
    let headers_user ;
    if (user && user.accessToken) {
        headers_user = { Authorization: 'Bearer ' + user.accessToken };
     } else {
       this.props.history.push(`/`);
       return ;
    }
    axios.get("http://localhost:8080/api/magazin/",{ headers: headers_user} )
          .then(response => {this.setState({data : response.data})});
    /*if(typeof localStorage.usertoken == 'undefined')
      {this.props.history.push(`/`);return ;}*/
    //

  }
  render() {
    console.log(this.state.data);
	  return (
			<div>
	    </div>
    );
}}

export default Dashboard;
