const db = require("../models");
const Time = db.Time;
const Usuario = db.Usuario;
const Op = db.Sequelize.Op;


// Retrieve Classificacao from the database.
exports.getClassificacao = (req, res) => {

  Time.findAll(
		{
			order: [
				['pontuacao', 'DESC']
			],
      include: Usuario
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

exports.findAll = (req, res) => {

  Time.findAll()
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


