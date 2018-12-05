<?php
defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH . '/libraries/REST_Controller.php';
include APPPATH . '/third_party/jwt/JWT.php';
include APPPATH . '/third_party/jwt/BeforeValidException.php';
include APPPATH . '/third_party/jwt/ExpiredException.php';
include APPPATH . '/third_party/jwt/SignatureInvalidException.php';

use Firebase\JWT\JWT;

class Beneficiarios extends REST_Controller
{

    public function __construct()
    {
        parent::__construct();
        // Se agregar la conexion a la base de datos a toda la clase
        $this->load->database();
        // header('Content-Type: text/html; charset=UTF-8');

    }

    public function validartkn_post()
    {
        $headerToken = $this->input->get_request_header('Authorization', true);
        $key = TKN_DF;
        $token = $this->post('token');
        try {
            $decode = JWT::decode($token, $key, array('HS256'));
            $respuesta = array(
                'err' => false,
                'token' => $decode,
                'headertoken' => $headerToken,
            );
        } catch (Exception $e) {
            $respuesta = array(
                'err' => true,
                'mensaje' => $e->getMessage(),
                'headertoken' => $headertoken,
            );
        }
        $this->response($respuesta);
    }

    public function validarJWT($tkn)
    {
        try {
            $key = TKN_DF;
            $decode = JWT::decode($tkn, $key, array('HS256'));
            return true;

        } catch (Exception $e) {
            return false;
        }
    }

    public function leerToken($tkn)
    {
        $key = TKN_DF;
        try {
            $decode = JWT::decode($tkn, $key, array('HS256'));
            return $decode;
        } catch (Exception $e) {
            return false;
        }
    }

    public function usuarioToken($tkn)
    {
        try {
            $key = TKN_DF;
            $decode = JWT::decode($tkn, $key, array('HS256'));
            $idusu = $decode->idusuario;
            return $idusu;

        } catch (Exception $e) {
            return false;
        }
    }

    public function login_post()
    {
        $time = time();
        $key = TKN_DF;
        $correo = $this->post('correo');
        $password = $this->post('password');

        $where = array('correo' => $correo, 'estado' => 1);
        $this->db->select('idusuario, idrol, nombre, password, correo');
        $query = $this->db->get_where('usuarios', $where, 1);

        if ($query && $query->num_rows() >= 1) {

            $password_payload = $query->row()->password;

            if (password_verify($password, $password_payload)) {
                $this->load->helper('menu');
                $token = array(
                    'iat' => $time, // Tiempo que inició el token
                    'exp' => $time + (60 * 480), // Tiempo que expirará el token (+1 hora)
                    'data' => [ // información del usuario
                        "idusuario" => $query->row()->idusuario,
                        "nombre" => $query->row()->nombre,
                        "correo" => $query->row()->correo,
                        "role" => $query->row()->idrol,
                    ],
                    'menu' => asignarMenu($query->row()->idrol),
                );

                $jwt = JWT::encode($token, $key);

                $respuesta = array(
                    'token' => $jwt,
                );
                $status = 200;

            } else {

                $respuesta = array(
                    'mensaje' => 'Credenciales incorrectas',
                );
                $status = 401;

            }

        } else {
            $respuesta = array(
                'mensaje' => 'Acceso no autorizado',
                'error' => 'Datos incorrectos o su cuenta a sido dada de baja.',
                $this->db->last_query(),
            );
            $status = 401;
        }
        $this->response($respuesta, $status);
    }

    public function estudiosp_post()
    {
        $headerToken = apache_request_headers()['Authorization'];

        if ($this->validarJWT($headerToken)) {
            $this->load->helper('paginacion');
            $pagina = $this->post('pagina');
            $por_pagina = $this->post('por_pagina');
            $filtros = $this->post('filtros');
            $filtros = (array) $filtros;

            $campos = array('folio', 'solicitante', 'idarea', 'area');
            $respuesta = paginar_todo('view_estudios_paginado', $pagina, $por_pagina, $campos, $filtros);
            $status = 200;
        } else {
            $respuesta = array(
                'mensaje' => 'Acceso no autorizado',
            );
            $status = 401;
        }
        $this->response($respuesta, $status);
    }

