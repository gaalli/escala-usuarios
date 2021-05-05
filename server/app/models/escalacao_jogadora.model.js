module.exports = (sequelize, Sequelize) => {
	const Escalacao_Jogadora = sequelize.define("escalacao_jogadora", {
		escalacaoId: {
			type: Sequelize.INTEGER,
			allowNull: false,
			references: {
				model: 'Escalacao',
				key: 'id'
			}
		},
		jogadoraId: {
			type: Sequelize.INTEGER,
			allowNull: false,
			references: {
				model: 'Jogadora',
				key: 'id'
			}
		}
	}, {
		freezeTableName: true
	});

	Escalacao_Jogadora.associate = function (models) {
/* 		Escalacao_Jogadora.belongsTo(models.Escalacao)
		Escalacao_Jogadora.belongsTo(models.Jogadora) */
	}

	return Escalacao_Jogadora;
};
