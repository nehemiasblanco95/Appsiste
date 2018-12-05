import { Component } from '@angular/core';
import { ApoyosService } from '../../servicios/apoyos.service';

@Component({
  selector: 'app-apoyos',
  templateUrl: './apoyos.component.html'
})
export class ApoyosComponent {

  apoyos: any[];
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

  constructor(public _apoyosService: ApoyosService) {
    this.filtros = { 'nombre': '' };
    this.loadPage(1);
  }

  loadPage(page: number) {
    if (page !== this.previousPage) {
      this.previousPage = page;
      this.loadData();
    } else {
    }
  }

  loadRpp(value: number) {
    this.pageG = 1;
    this.rpp = value;
    this.loadData();
  }

  loadData() {
    this.load = true;
    this._apoyosService
      .getApoyosPaginado(this.pageG, this.rpp, this.filtros)
      .subscribe(
        data => {
          this.totalItems = data.total_paginas * 10;
          this.apoyos = data.registros;
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
