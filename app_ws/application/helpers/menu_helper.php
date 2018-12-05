<?php
if (!defined('BASEPATH')) {exit('No direct script access allowed');}

function asignarMenu($idusuario_tipo)
{
    $menu = array(
        ['path' => '/starter', 'title' => 'Inicio', 'icon' => 'mdi mdi-home', 'class' => '', 'label' => '', 'labelClass' => '', 'extralink' => false, 'submenu' => []]
    );

    $esocioeconomico = array(
        'path' => '/esocioeconomico', 'title' => 'Estudio', 'icon' => 'mdi mdi-pencil-circle', 'class' => '', 'label' => '', 'labelClass' => '', 'extralink' => false, 'submenu' => []
    );

    $config = array(
        'path' => '', 'title' => 'Configuracion', 'icon' => 'mdi mdi-settings', 'class' => 'has-arrow', 'label' => '', 'labelClass' => '', 'extralink' => false,
        'submenu' => [
            ['path' => '/usuarios', 'title' => 'Usuarios', 'icon' => 'mdi mdi-account', 'class' => '', 'label' => '', 'labelClass' => '', 'extralink' => false, 'submenu' => []],
            ['path' => '/areas', 'title' => 'Areas', 'icon' => 'fa fa-free-code-camp', 'class' => '', 'label' => '', 'labelClass' => '', 'extralink' => false, 'submenu' => []],
            ['path' => '/discapacidades', 'title' => 'Tipos de Discapacidad', 'icon' => 'fa fa-wheelchair', 'class' => '', 'label' => '', 'labelClass' => '', 'extralink' => false, 'submenu' => []],
            ['path' => '/apoyos', 'title' => 'Apoyos', 'icon' => 'fa fa-handshake-o', 'class' => '', 'label' => '', 'labelClass' => '', 'extralink' => false, 'submenu' => []],
        ]
    );

    switch ($idusuario_tipo) {

        case '1':
            array_push($menu, $esocioeconomico, $config);
            break;

        default:
            array_push($menu, $config);
            break;

    }

    return $menu;
}
