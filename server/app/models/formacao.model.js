module.exports = (sequelize, Sequelize) => {
  const Formacao = sequelize.define("formacao", {
    nome: {
      type: Sequelize.STRING
    },
    num_goleira: {
      type: Sequelize.INTEGER
    },
    num_lateral: {
      type: Sequelize.INTEGER
    },
    num_zagueira: {
      type: Sequelize.INTEGER
    },
    num_meia: {
      type: Sequelize.INTEGER
    },
    num_atacante: {
      type: Sequelize.INTEGER
    },
	},{
    freezeTableName: true
  });

  return Formacao;
};
