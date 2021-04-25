module.exports = (sequelize, Sequelize) => {
  const Usuario = sequelize.define("usuario", {
    nome: {
      type: Sequelize.STRING
    },
    email: {
      type: Sequelize.STRING
    },
    telefone: {
      type: Sequelize.STRING
    },
	},{
    freezeTableName: true
  });

  Usuario.associate = function (models) {
		Usuario.hasOne(models.Time)
	}

  return Usuario;
};
