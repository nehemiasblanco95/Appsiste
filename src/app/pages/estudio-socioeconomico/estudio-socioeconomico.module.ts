import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { EstudioSocioeconomicoComponent } from './estudio-socioeconomico.component';
import { EstudioSocioeconomicoRoutes } from './estudio-socioeconomico.routing';
import { RouterModule } from '@angular/router';
import { SharedModule } from '../../shared/shared.module.ts';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { NgMultiSelectDropDownModule } from '../../../assets/js/ng-multiselect-dropdown';
import { AngularDateTimePickerModule } from "../../../assets/js/angular2-datetimepicker";

@NgModule({
  imports: [
    CommonModule,
    SharedModule,
    FormsModule,
    ReactiveFormsModule,
    NgbModule,
    RouterModule.forChild(EstudioSocioeconomicoRoutes),
    NgMultiSelectDropDownModule.forRoot(),
    AngularDateTimePickerModule
  ],
  declarations: [
    EstudioSocioeconomicoComponent
  ]
})
export class EstudioSocioeconomicoModule { }
