module.exports = (sequelize, Sequelize) => {
	const Jogadora = sequelize.define("jogadora", {
		nome: {
			type: Sequelize.STRING
		},
		posicao: {
			type: Sequelize.STRING
		},
		equipeId: {
			type: Sequelize.INTEGER,
			allowNull: false,
			references: {         // User belongsTo Company 1:1
				model: 'Equipes',
				key: 'id'
			}
		}
	},{
		freezeTableName: true
	  });

	Jogadora.associate = function (models) {
		Jogadora.belongsTo(models.Equipe);
		Jogadora.belongsToMany(models.Escalacao, { through: models.Escalacao_Jogadora });
	}

	return Jogadora;
};
