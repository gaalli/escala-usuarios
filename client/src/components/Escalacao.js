import React, { Component } from 'react';
import '../App.css';
import FormacaoDataService from "../services/formacao.service";
import JogadorasDataService from "../services/jogadoras.service";
import EquipesDataService from "../services/equipes.service";



export default class Escalacao extends Component {
	constructor(props) {
		super(props);

		this.state = {
			escalacao: [],
		};
	}

	componentDidMount() {

	}

	render() {

		const escalacao = this.props.escalacao;
		const formacao = this.props.formacao;

		return (

			<div>
				<div className="header m-5">
					<h1>Escalação</h1>
				</div>

				<div className="form-inline">
					<label>
						Formação
						<select id="selectFormacao" className="custom-select m-2" onChange={() => this.prop.setEsquema}>
							{formacao &&
								formacao.map((f, index) => (
									<option value={f.nome}>{f.nome}</option>
								))}
						</select>
					</label>
				</div>


				<div>
					<table className="table my-3 mx-auto">
						<thead>
							<tr>
								<th scope="col">Posição</th>
								<th scope="col">Time</th>
								<th scope="col">Jogadora</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody>
							{escalacao.map((jogadora, index) => (
								<JogadoraRow key={jogadora.id} jogadora={jogadora} action={this.props.action} />
							))}
						</tbody>
					</table>
				</div>
							</div>

		);
	}
}

function JogadoraRow (props) {

	var jogadora = props.jogadora

	return (
		<tr key={"jogadora" + props.jogadora.key}>
			<td>{props.jogadora.posicao}</td>
			<td>
				<img src={require("../imagens/escudos/" + props.jogadora.equipe.escudo).default} alt="" title={props.jogadora.equipe.nome} width="65" height="65" />
			</td>
			<td>{props.jogadora.nome}</td>
			<td>
				<div className={jogadora.add ? "btn btn-success" : "btn btn-danger"} onClick={() => props.action(props.jogadora)}>+</div>
			</td>
		</tr>
	);
}
