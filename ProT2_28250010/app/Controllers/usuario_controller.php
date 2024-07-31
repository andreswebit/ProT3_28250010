<?php
namespace App\Controllers;
Use App\Models\usuarios_Model;
use CodeIgniter\Controller;

class usuario_controller extends Controller{

    public function __construct(){
        helper(['form', 'url']);
    }

    public function create() {
        $dato['titulo'] = 'Registro';
        echo view('front/head_view', $dato);
        echo view('front/navbar_view');
        echo view('Back/usuario/registro');
        echo view('front/footer_view');
    }

    public function formValidation() {
        // Actualización de la validación de la contraseña
        $input = $this->validate([
            'nombre' => 'required|min_length[3]',
            'apellido' => 'required|min_length[3]|max_length[25]',
            'usuario' => 'required|min_length[3]',
            'email' => 'required|min_length[4]|max_length[100]|valid_email|is_unique[usuarios.email]',
            'pass' => 'required|min_length[8]|max_length[20]|regex_match[/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{8,20}$/]'
        ]);

        if (!$input) {
            // La validación falló
            $data['titulo'] = 'Registro';
            $data['validation'] = $this->validator; // Pasar el objeto de validación a la vista
            echo view('front/head_view', $data);
            echo view('front/navbar_view');
            echo view('Back/usuario/registro', $data); // Pasar datos a la vista de registro
            echo view('front/footer_view');
        } else {
            $formModel = new usuarios_Model();
            $formModel->save([
                'nombre' => $this->request->getVar('nombre'),
                'apellido' => $this->request->getVar('apellido'),
                'usuario' => $this->request->getVar('usuario'),
                'email' => $this->request->getVar('email'),
                'pass' => password_hash($this->request->getVar('pass'), PASSWORD_DEFAULT)
                //password_hash() crea un nuevo hash de contraseña usando un algoritmo de hash de único sentido.
            ]);
            // Flashdata funciona solo en redirigir la función en el controlador en la vista de carga.
            session()->setFlashdata('success', 'Usuario registrado con éxito');
            return $this->response->redirect('/ProT2_28250010/login');
        }
    }
}