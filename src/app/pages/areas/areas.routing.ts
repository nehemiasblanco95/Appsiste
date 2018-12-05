import { Routes } from '@angular/router';
import { AreasComponent } from './areas.component';
import { AreaComponent } from './area/area.component';



export const AreasRoutes: Routes = [
  {
    path: '',
    component: AreasComponent
  }, {
    path: 'agregar',
    component: AreaComponent
  }, {
    path: 'editar/:idarea',
    component: AreaComponent
  }
];
