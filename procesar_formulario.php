<?php
// Incluir el archivo de conexión
include 'conexion.php'; // Asegúrate de que este archivo tiene la conexión correcta
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    var_dump($_POST); // Esto mostrará todos los datos enviados.
    // ...
}

// Habilitar la visualización de errores en PHP
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Verificar que se haya enviado el formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Comprobar si se recibieron todos los campos del formulario
    if (isset($_POST['nombre'], $_POST['correo'], $_POST['telefono'], $_POST['mensaje'])) {
        $nombre = $_POST['nombre'];
        $correo = $_POST['correo'];
        $telefono = $_POST['telefono'];
        $mensaje = $_POST['mensaje'];

        #echo "Datos recibidos: <br>";
        #echo "Nombre: $nombre<br>";
        #echo "Correo: $correo<br>";
        #echo "Teléfono: $telefono<br>";
        #echo "Mensaje: $mensaje<br>";

        // Insertar los datos en la base de datos
        $sql = "INSERT INTO mensajes (nombre, correo, telefono, mensaje) VALUES ('$nombre', '$correo', '$telefono', '$mensaje')";

        if ($conn->query($sql) === TRUE) {
        } else {
            echo "Error al guardar los datos: " . $conn->error;
        }
    } else {
        echo "Error: No se recibieron todos los campos del formulario.";
    }
} else {
    echo "El formulario no fue enviado correctamente.";
}


require 'phpmailer/Exception.php';
require 'phpmailer/PHPMailer.php';
require 'phpmailer/SMTP.php';

// Enviar el correo electrónico
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

$mail = new PHPMailer(true);
try {
    // Configuración del servidor
    $mail->SMTPDebug = 0; 
    $mail->isSMTP();      
    $mail->Host = 'smtp.gmail.com';
    $mail->SMTPAuth = true;
    $mail->Username = 'edjosmedval@gmail.com'; 
    $mail->Password = 'dcsbwtwtcnzufzps';      
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
    $mail->Port = 465;

	$mail->setFrom('edjosmedval@gmail.com', 'Soporte Gamezone');
	#mail->addAddress('gomezn_miguel@hotmail.com'); 
	$mail->addAddress('ejosuemedinav23@gmail.com'); 



    // Contenido del correo
    $mail->isHTML(true); 
    $mail->Subject = 'Nuevo mensaje de contacto';
    $mail->Body    = "Nombre: $nombre<br>Correo: $correo<br>Teléfono: $telefono<br>Mensaje: $mensaje";
    $mail->AltBody = "Nombre: $nombre\nCorreo: $correo\nTeléfono: $telefono\nMensaje: $mensaje";

    // Enviar el correo
    $mail->send();
    echo "<script>alert('Correo enviado al soporte correctamente');
    window.location.href = 'index.html'; // Redirigir a la página principal
    </script>";
} catch (Exception $e) {
    echo "Error al enviar el correo: {$mail->ErrorInfo}";
}
?>



