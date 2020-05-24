import axios from "axios";
const API_URL = "http://localhost:8080/api/v1/user/";
class AuthService {
  login(email, password) {
    return axios.post(API_URL + "login", {email,password})
                .then(response => {
                        if (response.data.accessToken) {
                            localStorage.setItem("user", JSON.stringify(response.data));
                        }
                        return response.data;
                      });
  }

  logout() {
    localStorage.removeItem("user");
  }

  register(email,name,password,addresse,categorie,telephone) {
    return axios.post(API_URL + "add", {email,name,password,addresse,categorie,telephone});
  }

  getCurrentUser() {
    return JSON.parse(localStorage.getItem('user'));
  }
}

export default new AuthService();
