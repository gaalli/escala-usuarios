import React, { Component } from 'react';
import '../App.css';

import UsuarioDataService from "../services/usuario.service";
import TimesDataService from "../services/times.service";

import PageEscalacao from "./PageEscalacao";

export default class PageUsuario extends Component {
	constructor(props) {
		super(props);

		this.state = {
			usuario: {},
			time: {},
			usuarioValido: false,
			exibeForm: false,
			exibeEscala: false,
		};

		this.dadosUsuario = this.dadosUsuario.bind(this);
		this.cadastraUsuario = this.cadastraUsuario.bind(this);
		this.validarUsuario = this.validarUsuario.bind(this);
		this.validarCadastro= this.validarCadastro.bind(this);
		this.pesquisarUsuario= this.pesquisarUsuario.bind(this);
		this.pesquisarTime= this.pesquisarTime.bind(this);
	}

	componentDidMount() {

	}

	dadosUsuario(e) {

		const { name, value } = e.target;
		const usuario = this.state.usuario;
		usuario[name] = value;

		this.setState({
			usuario: usuario
		});
	}

	cadastraUsuario(callback) {
		var data = {
			nome: this.state.usuario.nome,
			email: this.state.usuario.email,
			telefone: this.state.usuario.telefone,
			nomeDoTime: this.state.usuario.nomeDoTime,
		}
		TimesDataService.create(data)
			.then(response => {
				this.setState({ time: response.data })
				console.log(response.data)
			})
			.then( () => {
				callback()
			})
			.catch(e => {
				console.log(e);
			});
	}

	pesquisarUsuario() {

		const email = this.state.usuario.email;

		UsuarioDataService.getByEmail(email)
			.then(response => {
				this.setState({ usuario: response.data[0] })
			})
			.then( () => {
				this.validarUsuario()
			})
			.catch(e => {
				console.log(e);
			});
	}

	validarUsuario(){
		console.log("validar usuario")
		var usuario = this.state.usuario;

		if (usuario === undefined) {
			console.log("usuario nao existe")
			this.setState({
				exibeForm: true,
				usuarioValido: false,
				usuario: {},
			})

		} else {
			console.log("usuario existe")
			if(this.state.time.id===undefined){
				console.log("time nao existe")
				this.pesquisarTime(usuario.id)
			}else{
				console.log("time existe")
				this.setState({
					exibeForm: false,
					usuarioValido: true,
				})
			}
		}
	}

	pesquisarTime(usuarioId){
		TimesDataService.getByUsuario(usuarioId)
			.then(response => {
				this.setState({ time: response.data[0] })
				console.log(response.data[0])
			})
			.then( () => {
				this.validarTime();
			})
			.catch(e => {
				console.log(e);
			});
	}
	
	validarTime(){
		var time = this.state.time;

		if(time.id !== undefined){
			this.setState({
				exibeForm: false,
				usuarioValido: true,
			})
		}
	}
	validarCadastro(e){

		e.preventDefault();

		this.cadastraUsuario(this.validarUsuario);
		
	}

	render() {

		const { exibeForm } = this.state;
		const time = this.state.time;

		return (
			<div className="m-3">
				{!this.state.usuarioValido ? (
					<DadosUsuario 
						exibeForm={exibeForm} 
						dadosUsuario={this.dadosUsuario} 
						cadastraUsuario={this.cadastraUsuario} 
						validarUsuario={this.validarUsuario} 
						pesquisarUsuario={this.pesquisarUsuario}
						validarCadastro={this.validarCadastro}/>
				) : (
					<PageEscalacao time={time} />
				)}

			</div>

		);
	}
}

function DadosUsuario(props) {
	const exibeForm = props.exibeForm;
	return (
		<div className="m-2">
			{
				exibeForm ? (
					<form className="submit-form row g-3" onSubmit={props.validarCadastro} >
						<div>
							Não conseguimos encontrar seu time, preencha os dados abaixo para cadastrar um.
						</div>
						<div className="col-12 my-2">
							<label htmlFor="inputNome" className="form-label">Seu nome</label>
							<input type="text" className="form-control" id="inputNome" name="nome" onChange={props.dadosUsuario} />
						</div>
						<div className="col-md-6 my-2">
							<label htmlFor="inputeEmail" className="form-label">Seu email</label>
							<input type="email" className="form-control" id="inputeEmail" name="email" onChange={props.dadosUsuario} />
						</div>
						<div className="col-md-6 my-2">
							<label htmlFor="inputTelefone" className="form-label">Seu telefone</label>
							<input type="text" className="form-control" id="inputTelefone" name="telefone" onChange={props.dadosUsuario} />
						</div>
						<div className="col-12 my-2">
							<label htmlFor="inputNomeDoTime" className="form-label">Nome do seu time</label>
							<input type="text" className="form-control" id="inputNomeDoTime" name="nomeDoTime" onChange={props.dadosUsuario} />
						</div>
						<div className="col-12 my-2">
							<button className="btn btn-primary">Confirmar</button>
						</div>
					</form>) : (
					<div>
						<div className="col-md-6 my-2">
							<label htmlFor="inputemail" className="form-label">Para começar digite seu email no campo abaixo.</label>
							<input type="text" className="form-control" id="inputemail" name="email" onChange={props.dadosUsuario} placeholder="Email" />
						</div>
						<div className="col-12 my-2">
							<button className="btn btn-primary" onClick={props.pesquisarUsuario}>Confirmar</button>
						</div>
					</div>
				)
			}
		</div>
	)

}

