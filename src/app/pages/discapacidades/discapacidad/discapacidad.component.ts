import { Component, OnInit } from '@angular/core';
import { DiscapacidadesService } from '../../../servicios/discapacidades.service';
import { Router, ActivatedRoute } from '@angular/router';
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-discapacidad',
  templateUrl: './discapacidad.component.html'
})
export class DiscapacidadComponent {

  nuevo = true;
  errMsj = null;
  load = true;
  loadReq = true;
  forma = {
    iddiscapacidad: '0',
    nombre: "",
    estado: 0
  }

  constructor(private _discapacidadesService: DiscapacidadesService, private router: Router, private route: ActivatedRoute) {
    this.route.params.subscribe(parametros => {
      let iddiscapacidad = parametros['iddiscapacidad'];

      if (iddiscapacidad > 0) {
        this.forma.iddiscapacidad = iddiscapacidad;
        this.nuevo = false;
        this.cargarDatos();

      } else {
        this.load = false;
      }
    });
  }

  agregar(forma: NgForm) {
    this.load = true;
    if (this.nuevo) {
      this._discapacidadesService
        .agregarDiscapacidad(this.forma)
        .subscribe(
          data => {
            this.router.navigate(['/discapacidades']);
            this.load = false;
          },
          err => {
            this.errMsj = err.error.mensaje;
            console.log(err);
            this.load = false;
          }
        );
    } else {
      this._discapacidadesService
        .actualizarDiscapacidad(this.forma)
        .subscribe(
          data => {
            this.router.navigate(['/discapacidades']);
            this.load = false;
          },
          err => {
            this.errMsj = err.error.mensaje;
            this.load = false;
          }
        );
    }
  }

  cargarDatos() {
    this._discapacidadesService
      .getDiscapacidad(this.forma.iddiscapacidad)
      .subscribe(
        data => {
          this.forma = data.registro;
          this.load = false;
          console.log(data);
        },
        err => {
          this.errMsj = err.error.mensaje;
          this.load = false;
        },
    );
  }

}
