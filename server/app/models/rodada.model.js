module.exports = (sequelize, Sequelize) => {
  const Rodada = sequelize.define("rodada", {
    nome: {
      type: Sequelize.STRING
    },
    dataAbertura: {
      type: Sequelize.DATE
    },
    dataFechamento: {
      type: Sequelize.DATE
    },
  },{
    freezeTableName: true
  });

  Rodada.associate = function (models) {
		Rodada.hasMany(models.Escalacao)
	}

  return Rodada;
};
