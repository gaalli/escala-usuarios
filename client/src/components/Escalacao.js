import React, { Component } from 'react';
import '../App.css';
import ListaJogadoras from './ListaJogadoras';


export default class Escalacao extends Component {
	constructor(props) {
		super(props);

		this.state = {
			esquema: "4-3-3", //Esquema default
			esquema433: ["GOL", "LAT", "ZAG", "ZAG", "LAT", "MEI", "MEI", "MEI", "ATA", "ATA", "ATA"],
			esquema343: ["GOL", "ZAG", "ZAG", "ZAG", "MEI", "MEI", "MEI", "MEI", "ATA", "ATA", "ATA"],
			esquema442: ["GOL", "LAT", "ZAG", "ZAG", "LAT", "MEI", "MEI", "MEI", "MEI", "ATA", "ATA"],
			formacao: ["GOL", "LAT", "ZAG", "ZAG", "LAT", "MEI", "MEI", "MEI", "ATA", "ATA", "ATA"],
			escalacao: [],
			gol:1, //Valor default de goleiras na escalação
			zag:2, //Valor default de zagueiras na escalação
			lat:2, //Valor default de laterais na escalação
			mei:3, //Valor default de meias na escalação
			ata:3, //Valor default de atacantes na escalação
		};
		this.setEsquema = this.setEsquema.bind(this);
		this.setFormacao = this.setFormacao.bind(this);
		this.iniciaEscalacao = this.iniciaEscalacao.bind(this);
		this.setEscalacao = this.setEscalacao.bind(this);
		this.addJogadora = this.addJogadora.bind(this);
	}

	componentDidMount() {

		if(this.state.escalacao.length === 0){
			this.iniciaEscalacao();
		}			
		else
			console.log("NÃO entrou no if")
		 //
		
		this.setEscalacao();
	}

	setEsquema(e) {
		this.setState({ esquema: e.target.value }, () => {
			this.setFormacao();
		});

	}

	setFormacao() {

		if (this.state.esquema === "4-3-3")
			this.setState({ formacao: this.state.esquema433 }, () => { this.setEscalacao(); });
		else if (this.state.esquema === "4-4-2")
			this.setState({ formacao: this.state.esquema442 }, () => { this.setEscalacao(); });
		else if (this.state.esquema === "3-4-3")
			this.setState({ formacao: this.state.esquema343 }, () => { this.setEscalacao(); });

	}

	iniciaEscalacao() {
		console.log("inicia escalacao")

		const novaEscalacao = [
			{nome:'', time:'', posicao:''},
			{nome:'', time:'', posicao:''},
			{nome:'', time:'', posicao:''},
			{nome:'', time:'', posicao:''},
			{nome:'', time:'', posicao:''},
			{nome:'', time:'', posicao:''},
			{nome:'', time:'', posicao:''},
			{nome:'', time:'', posicao:''},
			{nome:'', time:'', posicao:''},
			{nome:'', time:'', posicao:''},
			{nome:'', time:'', posicao:''},];

			this.setState({ escalacao: novaEscalacao });
	}

	setEscalacao() {

		var i = 0;
		var novaEscalacao = this.state.escalacao;

		while(11 > i){
			//novaEscalacao[i].posicao= this.state.formacao[i];
			//this.setState({ escalacao[i]: this.state.formacao[i] });
			//novaEscalacao[i].posicao=this.state.formacao[i];
			i++;
		};	

		this.setState({ escalacao: novaEscalacao });

	}

	addJogadora(jogadora) {

		console.log("chegou no addJogadora " + jogadora.nome);
		//console.log(jogadora.id);
		//console.log(jogadora.nome);
		//this.setState({ escalacao: this.state.formacao[i] });
	}

	render() {

		return (

			<div className="m-3">

				<div className="header m-5">
					<h1>Escalação</h1>
				</div>

				<div className="form-inline">
					<label>
						Formação
          	<select id="selectFormacao" className="custom-select m-2" value={this.state.esquema} onChange={this.setEsquema}>
							<option value="4-3-3">4-3-3</option>
							<option value="4-4-2">4-4-2</option>
							<option value="3-4-3">3-4-3</option>
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
							{this.state.escalacao.map((jogadora, index) => (
								<tr key={index}>
									<td>{jogadora.posicao}</td>
									<td></td>
									<td>{jogadora.nome}</td>
									<td>
										<div className="btn btn-success btnAdicionar">+</div>
									</td>
								</tr>
							))}
						</tbody>
					</table>
					<ListaJogadoras addJogadora={this.addJogadora}/>
				</div>

			</div>

		);
	}
}
