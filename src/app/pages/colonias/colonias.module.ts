import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { JsonpModule } from '@angular/http';

import { NgbModule } from '@ng-bootstrap/ng-bootstrap';

import { ColoniasRoutes } from './colonias.routing';
import { ColoniasComponent } from './colonias.component';
import { ColoniaComponent } from './colonia/colonia.component';
import { SharedModule } from '../../shared/shared.module.ts';

@NgModule({
  imports: [
    CommonModule,
    RouterModule.forChild(ColoniasRoutes),
    FormsModule,
    ReactiveFormsModule,
    JsonpModule,
    NgbModule,
    SharedModule
  ],
  declarations: [
    ColoniasComponent,
    ColoniaComponent
  ]
})

export class ColoniasModule {}
