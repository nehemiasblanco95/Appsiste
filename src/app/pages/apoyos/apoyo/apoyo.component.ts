import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { Router, ActivatedRoute } from '@angular/router';
import { ApoyosService } from '../../../servicios/apoyos.service';

@Component({
  selector: 'app-apoyo',
  templateUrl: './apoyo.component.html'
})
export class ApoyoComponent{

  nuevo = true;
  errMsj = null;
  load = true;
  loadReq = true;
  forma = {
    idapoyo: '0',
    nombre: "",
    estado: 0
  }

  constructor(private _apoyosService: ApoyosService, private router: Router, private route: ActivatedRoute) {
    this.route.params.subscribe(parametros => {
      let idapoyo = parametros['idapoyo'];
      
      if (idapoyo > 0 ) {
        this.forma.idapoyo = idapoyo;
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
      this._apoyosService
        .agregarApoyo(this.forma)
        .subscribe(
          data => {
            this.router.navigate(['/apoyos']);
            this.load = false;
          },
          err => {
            this.errMsj = err.error.mensaje;
            console.log(err);
            this.load = false;
          }
        );
    } else {
      this._apoyosService
        .actualizarApoyo(this.forma)
        .subscribe(
          data => {
            this.router.navigate(['/apoyos']);
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
    this._apoyosService
      .getApoyo(this.forma.idapoyo)
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
