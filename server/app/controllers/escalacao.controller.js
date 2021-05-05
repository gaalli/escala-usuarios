const db = require("../models");
const Escalacao = db.Escalacao;
const Op = db.Sequelize.Op;


// Retrieve Jogadoras from the database.
exports.findAll = (req, res) => {

  Escalacao.findAll()
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving escalacao."
      });
    });

};

exports.findOne = (req, res) => {

  const id = req.params.id;

  Escalacao.findByPk(id)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message: "Error retrieving jogadora with id=" + id
      });
    });
};

exports.create = async (req, res) => {
  // Validate request
  if (!req.body.timeId) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
    return;
  }

 
 
  try {

    const escalacao = await Escalacao.create({
      timeId: req.body.timeId,
      rodadaId: req.body.rodadaId,
      formacaoId: req.body.formacaoId,
    });

    await escalacao.addJogadora(req.body.jogadoras);

    //res.send(escalacao);
    res.status(200).json(escalacao)

  } catch (err) {

    res.status(500).json({ err });
  }



};