    public function apoyosp_post()
    {
        $headerToken = apache_request_headers()['Authorization'];

        if ($this->validarJWT($headerToken)) {
            $this->load->helper('paginacion');
            $pagina = $this->post('pagina');
            $por_pagina = $this->post('por_pagina');
            $filtros = $this->post('filtros');
            $filtros = (array) $filtros;
            $campos = array('idapoyo', 'nombre', 'estado');
            $respuesta = paginar_todo('apoyos', $pagina, $por_pagina, $campos, $filtros);
            $status = 200;
        } else {
            $respuesta = array(
                'mensaje' => 'Acceso no autorizado',
            );
            $status = 401;
        }
        $this->response($respuesta, $status);
    }

    public function apoyo_get()
    {
        $headerToken = apache_request_headers()['Authorization'];

        if ($this->validarJWT($headerToken)) {
            $idapoyo = $this->uri->segment(3);
            $where = array('idapoyo' => $idapoyo);
            $this->db->select('idapoyo, nombre, estado');
            $query = $this->db->get_where('apoyos', $where, 1);

            if ($query && $query->num_rows() >= 1) {
                $respuesta = array(
                    'mensaje' => 'Registro cargado correctamente',
                    'registro' => $query->row(),
                );
                $status = 200;
            } else {
                $respuesta = array(
                    'mensaje' => 'Error interno',
                    'query' => $this->db->last_query(),
                );
                $status = 500;
            }
        } else {
            $respuesta = array(
                'mensaje' => 'Acceso no autorizado',
            );
            $status = 401;
        }
        $this->response($respuesta, $status);
    }

    public function apoyos_get()
    {
        $headerToken = apache_request_headers()['Authorization'];

        if ($this->validarJWT($headerToken)) {
            $where = array('estado' => 1);
            $query = $this->db->get_where('apoyos', $where);

            if ($query && $query->num_rows() >= 1) {
                $respuesta = array(
                    'mensaje' => 'Registro cargado correctamente',
                    'registro' => $query->result(),
                );
                $status = 200;
            } else {
                $respuesta = array(
                    'mensaje' => 'Error interno',
                    'query' => $this->db->last_query(),
                );
                $status = 500;
            }
        } else {
            $respuesta = array(
                'mensaje' => 'Acceso no autorizado',
            );
            $status = 401;
        }
        $this->response($respuesta, $status);
    }

    public function apoyo_put()
    {
        $headerToken = apache_request_headers()['Authorization'];

        if ($this->validarJWT($headerToken)) {
            $idapoyo = $this->put('idapoyo');

            if (isset($idapoyo)) {
                $idapoyo = $this->put('idapoyo');
                $nombre = $this->put('nombre');
                $estado = $this->put('estado');

                $data_limpia = array(
                    'idapoyo' => $idapoyo,
                    'nombre' => $nombre,
                    'estado' => $estado,
                );
                $update = $this->db->set($data_limpia)->where('idapoyo', $idapoyo)->update('apoyos');
                if ($update) {
                    $respuesta = array(
                        'mensaje' => 'Actualizacion correcta',
                    );
                    $status = 200;
                } else {
                    $respuesta = array(
                        'mensaje' => 'Error en actualizacion.',
                    );
                    $status = 409;
                }
            } else {
                // invalido
                $respuesta = array(
                    'mensaje' => 'Error interno',
                );
                $status = 500;
            }

        } else {
            $respuesta = array(
                'mensaje' => 'Acceso no autorizado',
            );
            $status = 401;
        }
        $this->response($respuesta, $status);
    }

    public function apoyo_post()
    {
        $headerToken = apache_request_headers()['Authorization'];

        if ($this->validarJWT($headerToken)) {

            $nombre = $this->post('nombre');
            $estado = $this->post('estado');

            $data_limpia = array(
                'nombre' => $nombre,
                'estado' => $estado,
            );

            $insert = $this->db->insert('apoyos', $data_limpia);

            if ($insert) {
                $respuesta = array(
                    'mensaje' => 'Actualizacion correcta',
                );
                $status = 200;
            } else {
                $respuesta = array(
                    'mensaje' => 'Error en actualizacion.',
                );
                $status = 409;
            }

        } else {
            $respuesta = array(
                'mensaje' => 'Acceso no autorizado',
            );
            $status = 401;
        }
        $this->response($respuesta, $status);
    }

