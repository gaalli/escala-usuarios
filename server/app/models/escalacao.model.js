module.exports = (sequelize, Sequelize) => {
	const Escalacao = sequelize.define("escalacao", {
		timeId: {
			type: Sequelize.INTEGER,
			allowNull: false,
			references: {
				model: 'Time',
				key: 'id'
			}
		},
		rodadaId: {
			type: Sequelize.INTEGER,
			allowNull: false,
			references: {
				model: 'Rodada',
				key: 'id'
			}
		},
		formacaoId: {
			type: Sequelize.INTEGER,
			allowNull: false,
			references: {
				model: 'Formacao',
				key: 'id'
			}
		},
	}, {
		freezeTableName: true
	});

	Escalacao.associate = function (models) {
		Escalacao.belongsToMany(models.Jogadora, { through: models.Escalacao_Jogadora });
	}

	return Escalacao;
};
