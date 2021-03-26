module.exports = (sequelize, Sequelize) => {
  const Equipe = sequelize.define("equipe", {
    nome: {
      type: Sequelize.STRING
    },
    escudo: {
      type: Sequelize.STRING
    },
	});
	Equipe.associate = function(models) {
		Equipe.hasMany(models.Jogadora);
	}

  return Equipe;
};
