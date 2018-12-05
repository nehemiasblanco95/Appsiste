import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { AreasComponent } from './areas.component';
import { AreaComponent } from './area/area.component';
import { SharedModule } from '../../shared/shared.module.ts';
import { RouterModule } from '@angular/router';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { ReactiveFormsModule, FormsModule } from '@angular/forms';
import { AreasRoutes } from './areas.routing';

@NgModule({
  imports: [
    CommonModule,
    SharedModule,
    RouterModule.forChild(AreasRoutes),
    NgbModule,
    FormsModule,
    ReactiveFormsModule
  ],
  declarations: [AreasComponent, AreaComponent]
})
export class AreasModule { }
