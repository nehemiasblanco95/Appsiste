import { Component, AfterViewInit } from '@angular/core';
import { CiacService } from '../../servicios/ciac.service';
import { Colonias } from '../../modelos/colonias.model';

@Component({
	templateUrl: './colonias.component.html'
})
export class ColoniasComponent implements AfterViewInit {
	colonias: any[];
	itemsPerPage: number;
	totalItems: any;
	page: any;
	totalCount: number;
	previousPage: any;
	pageG = 1;
	rpp = 10;
	load = true;

	filtros: any;

	errMsj = null;

	constructor(public _ciacService: CiacService) {
		this.filtros = { 'TipoAsentamiento': '', 'CodigoPostal': '', 'sector': '', 'Colonia': ''};
		this.loadPage(1);
	}
	ngAfterViewInit() {

	}
	loadPage(page: number) {
		if (page !== this.previousPage) {
			this.previousPage = page;
			this.loadData();
		} else {
			console.log('no es distinto a prev');
		}
	}

	loadRpp(value: number) {
		this.pageG = 1;
		this.rpp = value;
		this.loadData();
	}

	loadData() {
		this.load = true;
		this._ciacService
			.getColoniaspaginado(this.pageG, this.rpp, this.filtros)
			.subscribe(
				data => {
					this.totalItems = data.total_paginas * 10;
					this.colonias = data.registros;
					this.totalCount = data.cuantos;
					this.load = false;
				},
				err => {
					this.errMsj = err.error.mensaje;
				}
			);
	}

	filtrar() {
		this.pageG = 1;
		this.loadData();
	}
}
