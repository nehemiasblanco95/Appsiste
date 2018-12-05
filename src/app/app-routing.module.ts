import { NgModule, Component } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';

import { FullComponent } from './layouts/full/full.component';
import { LoginComponent } from './authentication/login/login.component';
import { NotFoundComponent } from './authentication/404/not-found.component';
import { LoginGuard, RoleGuardService as RoleGuard } from './servicios/servicio.index';



export const Approutes: Routes = [
    {
        path: '',
        component: FullComponent,
        children: [
            { path: '', redirectTo: '/login', pathMatch: 'full' },
            {
                path: 'starter',
                canActivate: [LoginGuard],
                loadChildren: './pages/starter/starter.module#StarterModule'
            },
            {
                path: 'usuarios',
                canActivate: [RoleGuard],
                loadChildren: './pages/usuarios/usuarios.module#UsuariosModule',
                data: {
                    usuarios: ['3', '2', '7']
                }
            },
            {
                path: 'colonias',
                canActivate: [RoleGuard],
                loadChildren: './pages/colonias/colonias.module#ColoniasModule',
                data: {
                    expectedRole: ['3', '2', '7']
                }
            },
            {
                path: 'esocioeconomico',
                canActivate: [RoleGuard],
                loadChildren: './pages/estudio-socioeconomico/estudio-socioeconomico.module#EstudioSocioeconomicoModule',
                data: {
                    expectedRole: ['3', '2', '7']
                }
            },
            {
                path: 'apoyos',
                canActivate: [RoleGuard],
                loadChildren: './pages/apoyos/apoyos.module#ApoyosModule',
                data: {
                    expectedRole: ['3', '2', '7']
                }
            },
            {
                path: 'areas',
                canActivate: [RoleGuard],
                loadChildren: './pages/areas/areas.module#AreasModule',
                data: {
                    expectedRole: ['3', '2', '7']
                }
            },
            {
                path: 'discapacidades',
                canActivate: [RoleGuard],
                loadChildren: './pages/discapacidades/discapacidades.module#DiscapacidadesModule',
                data: {
                    expectedRole: ['3', '2', '7']
                }
            }
        ]
    },
    {
        path: 'login',
        component: LoginComponent
    },
    {
        path: '404',
        component: NotFoundComponent
    },
    {
        path: '**',
        redirectTo: '/404'
    }];

