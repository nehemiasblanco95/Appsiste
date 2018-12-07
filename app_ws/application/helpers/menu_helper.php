<?php
if (!defined('BASEPATH')) {exit('No direct script access allowed');}

function asignarMenu($idusuario_tipo)
{
    $menu = array(
        ['path' => '/starter', 'title' => 'Inicio', 'icon' => 'mdi mdi-home', 'class' => '', 'label' => '', 'labelClass' => '', 'extralink' => false, 'submenu' => []]
    );

    $usuarios = array(
        'path' => '/usuarios', 'title' => 'Usuarios', 'icon' => 'mdi mdi-pencil-circle', 'class' => '', 'label' => '', 'labelClass' => '', 'extralink' => false, 'submenu' => []
    );

    $catalogos = array(
        'path' => '', 'title' => 'Catalogos', 'icon' => 'mdi mdi-settings', 'class' => 'has-arrow', 'label' => '', 'labelClass' => '', 'extralink' => false,
        'submenu' => [
            ['path' => '/aulas', 'title' => 'Maestros', 'icon' => 'fa fa-bank', 'class' => '', 'label' => '', 'labelClass' => '', 'extralink' => false, 'submenu' => []],
            ['path' => '/carreras', 'title' => 'Carreras', 'icon' => 'fa fa-bank', 'class' => '', 'label' => '', 'labelClass' => '', 'extralink' => false, 'submenu' => []],
            ['path' => '/clases', 'title' => 'Aulas', 'icon' => 'fa fa-bank', 'class' => '', 'label' => '', 'labelClass' => '', 'extralink' => false, 'submenu' => []],
            ['path' => '/maestros', 'title' => 'Maestros', 'icon' => 'fa fa-bank', 'class' => '', 'label' => '', 'labelClass' => '', 'extralink' => false, 'submenu' => []],
            ['path' => '/materias', 'title' => 'Materias', 'icon' => 'fa fa-bank', 'class' => '', 'label' => '', 'labelClass' => '', 'extralink' => false, 'submenu' => []],
        ]
    );

    $config = array(
        'path' => '', 'title' => 'Configuración', 'icon' => 'mdi mdi-settings', 'class' => 'has-arrow', 'label' => '', 'labelClass' => '', 'extralink' => false,
        'submenu' => [
            [ 'path' => '/usuarios', 'title' => 'Usuarios', 'icon' => 'mdi mdi-pencil-circle', 'class' => '', 'label' => '', 'labelClass' => '', 'extralink' => false, 'submenu' => []]
        ]
    );

    switch ($idusuario_tipo) {

        case '1':
            array_push($menu, $catalogos, $config);
            break;
        case '2':
            array_push($menu, $catalogos);
            break;

        default:
            array_push($menu, $catalogos);
            break;

    }

    return $menu;
}
