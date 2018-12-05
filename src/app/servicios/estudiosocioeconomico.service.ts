import { Injectable } from '@angular/core';
import { URL_SERVICIOS} from "../config/config";
import { HttpClient } from '@angular/common/http';

import 'rxjs/add/operator/map';
import 'rxjs/add/operator/catch';



@Injectable()
export class EstudioSocioeconomicoService {


  constructor(public http: HttpClient) {
    
  }

  getEstudiospaginado( pagina: number, cantidad: number, filtros: any, order: any ) {
    let url = URL_SERVICIOS + "/estudiosp";
    return this.http
      .post(url, { pagina, por_pagina: cantidad, filtros, order })
      .map((resp: any) => {
        return resp;
      });
  }

  agregarEstudio(data: any) {
    let url = URL_SERVICIOS + "/estudio";
    return this.http.post(url, data).map((resp: any) => {
      return resp;
    });
  }

  actualizarEstudio(data: any) {
    let url = URL_SERVICIOS + "/estudio";
    return this.http.put(url, data).map((resp: any) => {
      return resp;
    });
  }

  getApoyos() {
    let url = URL_SERVICIOS + `/apoyos`;
    return this.http.get(url).map((resp: any) => {
      return resp;
    });
  }

 

}
