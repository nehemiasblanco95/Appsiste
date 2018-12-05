import { Injectable } from "@angular/core";
// import { HttpClientModule } from '@angular/common/http';
import { HttpClient, HttpHeaders, HttpParams } from "@angular/common/http";
import { URL_SERVICIOS, APIKEY, URL_SERVICIOS_APP } from "../config/config";
import { Jsonp, URLSearchParams, RequestOptions } from "@angular/http";

import "rxjs/add/operator/map";
import "rxjs/add/operator/catch";
import "rxjs/add/operator/toPromise";

import { Router } from "@angular/router";
import {
  Colonias
} from "../modelos/modelos.index";

@Injectable()
export class CiacService {
  token: string;

  constructor(
    public http: HttpClient,
    public router: Router,
    private _jsonp: Jsonp
  ) {}


  getColoniaBusqueda(term: string) {


    let url = URL_SERVICIOS + "/buscar_colonia?colonia=" + `${term}`;

    return this.http.get(url).map((resp: any) => {
      return resp.registros;
    });
  }

  getTipoRegistros() {
    let url = URL_SERVICIOS + `/tiporegistro`;
    return this.http.get(url).map((resp: any) => {
      return resp.registros;
    });
  }

  getDirectivos() {
    let url = URL_SERVICIOS + `/directivos`;
    return this.http.get(url).map((resp: any) => {
      return resp.registros;
    });
  }

  getServicios() {
    let url = URL_SERVICIOS + `/servicios`;
    return this.http.get(url).map((resp: any) => {
      return resp.registros;
    });
  }

  getSectores() {
    let url = URL_SERVICIOS + `/sectores`;
    return this.http.get(url).map((resp: any) => {
      return resp.registros;
    });
  }

  getTipoAsentamiento() {
    let url = URL_SERVICIOS + `/tipo_asentamiento`;
    return this.http.get(url).map((resp: any) => {
      return resp.registros;
    });
  }

  getCodigoPostal() {
    let url = URL_SERVICIOS + `/codigopostal`;
    return this.http.get(url).map((resp: any) => {
      return resp.registros;
    });
  }

  getColonias() {
    let url = URL_SERVICIOS + `/colonias`;
    return this.http.get(url).map((resp: any) => {
      return resp.registros;
    });
  }

  getColoniaspaginado(pagina: number, cantidad: number, filtros: any) {
    let url = URL_SERVICIOS + "/coloniasp";
    return this.http
      .post(url, { pagina, por_pagina: cantidad, filtros })
      .map((resp: any) => {
        return resp;
      });
  }

  agregarColonia(colonia: Colonias) {
    // tslint:disable-next-line:prefer-const
    let url = URL_SERVICIOS + "/colonia";
    return this.http.post(url, colonia).map((resp: any) => {
      return resp;
    });
  }

  getColonia(Idcolonia: string) {
    let url = URL_SERVICIOS + `/colonia/${Idcolonia}`;
    return this.http.get(url).map((resp: any) => {
      return resp;
    });
  }

  actualizarColonia(colonia: Colonias) {
    let url = URL_SERVICIOS + "/colonia";
    return this.http.put(url, colonia).map((resp: any) => {
      return resp;
    });
  }



  getDependenciaspaginado(pagina: number, cantidad: number, filtros: any) {
    let url = URL_SERVICIOS + "/dependenciasp";
    return this.http
      .post(url, { pagina, por_pagina: cantidad, filtros })
      .map((resp: any) => {
        return resp;
      });
  }


  reporteColonias(datos: any) {
    // tslint:disable-next-line:prefer-const
    let url = URL_SERVICIOS + "/reporte_colonias";
    return this.http.post(url, datos).map((resp: any) => {
      return resp;
    });
  }

  reporteRegistros(datos: any) {
    // tslint:disable-next-line:prefer-const
    let url = URL_SERVICIOS + "/reporte_registros";
    return this.http.post(url, datos).map((resp: any) => {
      return resp;
    });
  }
  reporteServicios(datos: any) {
    // tslint:disable-next-line:prefer-const
    let url = URL_SERVICIOS + "/reporte_servicios";
    return this.http.post(url, datos).map((resp: any) => {
      return resp;
    });
  }
  reporteSexos(datos: any) {
    // tslint:disable-next-line:prefer-const
    let url = URL_SERVICIOS + "/reporte_sexos";
    return this.http.post(url, datos).map((resp: any) => {
      return resp;
    });
  }
  reporteSecretarias(datos: any) {
    // tslint:disable-next-line:prefer-const
    let url = URL_SERVICIOS + "/reporte_secretarias";
    return this.http.post(url, datos).map((resp: any) => {
      return resp;
    });
  }

  reporteFinalizados_mapa(datos: any) {
    // tslint:disable-next-line:prefer-const
    let url = URL_SERVICIOS + "/reporte_finalizados_mapa";
    return this.http.post(url, datos).map((resp: any) => {
      return resp;
    });
  }

  getDependencia(iddependencia: string) {
    let url = URL_SERVICIOS + `/dependencia/${iddependencia}`;
    return this.http.get(url).map((resp: any) => {
      return resp;
    });
  }

  actualizarSolicitud(solicitud: any, fileToUpload: File, documento: File) {
    // tslint:disable-next-line:prefer-const

    let url = URL_SERVICIOS + '/solicitud_editar';
    const formData: FormData = new FormData();
    formData.append('imagen', fileToUpload);
    formData.append('documento', documento);
    formData.append('data', JSON.stringify(solicitud));
    return this.http
      .post(url, formData)
      .map((resp: any) => {

        return resp;
      });
  }


