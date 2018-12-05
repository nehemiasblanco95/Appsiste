import { Routes } from '@angular/router';
import { ApoyosComponent } from './apoyos.component';
import { ApoyoComponent } from './apoyo/apoyo.component';


export const ApoyosRoutes: Routes = [
  {
    path: '',
    component: ApoyosComponent
  }, {
    path: 'agregar',
    component: ApoyoComponent
  }, {
    path: 'editar/:idapoyo',
    component: ApoyoComponent
  }
];
