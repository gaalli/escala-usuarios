const db = require("../models");
const Usuario = db.Usuario;
const Op = db.Sequelize.Op;


exports.findAll = (req, res) => {

	Usuario.findAll()
		.then(data => {
			res.send(data);
		})
		.catch(err => {
			res.status(500).send({
				message:
					err.message || "Some error occurred while retrieving usuario."
			});
		});

};

exports.findOne = (req, res) => {
	
  const id = req.params.id;

  Usuario.findByPk(id)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message: "Error retrieving usuario with id=" + id
      });
    });
};

exports.create = (req, res) => {
  // Validate request
  if (!req.body.nome) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
    return;
  }

  // Create a Tutorial
  const usuario = {
    nome: req.body.nome,
    email: req.body.email,
    telefone: req.body.telefone
  };

  // Save Tutorial in the database
  Usuario.create(usuario)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the Tutorial."
      });
    });
};

