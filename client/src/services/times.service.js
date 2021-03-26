import http from "../http-common";

class TimesDataService {
  getAll() {
    return http.get("/times");
	}

	getClassificacao() {
    return http.get("/times/classificacao");
	}
}

export default new TimesDataService();