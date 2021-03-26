module.exports = (sequelize, Sequelize) => {
  const Time = sequelize.define("time", {
    nome: {
      type: Sequelize.STRING
    },
    tecnico: {
      type: Sequelize.STRING
    },
    pontuacao: {
      type: Sequelize.INTEGER
    }
  });

  return Time;
};
