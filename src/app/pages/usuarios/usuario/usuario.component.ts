import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { Router, ActivatedRoute } from '@angular/router';
import { UsuarioService } from '../../../servicios/usuario.service';

@Component({
	selector: 'app-usuario',
	templateUrl: './usuario.component.html'
})
export class UsuarioComponent {

	nuevo = true;
	errMsj = null;
	load = true;
	loadReq = true;
	forma = {
		idusuario: '0',
		nombre: "",
		estado: '0',
		password: "",
		idrol: '1'
	}
	roles: any[];

	constructor(private _usuarioService: UsuarioService, private router: Router, private route: ActivatedRoute) {

		this.route.params.subscribe(parametros => {
			let idusuario = parametros['idusuario'];
			this.cargarRoles();

			if (idusuario > 0) {
				this.forma.idusuario = idusuario;
				this.nuevo = false;
				this.cargarDatos();

			} else {
				this.load = false;
				console.log('nuevo');
			}
		});
	}

	agregar(forma: NgForm) {
		this.load = true;
		if (this.nuevo) {
			console.log(this.forma);
			this._usuarioService
				.agregarUsuario(this.forma)
				.subscribe(
					data => {
						this.router.navigate(['/usuarios']);
						this.load = false;
					},
					err => {
						this.errMsj = err.error.mensaje;
						console.log(err);
						this.load = false;
					}
				);
		} else {
			this._usuarioService
				.actualizarUsuario(this.forma)
				.subscribe(
					data => {
						this.router.navigate(['/usuarios']);
						this.load = false;
					},
					err => {
						this.errMsj = err.error.mensaje;
						this.load = false;
					}
				);
		}
	}

	cargarRoles() {
		this._usuarioService
			.getRoles()
			.subscribe(
				data => {
					this.roles = data.registros;
					this.load = false;
				},
				err => {
					this.errMsj = err.error.mensaje;
					this.load = false;
				},
		);
	}

	cargarDatos() {
		this._usuarioService
			.getUsuario(this.forma.idusuario)
			.subscribe(
				data => {
					this.forma = data.registro;
					this.load = false;
				},
				err => {
					this.errMsj = err.error.mensaje;
					this.load = false;
				},
		);
	}


}