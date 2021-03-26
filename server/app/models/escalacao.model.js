module.exports = (sequelize, Sequelize) => {
  const Escalacao = sequelize.define("escalacao", {
    jogadora1: {
      type: Sequelize.STRING
		},
		jogadora2: {
      type: Sequelize.STRING
		},
		jogadora3: {
      type: Sequelize.STRING
		},
		jogadora4: {
      type: Sequelize.STRING
		},
		jogadora5: {
      type: Sequelize.STRING
		},
		jogadora6: {
      type: Sequelize.STRING
		},
		jogadora7: {
      type: Sequelize.STRING
		},
		jogadora8: {
      type: Sequelize.STRING
		},
		jogadora9: {
      type: Sequelize.STRING
		},
		jogadora10: {
      type: Sequelize.STRING
		},
		jogadora11: {
      type: Sequelize.STRING
    },
	});

	//Equipe.associate = function(models) {
	//	Equipe.hasMany(models.Jogadora);
	//}

  return Escalacao;
};
