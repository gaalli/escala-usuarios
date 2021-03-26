const db = require("../models");
const Jogadora = db.Jogadora;
const Equipe = db.Equipe;
const Op = db.Sequelize.Op;


// Retrieve Jogadoras from the database.
exports.findAll = (req, res) => {

	const posicao = req.query.posicao;
	const equipe = req.query.equipe;
	var conditionPosicao = posicao ? { posicao: posicao } : null;
	var conditionEquipe = equipe ? { equipeId: equipe } : null;


	Jogadora.findAll({
		where: {
			[Op.and]: [
				conditionPosicao,
				conditionEquipe
			]
		},
		include: Equipe
	})
		.then(data => {
			res.send(data);
		})
		.catch(err => {
			res.status(500).send({
				message:
					err.message || "Some error occurred while retrieving jogadoras."
			});
		});

};

exports.findOne = (req, res) => {
	
  const id = req.params.id;

  Jogadora.findByPk(id)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message: "Error retrieving jogadora with id=" + id
      });
    });
};