    public function estudio_post()
    {

        $respuesta = array(
            'mensaje' => $this->post(),
        );
        $status = 200;

        $this->response($respuesta, $status);
    }

    public function areasp_post()
    {
        $headerToken = apache_request_headers()['Authorization'];

        if ($this->validarJWT($headerToken)) {
            $this->load->helper('paginacion');
            $pagina = $this->post('pagina');
            $por_pagina = $this->post('por_pagina');
            $filtros = $this->post('filtros');
            $filtros = (array) $filtros;
            $campos = array('idarea', 'nombre', 'estado');
            $respuesta = paginar_todo('areas', $pagina, $por_pagina, $campos, $filtros);
            $status = 200;
        } else {
            $respuesta = array(
                'mensaje' => 'Acceso no autorizado',
            );
            $status = 401;
        }
        $this->response($respuesta, $status);
    }

    public function area_get()
    {
        $headerToken = apache_request_headers()['Authorization'];

        if ($this->validarJWT($headerToken)) {
            $idarea = $this->uri->segment(3);
            $where = array('idarea' => $idarea);
            $this->db->select('idarea, nombre, estado');
            $query = $this->db->get_where('areas', $where, 1);

            if ($query && $query->num_rows() >= 1) {
                $respuesta = array(
                    'mensaje' => 'Registro cargado correctamente',
                    'registro' => $query->row(),
                );
                $status = 200;
            } else {
                $respuesta = array(
                    'mensaje' => 'Error interno',
                    'query' => $this->db->last_query(),
                );
                $status = 500;
            }
        } else {
            $respuesta = array(
                'mensaje' => 'Acceso no autorizado',
            );
            $status = 401;
        }
        $this->response($respuesta, $status);
    }

    public function area_put()
    {
        $headerToken = apache_request_headers()['Authorization'];

        if ($this->validarJWT($headerToken)) {
            $idarea = $this->put('idarea');

            if (isset($idarea)) {
                $idarea = $this->put('idarea');
                $nombre = $this->put('nombre');
                $estado = $this->put('estado');

                $data_limpia = array(
                    'idarea' => $idarea,
                    'nombre' => $nombre,
                    'estado' => $estado,
                );
                $update = $this->db->set($data_limpia)->where('idarea', $idarea)->update('areas');
                if ($update) {
                    $respuesta = array(
                        'mensaje' => 'Actualizacion correcta',
                    );
                    $status = 200;
                } else {
                    $respuesta = array(
                        'mensaje' => 'Error en actualizacion.',
                    );
                    $status = 409;
                }
            } else {
                // invalido
                $respuesta = array(
                    'mensaje' => 'Error interno',
                );
                $status = 500;
            }

        } else {
            $respuesta = array(
                'mensaje' => 'Acceso no autorizado',
            );
            $status = 401;
        }
        $this->response($respuesta, $status);
    }

    public function area_post()
    {
        $headerToken = apache_request_headers()['Authorization'];

        if ($this->validarJWT($headerToken)) {

            $nombre = $this->post('nombre');
            $estado = $this->post('estado');

            $data_limpia = array(
                'nombre' => $nombre,
                'estado' => $estado,
            );

            $insert = $this->db->insert('areas', $data_limpia);

            if ($insert) {
                $respuesta = array(
                    'mensaje' => 'Actualizacion correcta',
                );
                $status = 200;
            } else {
                $respuesta = array(
                    'mensaje' => 'Error en actualizacion.',
                );
                $status = 409;
            }

        } else {
            $respuesta = array(
                'mensaje' => 'Acceso no autorizado',
            );
            $status = 401;
        }
        $this->response($respuesta, $status);
    }

