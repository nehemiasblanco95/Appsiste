import { Injectable } from '@angular/core';
import { URL_SERVICIOS} from "../config/config";
import { HttpClient } from '@angular/common/http';

import 'rxjs/add/operator/map';
import 'rxjs/add/operator/catch';



@Injectable()
export class AreasService {


    constructor(public http: HttpClient) {

    }

    getAreasPaginado(pagina: number, cantidad: number, filtros: any) {
        let url = URL_SERVICIOS + "/areasp";
        return this.http
            .post(url, { pagina, por_pagina: cantidad, filtros })
            .map((resp: any) => {
                return resp;
            });
    }

    getArea(idarea: string) {
        let url = URL_SERVICIOS + `/area/${idarea}`;
        return this.http.get(url).map((resp: any) => {
            return resp;
        });
    }

    agregarArea(data: any) {
        let url = URL_SERVICIOS + "/area";
        return this.http.post(url, data).map((resp: any) => {
            return resp;
        });
    }

    actualizarArea(data: any) {
        let url = URL_SERVICIOS + "/area";
        return this.http.put(url, data).map((resp: any) => {
            return resp;
        });
    }



}
