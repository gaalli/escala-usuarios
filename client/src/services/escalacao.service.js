import http from "../http-common";

class EscalacaoDataService {
  getAll() {
    return http.get("/escalacao");
	}
}

export default new EscalacaoDataService();