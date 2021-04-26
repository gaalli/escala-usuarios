import React, { Component } from "react";
import '../App.css';
import JogadorasDataService from "../services/jogadoras.service";
import EquipesDataService from "../services/equipes.service";

export default class ListaJogadoras extends Component {
	constructor(props) {
		super(props);

		this.state = {
			jogadoras: [],
			equipes: [],
			filtro: [],
		};
	}

	componentDidMount() {
		//this.retrieveJogadoras();
		this.retrieveEquipes();
	}

	retrieveEquipes() {
		EquipesDataService.getAll()
			.then(response => {
				this.setState({
					equipes: response.data
				});
			})
			.catch(e => {
				console.log(e);
			});
	}

	changeQ(q) {
		this.setState({
			q: q
		})
	}

	testeFiltro(rows) {
		var result = rows.filter(row => row.posicao.toLowerCase().indexOf(this.state.q) > -1);
		return result;
	}

	render() {
		const jogadoras = this.props.jogadoras;
		const { equipes } = this.state;

		return (
						<tbody>
							{jogadoras &&
								jogadoras.map((jogadora, index) => (
									<JogadoraRow key={jogadora.id} jogadora={jogadora} action={this.props.action} />
								))}
						</tbody>

		);
	}
}

function Filtro(props) {

	return (

		<div className="form-check">
			<input className="form-check-input" type="checkbox" value={props.tipo + "=" + props.valor} onChange={props.setFilter} />
			<label className="form-check-label">
				{props.text}
			</label>
		</div>


	);
}

function JogadoraRow(props) {

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