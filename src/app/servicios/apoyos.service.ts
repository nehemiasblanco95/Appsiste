import { Injectable } from '@angular/core';
import { URL_SERVICIOS, APIKEY, URL_SERVICIOS_APP } from "../config/config";
import { HttpClient } from '@angular/common/http';

import 'rxjs/add/operator/map';
import 'rxjs/add/operator/catch';



@Injectable()
export class ApoyosService {


  constructor(public http: HttpClient) {

  }

  getApoyosPaginado(pagina: number, cantidad: number, filtros: any) {
    let url = URL_SERVICIOS + "/apoyosp";
    return this.http
      .post(url, { pagina, por_pagina: cantidad, filtros })
      .map((resp: any) => {
        return resp;
      });
  }

  getApoyo(idapoyo: string) {
    let url = URL_SERVICIOS + `/apoyo/${idapoyo}`;
    return this.http.get(url).map((resp: any) => {
      return resp;
    });
  }

  agregarApoyo(data: any) {
    let url = URL_SERVICIOS + "/apoyo";
    return this.http.post(url, data).map((resp: any) => {
      return resp;
    });
  }

  actualizarApoyo(data: any) {
    let url = URL_SERVICIOS + "/apoyo";
    return this.http.put(url, data).map((resp: any) => {
      return resp;
    });
  }



}
