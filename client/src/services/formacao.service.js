import http from "../http-common";

class FormacaoDataService {
  getAll() {
    return http.get("/formacao");
	}
}

export default new FormacaoDataService();