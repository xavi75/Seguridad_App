<?php 

namespace Controllers\Login;
use Mpwarfwk\Controller\BaseController;
use Mpwarfwk\Http\Request;
use Mpwarfwk\Http\Response;
use Mpwarfwk\Database\PdoDatabase;
use Mpwarfwk\Container\Container;

class Login extends BaseController{
    

    public function __construct() {
        $this->newContainer();
    }

    public function build(Request $request){

        $FORM_SUBMITTED_BY_METHOD = $request->server->getParam('REQUEST_METHOD');

        if($FORM_SUBMITTED_BY_METHOD == 'POST'){

            $database = new PdoDatabase();
			$user = $request->post->getParam('nombre');
			$password = $request->post->getParam('contraseña');
            $querySelect = $database->selectFromTable('SELECT password FROM users WHERE user = :user', array('user' => $user));
            //echo count($querySelect);
			//var_dump($querySelect[0]['password']);
			if (count($querySelect) == 1 && $querySelect[0]['password'] == $password){
				echo 'Estas dentro, ahora toca redirigir a la pagina de todolist y iniciar sesion';
				/*la sesion ya se inicia desde el request*/
				//session_start();
				$request->session->setSession('valid_user', true);
				//echo var_dump($request->session->getSession('valid_user'));
				//echo $_SESSION['valid_user'];
			}
			//$template = $this->container->get('TemplateTwig');
            //return new Response($template->render('Success/Success.tpl'));
        }
  
        $template = $this->container->get('TemplateTwig');
        return new Response($template->render('Login/Login.build.tpl'));
    }
}