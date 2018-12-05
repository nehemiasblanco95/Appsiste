import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SharedModule } from '../../shared/shared.module.ts';
import { RouterModule } from '@angular/router';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

import { DiscapacidadesComponent } from './discapacidades.component';
import { DiscapacidadComponent } from './discapacidad/discapacidad.component';
import { DiscapacidadesRoutes } from '../discapacidades/discapacidades.routing';

@NgModule({
  imports: [
    CommonModule,
    SharedModule,
    RouterModule.forChild(DiscapacidadesRoutes),
    NgbModule,
    FormsModule,
    ReactiveFormsModule
  ],
  declarations: [DiscapacidadesComponent, DiscapacidadComponent]
})
export class DiscapacidadesModule { }
