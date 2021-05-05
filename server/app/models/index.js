const dbConfig = require("../config/db.config.js");

const Sequelize = require("sequelize");
const sequelize = new Sequelize(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
  host: dbConfig.HOST,
  dialect: dbConfig.dialect,
  operatorsAliases: 0,

  pool: {
    max: dbConfig.pool.max,
    min: dbConfig.pool.min,
    acquire: dbConfig.pool.acquire,
    idle: dbConfig.pool.idle
  }
});

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.Time = require("./times.model.js")(sequelize, Sequelize);
db.Equipe = require("./equipes.model.js")(sequelize, Sequelize);
db.Jogadora = require("./jogadoras.model.js")(sequelize, Sequelize);
db.Escalacao = require("./escalacao.model.js")(sequelize, Sequelize);
db.Formacao = require("./formacao.model.js")(sequelize, Sequelize);
db.Usuario = require("./usuario.model.js")(sequelize, Sequelize);
db.Rodada = require("./rodada.model.js")(sequelize, Sequelize);
db.Escalacao = require("./escalacao.model.js")(sequelize, Sequelize);
db.Escalacao_Jogadora = require("./escalacao_jogadora.model.js")(sequelize, Sequelize);

Object.keys(db).forEach(modelName => {
  if (db[modelName].associate) {
    db[modelName].associate(db);
  }
});


module.exports = db;
