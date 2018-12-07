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

