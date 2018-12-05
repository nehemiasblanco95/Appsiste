import { Component } from '@angular/core';
import { NgForm } from '@angular/forms';
import { Router, ActivatedRoute } from '@angular/router';
import { AreasService } from '../../../servicios/areas.service';


@Component({
  selector: 'app-area',
  templateUrl: './area.component.html'
})
export class AreaComponent {

  nuevo = true;
  errMsj = null;
  load = true;
  loadReq = true;
  forma = {
    idarea: '0',
    nombre: "",
    estado: 0
  }

  constructor(private _areasService: AreasService, private router: Router, private route: ActivatedRoute) {
    this.route.params.subscribe(parametros => {
      let idarea = parametros['idarea'];

      if (idarea > 0) {
        this.forma.idarea = idarea;
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
      this._areasService
        .agregarArea(this.forma)
        .subscribe(
          data => {
            this.router.navigate(['/areas']);
            this.load = false;
          },
          err => {
            this.errMsj = err.error.mensaje;
            console.log(err);
            this.load = false;
          }
        );
    } else {
      this._areasService
        .actualizarArea(this.forma)
        .subscribe(
          data => {
            this.router.navigate(['/areas']);
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
    this._areasService
      .getArea(this.forma.idarea)
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