  getServiciospaginado(pagina: number, cantidad: number, filtros: any) {
    let url = URL_SERVICIOS + "/serviciosp";
    return this.http
      .post(url, { pagina, por_pagina: cantidad, filtros })
      .map((resp: any) => {
        return resp;
      });
  }

  getServicio(idservicio: string) {
    let url = URL_SERVICIOS + `/servicio/${idservicio}`;
    return this.http.get(url).map((resp: any) => {
      return resp;
    });
  }

  getTiposServicio() {
    let url = URL_SERVICIOS + "/tipos_servicio";
    return this.http.get(url).map((resp: any) => {
      return resp;
    });
  }

  getAllCiudadanos() {
    let url = URL_SERVICIOS + "/all_ciudadanos";
    return this.http.get(url).map((resp: any) => {
      return resp.registros;
    });
  }


  getSolicitudespaginado(
    pagina: number,
    cantidad: number,
    filtros: any,
    order: any
  ) {
    let url = URL_SERVICIOS + "/solicitudesp";
    return this.http
      .post(url, { pagina, por_pagina: cantidad, filtros, order })
      .map((resp: any) => {
        return resp;
      });
  }

  getSolicitud(idsolicitud: number) {
    let url = URL_SERVICIOS + `/solicitud/${idsolicitud}`;
    return this.http.get(url).map((resp: any) => {
      return resp;
    });
  }

  getSolicitudHistorial(idsolicitud: number) {
    let url = URL_SERVICIOS + `/solicitud_historial/${idsolicitud}`;
    return this.http.get(url).map((resp: any) => {
      return resp;
    });
  }

  multiImpresion(colaImpresion) {
    let url = URL_SERVICIOS + "/pdf_multiple";
    return this.http
      .post(
        url,
        { colaImpresion },
        {
          responseType: "blob"
        }
      )

      .map((resp: any) => {
        let downloadUrl = window.URL.createObjectURL(resp);
        window.open(downloadUrl);
      });
  }

  getExcel() {
    let url = URL_SERVICIOS + `/exportar2excel`;
    return this.http.get(url, { responseType: "blob" }).map((resp: any) => {
      let downloadUrl = window.URL.createObjectURL(resp);
      window.open(downloadUrl);
    });
  }

  descargaReporte(fechas: any) {
    let url = URL_SERVICIOS + "/descargaexcel";
    return this.http
      .post(url, fechas, { responseType: "blob" })
      .map((resp: any) => {
        let downloadUrl = window.URL.createObjectURL(resp);
        window.open(downloadUrl);
      });
  }

  solicitudCorreo(idsolicitud: any, email: string) {
    let httpParams = new HttpParams()
      .set("idsolicitud", idsolicitud)
      .set("email", email);
    let url = URL_SERVICIOS + `/solicitud_correo`;
    return this.http.get(url, { params: httpParams }).map((resp: any) => {
      return resp;
    });
  }

  cambiarEstadoSol(forma: any) {
    // tslint:disable-next-line:prefer-const

    let url = URL_SERVICIOS + "/solicitud_cam_estado";
    return this.http.post(url, forma).map((resp: any) => {
      return resp;
    });
  }

  cambiarEstadoSolMultiple(forma: any) {
    // tslint:disable-next-line:prefer-const

    let url = URL_SERVICIOS + "/solicitudes_cam_estado";
    return this.http.post(url, forma).map((resp: any) => {
      return resp;
    });
  }

  solicitudJustificacionVenc(forma: any) {
    // tslint:disable-next-line:prefer-const

    let url = URL_SERVICIOS + "/solicitud_justificacion";
    return this.http.post(url, forma).map((resp: any) => {
      return resp;
    });
  }

  getSolicitudJustificacionVenc(idsoliciutud: number) {
    let url = URL_SERVICIOS + '/solicitud_justificacion/'+ idsoliciutud;
    return this.http.get(url).map((resp: any) => {
      return resp;
    });
  }

  reporteColoniasExcel(datos: any) {
    // tslint:disable-next-line:prefer-const
    let url = URL_SERVICIOS + "/excel_colonias";
    return this.http
      .post(url, datos, { responseType: "blob" })
      .map((resp: any) => {
        let downloadUrl = window.URL.createObjectURL(resp);
        window.open(downloadUrl);
      });
  }

  reporteSecretariasExcel(datos: any) {
    // tslint:disable-next-line:prefer-const
    let url = URL_SERVICIOS + "/excel_secretarias";
    return this.http
      .post(url, datos, { responseType: "blob" })
      .map((resp: any) => {
        let downloadUrl = window.URL.createObjectURL(resp);
        window.open(downloadUrl);
      });
  }

  reporteServiciosExcel(datos: any) {
    // tslint:disable-next-line:prefer-const
    let url = URL_SERVICIOS + "/excel_servicios";
    return this.http
      .post(url, datos, { responseType: "blob" })
      .map((resp: any) => {
        let downloadUrl = window.URL.createObjectURL(resp);
        window.open(downloadUrl);
      });
  }

  reporteRegistrosExcel(datos: any) {
    // tslint:disable-next-line:prefer-const
    let url = URL_SERVICIOS + "/excel_registros";
    return this.http
      .post(url, datos, { responseType: "blob" })
      .map((resp: any) => {
        let downloadUrl = window.URL.createObjectURL(resp);
        window.open(downloadUrl);
      });
  }
}
