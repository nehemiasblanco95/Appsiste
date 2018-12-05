import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { SharedModule } from '../../shared/shared.module.ts';
import { ApoyosRoutes } from './apoyos.routing';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';

//Componentes
import { ApoyosComponent } from './apoyos.component';
import { ApoyoComponent } from './apoyo/apoyo.component';




@NgModule({
  imports: [
    CommonModule,
    SharedModule,
    RouterModule.forChild(ApoyosRoutes),
    NgbModule,
    FormsModule,
    ReactiveFormsModule
  ],
  declarations: [ApoyosComponent, ApoyoComponent]
})
export class ApoyosModule { }
