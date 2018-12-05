import { Component, AfterViewInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { NgForm } from '@angular/forms';
import { NgSwitch } from '@angular/common';
import { Colonias, TipoAsentamiento, CodigoPostal, Sectores } from '../../../modelos/modelos.index';
import { forkJoin } from 'rxjs/observable/forkJoin';
import { CiacService } from '../../../servicios/ciac.service';

@Component({
	templateUrl: './colonia.component.html'
})
export class ColoniaComponent implements AfterViewInit {
	nuevo = true;
	errMsj = null;
	load = true;
	loadReq = true;

	tipo_asentamiento: TipoAsentamiento[];
	codigos_postal: CodigoPostal[];
	sectores: Sectores[];

	colonia = new Colonias('0', undefined, undefined, undefined, '');
	constructor(private _ciacService: CiacService, private router: Router, private route: ActivatedRoute) {
		this.route.params.subscribe(parametros => {
			let Idcolonia = parametros['Idcolonia'];
			if (Idcolonia) {
				this.nuevo = false;
				this.colonia = new Colonias(Idcolonia, undefined, undefined, undefined, '');
				this.cargarColonia();
			}else {
				this.load = false;
			}
		});

		forkJoin(
			this._ciacService.getTipoAsentamiento(),
			this._ciacService.getCodigoPostal(),
			this._ciacService.getSectores(),
		).subscribe(([tipo_asentamiento, codigos_postal, sectores]) => {
			if (!tipo_asentamiento.err && !codigos_postal.err && !sectores.err) {
				this.tipo_asentamiento = tipo_asentamiento;
				this.codigos_postal = codigos_postal;
				this.sectores = sectores;
				if (this.nuevo) {
					this.colonia.IdTipoAsentamiento = this.tipo_asentamiento[0].IdTipoAsentamiento;
					this.colonia.IdCodigoPostal = this.codigos_postal[0].idCodigoPostal;
					this.colonia.idsector = this.sectores[0].idsector;
				}
			}
			this.loadReq = false;
		},
			err => {
				this.errMsj = err.error.mensaje;
				this.loadReq = false;
			});
	}
	ngAfterViewInit() {

	}

	agregarColonia(forma: NgForm) {
		this.load = true;
		if (this.nuevo) {
			this._ciacService
				.agregarColonia(this.colonia)
				.subscribe(
					data => {
						this.router.navigate(['/colonias']);
						this.load = false;
					},
					err => {
						this.errMsj = err.error.mensaje;
						this.load = false;
					}
				);
		} else {
			this._ciacService
				.actualizarColonia(this.colonia)
				.subscribe(
					data => {
						this.router.navigate(['/colonias']);
						this.load = false;
					},
					err => {
						this.errMsj = err.error.mensaje;
						this.load = false;
					}
				);
		}
	}

	cargarColonia() {
		this._ciacService
			.getColonia(this.colonia.Idcolonia)
			.subscribe(
				data => {
					this.colonia = new Colonias(data.registros.Idcolonia, data.registros.IdTipoAsentamiento, data.registros.IdCodigoPostal, data.registros.idsector, data.registros.Colonia);
					this.load = false;
				},
				err => {
					this.errMsj = err.error.mensaje;
					this.load = false;
				},
		);
	}

}

