import React, { Component } from "react";
import '../App.css';
import JogadorasDataService from "../services/jogadoras.service";

export default class ListaJogadoras extends Component {
	constructor(props) {
		super(props);
		this.retrieveJogadoras = this.retrieveJogadoras.bind(this);
		this.setFilter = this.setFilter.bind(this);
		this.getFilter = this.getFilter.bind(this);

		this.state = {
			jogadoras: [],
			posicaoGOL: false,
			posicaoZAG: false,
			posicaoLAT: false,
			posicaoMEI: false,
			posicaoATA: false,
			posicaoFiltro: [],
		};
	}

	componentDidMount() {
		this.retrieveJogadoras();
	}


	retrieveJogadoras() {
		JogadorasDataService.getAll()
			.then(response => {
				this.setState({
					jogadoras: response.data
				});
				console.log(response.data);
			})
			.catch(e => {
				console.log(e);
			});
	}

	setFilter(e) {
		this.setState({
			[e.target.id]: e.target.checked,
		})
	}

	getFilter() {
		var posicaoFiter = [];
		var i = 0;

		if (this.state.posicaoGOL) {
			posicaoFiter[i] = "GOL";
			i++;
		}
		if (this.state.posicaoZAG) {
			posicaoFiter[i] = "ZAG";
			i++;
		}
		if (this.state.posicaoLAT) {
			posicaoFiter[i] = "LAT";
			i++;
		}
		if (this.state.posicaoMEI) {
			posicaoFiter[i] = "MEI";
			i++;
		}
		if (this.state.posicaoATA) {
			posicaoFiter[i] = "ATA";
			i++;
		}

		this.setState({ posicaoFiltro: posicaoFiter }, () => {
			JogadorasDataService.findByFilter(posicaoFiter)
				.then(response => {
					this.setState({
						jogadoras: response.data
					});
					console.log(response.data);
				})
				.catch(e => {
					console.log(e);
				});
		});





	}

	render() {
		const { jogadoras } = this.state;

		return (

			<div>
				<div className="header m-5">
					<h1>Lista de Jogadoras</h1>
				</div>
				<div className="my-5">
					<button className="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseFiltros" aria-expanded="false" aria-controls="collapseExample">
						Filtros
					</button>
					<div className="shadow collapse my-3 mx-0 p-3" id="collapseFiltros">

						<div>
							<div className="mt-2">
								<h5>Posição</h5>
							</div>
						</div>
						<Filtro posicao="Goleira" id="posicaoGOL" setFilter={this.setFilter} />
						<Filtro posicao="Zagueira" id="posicaoZAG" setFilter={this.setFilter} />
						<Filtro posicao="Lateral" id="posicaoLAT" setFilter={this.setFilter} />
						<Filtro posicao="Meia" id="posicaoMEI" setFilter={this.setFilter} />
						<Filtro posicao="Atacante" id="posicaoATA" setFilter={this.setFilter} />

						<button className="btn btn-primary m-2" type="button" onClick={this.getFilter}>
							Aplicar Filtros
						</button>
					</div>


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
							{jogadoras &&
								jogadoras.map((jogadora, index) => (
									<JogadoraRow key={jogadora.id} jogadora={jogadora} addJogadora={this.props.addJogadora}/>
								))}
						</tbody>
					</table>
				</div>
			</div>

		);
	}
}

class Filtro extends Component {

	render() {

		return (

			<div className="form-check">
				<input className="form-check-input" type="checkbox" value="" id={this.props.id} onChange={this.props.setFilter} />
				<label className="form-check-label">
					{this.props.posicao}
				</label>
			</div>


		);
	}
}

class JogadoraRow extends Component {

	render() {
		return (
			<tr key={this.props.jogadora.id}>
				<td>{this.props.jogadora.posicao}</td>
				<td>
					<img src={require("../imagens/escudos/" + this.props.jogadora.equipe.escudo)} alt="" title={this.props.jogadora.equipe.nome} />
				</td>
				<td>{this.props.jogadora.nome}</td>
				<td>
					<div className="btn btn-success btnAdicionar" onClick={() => this.props.addJogadora(this.props.jogadora)}>+</div>
				</td>
			</tr>
		)

	}
}