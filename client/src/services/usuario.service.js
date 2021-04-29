import http from "../http-common";

class UsuarioDataService {
  getAll() {
    return http.get("/usuario");
	}

  get (id) {
    return http.get(`/usuario/${id}`);
  }

  getByEmail (email) {
    return http.get(`/usuario?email=${email}`);
  }

	getClassificacao() {
    return http.get("/usuario/classificacao");
	}

  create(data) {
    return http.post("/usuario", data);
  }

}

export default new UsuarioDataService();