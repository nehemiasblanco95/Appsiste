import { Injectable } from '@angular/core';
import { Router, CanActivate, ActivatedRouteSnapshot } from '@angular/router';
import { AuthService } from '../auth/auth.service';
import { JwtHelper } from 'angular2-jwt';
import { Solicitudes } from '../../modelos/solicitudes.model';
@Injectable()
export class RoleGuardService implements CanActivate {
    jwtHelper: JwtHelper = new JwtHelper();
    constructor(public auth: AuthService, public router: Router) { }
    canActivate(route: ActivatedRouteSnapshot): boolean {
        const expectedRole = route.data.expectedRole;
        // console.log(route);
        const token = this.auth.getToken();
        // decode the token to get its payload
        const tokenDecoded = this.jwtHelper.decodeToken(token);
        const rolService = tokenDecoded.data;
        let validRole: boolean;

        switch(route.routeConfig.path){
            case 'seguimiento': validRole = rolService.seguimiento;
            break;
            case 'catalogos': validRole = rolService.catalogos;
            break;
            case 'reportes': validRole = rolService.reportes;
            break;
            case 'usuarios': validRole = true;
            break;
            case 'roles': validRole = rolService.config;
            break;
            case 'agregar': validRole = rolService.reg_solicitud;
            break;
            case 'editar/:idsolicitud': validRole = rolService.edi_solicitud;
            break;
            default: validRole = true;
            break
        }

        if (!this.auth.isAuthenticated() || !validRole) {
            this.router.navigate(['/starter']);
            return false;
        }
        return true;
    }
}