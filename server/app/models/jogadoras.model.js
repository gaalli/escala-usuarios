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
	});

	Jogadora.associate = function (models) {
		Jogadora.belongsTo(models.Equipe)
	}

	return Jogadora;
};