    public function discapacidadesp_post()
    {
        $headerToken = apache_request_headers()['Authorization'];

        if ($this->validarJWT($headerToken)) {
            $this->load->helper('paginacion');
            $pagina = $this->post('pagina');
            $por_pagina = $this->post('por_pagina');
            $filtros = $this->post('filtros');
            $filtros = (array) $filtros;
            $campos = array('iddiscapacidad', 'nombre', 'estado');
            $respuesta = paginar_todo('discapacidades', $pagina, $por_pagina, $campos, $filtros);
            $status = 200;
        } else {
            $respuesta = array(
                'mensaje' => 'Acceso no autorizado',
            );
            $status = 401;
        }
        $this->response($respuesta, $status);
    }

    public function discapacidad_get()
    {
        $headerToken = apache_request_headers()['Authorization'];

        if ($this->validarJWT($headerToken)) {
            $iddiscapacidad = $this->uri->segment(3);
            $where = array('iddiscapacidad' => $iddiscapacidad);
            $this->db->select('iddiscapacidad, nombre, estado');
            $query = $this->db->get_where('discapacidades', $where, 1);

            if ($query && $query->num_rows() >= 1) {
                $respuesta = array(
                    'mensaje' => 'Registro cargado correctamente',
                    'registro' => $query->row(),
                );
                $status = 200;
            } else {
                $respuesta = array(
                    'mensaje' => 'Error interno',
                    'query' => $this->db->last_query(),
                );
                $status = 500;
            }
        } else {
            $respuesta = array(
                'mensaje' => 'Acceso no autorizado',
            );
            $status = 401;
        }
        $this->response($respuesta, $status);
    }

    public function discapacidad_put()
    {
        $headerToken = apache_request_headers()['Authorization'];

        if ($this->validarJWT($headerToken)) {
            $iddiscapacidad = $this->put('iddiscapacidad');

            if (isset($iddiscapacidad)) {
                $iddiscapacidad = $this->put('iddiscapacidad');
                $nombre = $this->put('nombre');
                $estado = $this->put('estado');

                $data_limpia = array(
                    'iddiscapacidad' => $iddiscapacidad,
                    'nombre' => $nombre,
                    'estado' => $estado,
                );
                $update = $this->db->set($data_limpia)->where('iddiscapacidad', $iddiscapacidad)->update('discapacidades');
                if ($update) {
                    $respuesta = array(
                        'mensaje' => 'Actualizacion correcta',
                    );
                    $status = 200;
                } else {
                    $respuesta = array(
                        'mensaje' => 'Error en actualizacion.',
                    );
                    $status = 409;
                }
            } else {
                // invalido
                $respuesta = array(
                    'mensaje' => 'Error interno',
                );
                $status = 500;
            }

        } else {
            $respuesta = array(
                'mensaje' => 'Acceso no autorizado',
            );
            $status = 401;
        }
        $this->response($respuesta, $status);
    }

    public function discapacidad_post()
    {
        $headerToken = apache_request_headers()['Authorization'];

        if ($this->validarJWT($headerToken)) {

            $nombre = $this->post('nombre');
            $estado = $this->post('estado');

            $data_limpia = array(
                'nombre' => $nombre,
                'estado' => $estado,
            );

            $insert = $this->db->insert('discapacidades', $data_limpia);

            if ($insert) {
                $respuesta = array(
                    'mensaje' => 'Actualizacion correcta',
                );
                $status = 200;
            } else {
                $respuesta = array(
                    'mensaje' => 'Error en actualizacion.',
                );
                $status = 409;
            }

        } else {
            $respuesta = array(
                'mensaje' => 'Acceso no autorizado',
            );
            $status = 401;
        }
        $this->response($respuesta, $status);
    }

    public function usuariosp_post()
    {
        $headerToken = apache_request_headers()['Authorization'];

        if ($this->validarJWT($headerToken)) {
            $this->load->helper('paginacion');
            $pagina = $this->post('pagina');
            $por_pagina = $this->post('por_pagina');
            $filtros = $this->post('filtros');
            $filtros = (array) $filtros;
            $campos = array('*');
            $respuesta = paginar_todo('view_usuarios_paginado', $pagina, $por_pagina, $campos, $filtros);
            $status = 200;
        } else {
            $respuesta = array(
                'mensaje' => 'Acceso no autorizado',
            );
            $status = 401;
        }
        $this->response($respuesta, $status);
    }

