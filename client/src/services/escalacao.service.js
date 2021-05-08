import http from "../http-common";

class EscalacaoDataService {

  getAll() {
    return http.get("/escalacao");
	}

  getOne(params) {
    return http.get(`/escalacao/byRodada/${params}`);
	}

  create(data) {
    return http.post("/escalacao", data);
  }

  update = (id, data) => {
    return http.put(`/escalacao/${id}`, data);
  };

}

export default new EscalacaoDataService();