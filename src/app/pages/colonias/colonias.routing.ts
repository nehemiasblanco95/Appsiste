import { Routes } from '@angular/router';

import { ColoniasComponent } from './colonias.component';
import { ColoniaComponent } from './colonia/colonia.component';

export const ColoniasRoutes: Routes = [
  {
    path: '',
    component: ColoniasComponent
  }, {
    path: 'agregar',
    component: ColoniaComponent
  }, {
    path: 'editar/:Idcolonia',
    component: ColoniaComponent
  }
];
