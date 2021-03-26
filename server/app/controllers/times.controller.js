const db = require("../models");
const Time = db.Time;
const Op = db.Sequelize.Op;


// Retrieve Classificacao from the database.
exports.getClassificacao = (req, res) => {

  Time.findAll(
		{
			order: [
				['pontuacao', 'DESC']
			]
		}
	)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving tutorials."
      });
    });
};

// Retrieve Classificacao from the database.
exports.findAll = (req, res) => {

  Times.findAll()
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving tutorials."
      });
    });
};


