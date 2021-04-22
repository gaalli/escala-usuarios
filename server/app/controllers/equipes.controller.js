const db = require("../models");
const Equipe = db.Equipe;
const Op = db.Sequelize.Op;


// Retrieve Jogadoras from the database.
exports.findAll = (req, res) => {

	Equipe.findAll()
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

  Equipe.findByPk(id)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message: "Error retrieving jogadora with id=" + id
      });
    });
};

