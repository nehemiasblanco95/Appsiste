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
        // console.log(route);
        const token = this.auth.getToken();
        // decode the token to get its payload
        const tokenDecoded = this.jwtHelper.decodeToken(token);
        const rolService = tokenDecoded.data;
        let validRole: boolean;

        switch(route.routeConfig.path){
            case 'usuarios': validRole = rolService.config;
            break;
            case 'aulas': validRole = rolService.catalogos;
            break;
            case 'carreras': validRole = rolService.catalogos;
            break;
            case 'clases': validRole = rolService.catalogos;
            break;
            case 'maestros': validRole = rolService.catalogos;
            break;
            case 'materias': validRole = rolService.catalogos;
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