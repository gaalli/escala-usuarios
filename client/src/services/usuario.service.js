import http from "../http-common";

class UsuarioDataService {
  getAll() {
    return http.get("/usuario");
	}

	getClassificacao() {
    return http.get("/usuario/classificacao");
	}

  create(data) {
    return http.post("/usuario", data);
  }
}

export default new UsuarioDataService();