<?php

//Dane dotyczące konfuguracji maila
mailConfig();

//Dane dotyczące raportu z kopii baz danych
mailNotificationOfBackupList();

use PHPMailer\PHPMailer\PHPMailer;

    $name = "Backup Manager";  // Name of your website or yours
    $to = "$mail_settings_receiver";  // mail of reciever

    $subject = "Raport kopi zapasowych baz MYSQL XAMPP($today_date)";

    $body = 
    "<html lang='pl'>
    <head>
        <meta charset='UTF-8'>
        <link rel='preconnect' href='https://fonts.googleapis.com'>
        <link rel='preconnect' href='https://fonts.gstatic.com' crossorigin>
        <link href='https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap' rel='stylesheet'>

        <style>
        body
        {
            text-align: center;
            font-family: 'Poppins', sans-serif;
        }
        img
        {
          padding-top: 10px;
        }      
        table, th, td 
        {
            border: 1px solid black;
            border-collapse: collapse;
            margin: 25px 0;
            font-size: 0.9em;
            min-width: 400px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
        }    
        thead tr
        {
            background-color: #009879;
            color: #ffffff;
            text-align: left;
        }     
        th, td
        {
            padding: 12px 15px;
        }

    </style>
    </head>
    
    <body>
        <img src='cid:bg'/>
        <br>
        <h1>Raport wykonanych zadań z dnia $yesterday</h1>
        <br>

        <table>
        <tr>
            <th>Nazwa bazy</th>
            <th>Status</th>
            <th>Data kopii</th>
            <th>Nazwa pliku</th>
        </tr>

       $tabela

        </table>

        <br>
        <br>
        <br>
        <a href='https://free3dicon.com/'>Free3Dicon</a>
        <br>
        <hr>
    </body>
    </html>";

    $from = $mail_settings_sender;  // you mail
    $password = $mail_settings_sender_password;  // your mail password

    // Ignore from here

    require_once "PHPMailer/PHPMailer.php";
    require_once "PHPMailer/SMTP.php";
    require_once "PHPMailer/Exception.php";
    $mail = new PHPMailer();
    $mail->CharSet = "UTF-8";

    // To Here

    //SMTP Settings
    $mail->isSMTP();
    // $mail->SMTPDebug = 3;  Keep It commented this is used for debugging                          
    $mail->Host = $mail_settings_host_address; // smtp address of your email
    $mail->SMTPAuth = true;
    $mail->Username = $from;
    $mail->Password = $password;
    $mail->Port = 587;  // port
    $mail->SMTPSecure = "tls";  // tls or ssl
    $mail->smtpConnect([
    'ssl' => [
        'verify_peer' => false,
        'verify_peer_name' => false,
        'allow_self_signed' => true
        ]
    ]);

    //Email Settings
    $mail->isHTML(true);
    $mail->setFrom($from, $name);
    $mail->addAddress($to); // enter email address whom you want to send
    $mail->Subject = ("$subject");
    $mail->Body = $body;
    $mail->AddAddress($mail_settings_additional_receiver, 'Adresat 2'); //Funkcja na dodanie kolejnych osób do adresatów maili
    $mail->addEmbeddedImage('images/report_icon.png', 'bg');
    if ($mail->send()) {
        echo "Email został wysłany!";
    } else {
        echo "Coś poszło nie tak!" . $mail->ErrorInfo;
    }

?>

