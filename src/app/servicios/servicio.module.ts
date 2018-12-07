import { HttpClientModule } from '@angular/common/http';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';


import { LoginGuard, RoleGuardService, UsuarioService, AuthService} from './servicio.index';


@NgModule({
    imports: [
        CommonModule,
        HttpClientModule
    ],
    providers: [
        LoginGuard,
        UsuarioService,
        AuthService,
        RoleGuardService, 
    ],
    declarations: []
})
export class ServiceModule { }
