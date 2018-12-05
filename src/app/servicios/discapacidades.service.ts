import { Injectable } from '@angular/core';
import { URL_SERVICIOS } from "../config/config";
import { HttpClient } from '@angular/common/http';

import 'rxjs/add/operator/map';
import 'rxjs/add/operator/catch';



@Injectable()
export class DiscapacidadesService {


    constructor(public http: HttpClient) {

    }

    getDiscapacidadesPaginado(pagina: number, cantidad: number, filtros: any) {
        let url = URL_SERVICIOS + "/discapacidadesp";
        return this.http
            .post(url, { pagina, por_pagina: cantidad, filtros })
            .map((resp: any) => {
                return resp;
            });
    }

    getDiscapacidad(iddiscapacidad: string) {
        let url = URL_SERVICIOS + `/discapacidad/${iddiscapacidad}`;
        return this.http.get(url).map((resp: any) => {
            return resp;
        });
    }

    agregarDiscapacidad(data: any) {
        let url = URL_SERVICIOS + "/discapacidad";
        return this.http.post(url, data).map((resp: any) => {
            return resp;
        });
    }

    actualizarDiscapacidad(data: any) {
        let url = URL_SERVICIOS + "/discapacidad";
        return this.http.put(url, data).map((resp: any) => {
            return resp;
        });
    }



}