    public function usuario_get()
    {
        $headerToken = apache_request_headers()['Authorization'];

        if ($this->validarJWT($headerToken)) {
            $idusuario = $this->uri->segment(3);
            $where = array('idusuario' => $idusuario);
            $this->db->select('idusuario, nombre, estado, idrol, correo');
            $query = $this->db->get_where('usuarios', $where, 1);

            if ($query && $query->num_rows() >= 1) {
                $respuesta = array(
                    'mensaje' => 'Registro cargado correctamente',
                    'registro' => $query->row(),
                );
                $status = 200;
            } else {
                $respuesta = array(
                    'mensaje' => 'Error interno',
                    'query' => $this->db->last_query(),
                );
                $status = 500;
            }
        } else {
            $respuesta = array(
                'mensaje' => 'Acceso no autorizado',
            );
            $status = 401;
        }
        $this->response($respuesta, $status);
    }

    public function roles_get()
    {
        $headerToken = apache_request_headers()['Authorization'];

        if ($this->validarJWT($headerToken)) {
            $where = array('estado' => 1);
            $query = $this->db->get_where('roles', $where);

            if ($query && $query->num_rows() >= 1) {
                $respuesta = array(
                    'mensaje' => 'Registro cargado correctamente',
                    'registros' => $query->result(),
                );
                $status = 200;
            } else {
                $respuesta = array(
                    'mensaje' => 'Error interno',
                    'error' => $this->db->error(),
                );
                $status = 500;
            }
        } else {
            $respuesta = array(
                'mensaje' => 'Acceso no autorizado',
            );
            $status = 401;
        }
        $this->response($respuesta, $status);
    }

    public function usuario_put()
    {
        $headerToken = apache_request_headers()['Authorization'];

        if ($this->validarJWT($headerToken)) {
            $idusuario = $this->put('idusuario');

            if (isset($idusuario)) {
                $idusuario = $this->put('idusuario');
                $nombre = $this->put('nombre');
                $correo = $this->put('correo');
                $idrol = $this->put('idrol');
                $password = $this->put('password');
                $estado = $this->put('estado');

                $data_limpia = array(
                    'idusuario' => $idusuario,
                    'nombre' => $nombre,
                    'correo' => $correo,
                    'idrol' => $idrol,
                    'estado' => $estado,
                );

                if (!empty($password)) {
                    $data_limpia["password"] = password_hash($password, PASSWORD_BCRYPT);
                }

                $update = $this->db->set($data_limpia)->where('idusuario', $idusuario)->update('usuarios');

                if ($update) {
                    $respuesta = array(
                        'mensaje' => 'Actualizacion correcta',
                    );
                    $status = 200;
                } else {
                    $respuesta = array(
                        'mensaje' => 'Error en actualizacion.',
                    );
                    $status = 409;
                }
            } else {
                // invalido
                $respuesta = array(
                    'mensaje' => 'Error interno',
                );
                $status = 500;
            }

        } else {
            $respuesta = array(
                'mensaje' => 'Acceso no autorizado',
            );
            $status = 401;
        }
        $this->response($respuesta, $status);
    }

    public function usuario_post()
    {
        $headerToken = apache_request_headers()['Authorization'];

        if ($this->validarJWT($headerToken)) {

            $nombre = $this->post('nombre');
            $estado = $this->post('estado');
            $correo = $this->post('correo');
            $idrol = $this->post('idrol');
            $password = password_hash($password, PASSWORD_BCRYPT);

            $data_limpia = array(
                'nombre' => $nombre,
                'estado' => $estado,
                'correo' => $correo,
                'idrol' => $idrol,
                'password' => $password,
            );

            $insert = $this->db->insert('usuarios', $data_limpia);

            if ($insert) {
                $respuesta = array(
                    'mensaje' => 'Actualizacion correcta',
                );
                $status = 200;
            } else {
                $respuesta = array(
                    'mensaje' => 'Error en insercion.',
                    'error' => $this->db->error(),
                );
                $status = 409;
            }

        } else {
            $respuesta = array(
                'mensaje' => 'Acceso no autorizado',
            );
            $status = 401;
        }
        $this->response($respuesta, $status);
    }

}
