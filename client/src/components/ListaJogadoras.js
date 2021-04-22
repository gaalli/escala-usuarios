import React, { Component } from "react";
import '../App.css';
import JogadorasDataService from "../services/jogadoras.service";
import EquipesDataService from "../services/equipes.service";

export default class ListaJogadoras extends Component {
	constructor(props) {
		super(props);
		this.retrieveJogadoras = this.retrieveJogadoras.bind(this);
		this.setFilter = this.setFilter.bind(this);
		this.getFilter = this.getFilter.bind(this);

		this.state = {
			jogadoras: [],
			equipes: [],
			filtro: [],
		};
	}

	componentDidMount() {
		this.retrieveJogadoras();
		this.retrieveEquipes();
	}


	retrieveJogadoras() {
		JogadorasDataService.getAll()
			.then(response => {
				this.setState({
					jogadoras: response.data
				});
			})
			.catch(e => {
				console.log(e);
			});
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

	setFilter(e) {

		var f = this.state.filtro;
		var item = e.target.value;

		if (e.target.checked) {
			f.push(item)
		} else {
			const index = f.indexOf(item);
			if (index > -1) {
				f.splice(index, 1);
			}
		}

		this.setState({ filtro: f });

	}

	getFilter() {

		JogadorasDataService.findByFilter(this.state.filtro)
			.then(response => {
				this.setState({
					jogadoras: response.data
				});
			})
			.catch(e => {
				console.log(e);
			});

	}

	render() {
		const { jogadoras } = this.state;
		const { equipes } = this.state;

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

						<div className="row" key="filtroHeader">
							<div className="col-sm">
								<div className="mt-2">
									<h5>Posição</h5>
								</div>
							</div>
							<div className="col-sm">
								<div className="mt-2">
									<h5>Equipes</h5>
								</div>
							</div>
						</div>
						<div className="row" key="filtroBody">
							<div className="col-sm">
								<Filtro id="filtroPosicaoGOL" text="Goleira" tipo="posicao" valor="GOLEIRA" setFilter={this.setFilter} />
								<Filtro id="filtroPosicaoZAG" text="Zagueira" tipo="posicao" valor="ZAGUEIRA" setFilter={this.setFilter} />
								<Filtro id="filtroPosicaoLAT" text="Lateral" tipo="posicao" valor="LATERAL" setFilter={this.setFilter} />
								<Filtro id="filtroPosicaoMEI" text="Meia" tipo="posicao" valor="MEIO CAMPO" setFilter={this.setFilter} />
								<Filtro id="filtroPosicaoATA" text="Atacante" tipo="posicao" valor="ATACANTE" setFilter={this.setFilter} />
							</div>
							<div className="col-sm">
								{equipes &&
									equipes.map((equipe, index) => (
										<Filtro id={"filtroEquipe" + equipe.id} text={equipe.nome} tipo="equipe" valor={equipe.id} setFilter={this.setFilter} />
									))}
							</div>
						</div>

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
									<JogadoraRow key={jogadora.id} jogadora={jogadora} addJogadora={this.props.addJogadora} />
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
				<input className="form-check-input" type="checkbox" value={this.props.tipo + "=" + this.props.valor} key={this.props.id} onChange={this.props.setFilter} />
				<label className="form-check-label">
					{this.props.text}
				</label>
			</div>


		);
	}
}

class JogadoraRow extends Component {

	render() {
		return (
			<tr key={"jogadora" + this.props.jogadora.key}>
				<td>{this.props.jogadora.posicao}</td>
				<td>
					<img src={require("../imagens/escudos/" + this.props.jogadora.equipe.escudo).default} alt="" title={this.props.jogadora.equipe.nome} width="65" height="65" />
				</td>
				<td>{this.props.jogadora.nome}</td>
				<td>
					<div className="btn btn-success btnAdicionar" onClick={() => this.props.addJogadora(this.props.jogadora)}>+</div>
				</td>
			</tr>
		)

	}
}