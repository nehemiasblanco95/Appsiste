import { HttpClientModule } from '@angular/common/http';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';


import { LoginGuard, RoleGuardService, UsuarioService, AuthService, EstudioSocioeconomicoService, ApoyosService, AreasService, DiscapacidadesService } from './servicio.index';
import { CiacService } from './ciac.service';


@NgModule({
    imports: [
        CommonModule,
        HttpClientModule
    ],
    providers: [
        LoginGuard,
        UsuarioService,
        AuthService,
        CiacService,
        RoleGuardService, 
        EstudioSocioeconomicoService,
        ApoyosService,
        AreasService,
        DiscapacidadesService
    ],
    declarations: []
})
export class ServiceModule { }
