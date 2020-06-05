import React from 'react';
import './style/Who.css';
import Nav from './Nav';
import AuthService from "./services/auth-service";
import axios from 'axios';

class Who extends React.Component {
	componentDidMount() {
		axios.post("http://localhost:8080/api/auth/signin", {"email":"abdo@gmail.com","password":"abdo"}).then((res) => {console.log(res.data)})
  }

	clickHandler(e){
		e.preventDefault();
		const container = document.getElementById('container');
		container.classList.add("right-panel-active");
	}
	clickHandlerIn(e){
		e.preventDefault();
		const container = document.getElementById('container');
		container.classList.remove("right-panel-active");
	}
	render() {
  return (

		<div>
		<Nav />
		<div className="waj">
		<div className="container" id="container">
			<div className="form-container sign-up-container">
				<form action="#https://www.facebook.com/">
					<h1>Create Account</h1>
					<h1 id="couleur" >Join Our Community</h1>
					<input type="text" placeholder="Name" />
					<input type="email" placeholder="Email" />
					<input type="password" placeholder="Password" />
					<button onClick={this.clickHandler.bind(this)}>Sign Up</button>
				</form>
			</div>
			<div className="form-container sign-in-container">
				<form action="#https://www.facebook.com/">
					<h1>Sign in</h1>
					<div className="social-container">
						<a href="#https://www.facebook.com/" className="social"><i className="fab fa-facebook-f"></i></a>
						<a href="#https://www.facebook.com/" className="social"><i className="fab fa-google-plus-g"></i></a>
						<a href="#https://www.facebook.com/" className="social"><i className="fab fa-linkedin-in"></i></a>
					</div>
					<span>or use your account</span>
					<input type="email" placeholder="Email" />
					<input type="password" placeholder="Password" />
					<button onClick={this.clickHandlerIn.bind(this)}>Sign In</button>
				</form>
			</div>
			<div className="overlay-container">
				<div className="overlay">
					<div className="overlay-panel overlay-left">
						<h1>Welcome Back!</h1>
						<p>Already have an account on Pandemia ? Login to your account right now !</p>
						<button className="ghost" id="signIn" onClick={this.clickHandlerIn.bind(this)}>Sign In</button>
					</div>
					<div className="overlay-panel overlay-right">
						<h1>Hello, Stranger !</h1>
						<p>Still haven't registered on Pandemia ? Sign up right now !</p>
						<button className="ghost" id="signUp" onClick={this.clickHandler.bind(this)}>Sign Up</button>
					</div>
				</div>
			</div>
		</div>


    </div>
		</div>



  );
}}

export default Who;
