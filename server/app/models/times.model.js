module.exports = (sequelize, Sequelize) => {
  const Time = sequelize.define("time", {
    nome: {
      type: Sequelize.STRING
    },
		usuarioId: {
			type: Sequelize.INTEGER,
			allowNull: false,
			references: {         // User belongsTo Company 1:1
				model: 'Usuario',
				key: 'id'
			}
    },
    pontuacao: {
      type: Sequelize.INTEGER
    }
  });

  Time.associate = function (models) {
		Time.belongsTo(models.Usuario)
	}

  return Time;
};
