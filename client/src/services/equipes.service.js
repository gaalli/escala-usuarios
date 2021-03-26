import http from "../http-common";

class EquipesDataService {
  getAll() {
    return http.get("/equipes");
	}
}

export default new EquipesDataService();