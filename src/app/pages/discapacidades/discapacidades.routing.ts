import { Routes } from '@angular/router';
import { DiscapacidadesComponent } from './discapacidades.component';
import { DiscapacidadComponent } from './discapacidad/discapacidad.component';




export const DiscapacidadesRoutes: Routes = [
  {
    path: '',
    component: DiscapacidadesComponent
  }, {
    path: 'agregar',
    component: DiscapacidadComponent
  }, {
    path: 'editar/:iddiscapacidad',
    component: DiscapacidadComponent
  }
];
