import http from "../http-common";

class EscalacaoDataService {

  getAll() {
    return http.get("/escalacao");
	}

  create(data) {
    return http.post("/escalacao", data);
  }

}

export default new EscalacaoDataService();