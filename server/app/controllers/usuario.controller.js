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

