<?php

function checkConnectionWithDatabasesList()
{
    global $connection;

    if ($connection) {
        echo "<h6 class='text-success'><i class='fas fa-wifi'></i> Połączono z listą baz danych</h6>";
    } else if (!$connection) {
        echo "<h6 class='text-danger'><i class='fas fa-wifi-slash'></i> Brak połączenia z listą baz danych</h6>";
    }
}

function getAllDatabasesList()
{
    global $connection;

    if(isset($_POST['PositionArrayDatabaseStatus']) && !empty($_POST['checkbox_options_database_status']))
    {

          $checkbox_options_database_status = $_POST['checkbox_options_database_status'];
          $database_status_id_in = array_filter($_POST['PositionArrayDatabaseStatus']);
          $database_status_id_in = implode(',',(array) $_POST['PositionArrayDatabaseStatus']);

         $query_update_database_status = "UPDATE databases_list SET database_status = '{$checkbox_options_database_status}' WHERE database_id IN ($database_status_id_in)"; 

       ?>

      <script>
          $(document).ready(function () {
              Swal.fire({
                  icon: 'success',
                  title: 'Operacja zakończona pomyślnie',
                  text: 'Status bazy zmieniono na "<?php echo $checkbox_options_database_status ?>".',
                  confirmButtonText: 'Przejdź do panelu głównego',
                  confirmButtonColor: 'rgb(249,164,81)',
              })
              .then((result) => {
                        window.location.href = 'dashboard.php';
                      })
          })
      </script>
    
      <?php

          mysqli_query($connection, $query_update_database_status);
      }

      ?>
              <div class="d-flex justify-content-center mb-3">
                  
              <div class="col-4 mt-2">
              </div>
                <div class="col-3 mt-2">
                  <select name="checkbox_options_database_status" class="form-control">
                    <option value="" selected>Wybierz status..</option>
                    <option value="Aktywny">Aktywny</option>
                    <option value="Nieaktywny">Nieaktywny</option>
                  </select>
                </div>
                <div class="col mt-2">
                  <button type="submit" class="btn bg-gradient-warning" name="change_database_status">Zmień status bazy</button>
                </div>
              </div>
            </div>

    <?php

    $databases_list_query = "SELECT * FROM databases_list";
    $select_databases_list_query = mysqli_query($connection, $databases_list_query);

    while($row = mysqli_fetch_assoc($select_databases_list_query))
    {
      $database_id = $row['database_id'];
      $database_name = $row['database_name'];
      $database_user = $row['database_user'];
      $database_password = $row['database_password'];
      $database_host = $row['database_host'];
      $database_status = $row['database_status'];
    
      ?>
    <tr>
      <td class='align-middle text-center'>
        <div class="form-check d-flex justify-content-center">
          <input class="form-check-input" type="checkbox" name="PositionArrayDatabaseStatus[]" value="<?php echo $database_id;?>">
        </div>
      </td>
      <td class='align-middle text-center'>
        <span class='text-md font-weight-bold mb-0'><?php echo $database_name; ?></span>
      </td>
      <td class='align-middle text-center'>
        <span class='text-md font-weight-bold mb-0'><?php echo $database_user; ?></span>
      </td>
      <td class='align-middle text-center'>
        <span class='text-md font-weight-bold mb-0'><?php echo $database_password; ?></span>
      </td>
      <td class='align-middle text-center'>
        <span class='text-md font-weight-bold mb-0'><?php echo $database_host; ?></span>
      </td>
      <td class='align-middle text-center'>
      <?php if($database_status == 'Aktywny') { ?>
      <span class='text-md font-weight-bold mb-0 text-success'><i class="fas fa-check-circle"></i> <?php echo $database_status; ?></span>
      <?php }else if($database_status == 'Nieaktywny') { ?>
      <span class='text-md font-weight-bold mb-0 text-danger'><i class="fas fa-times-circle"></i> <?php echo $database_status; ?></span>
      <?php } ?>
      </td>
      <td class='align-middle text-center'>
        <span><a href='edit_database_from_list.php?database_id=<?php echo $database_id ?>' class='text-md font-weight-bold mb-0 p-1'><i class='fas fa-marker' style='color:#f9a451'></i></span>
        <span><a href='dashboard.php?delete_database=<?php echo $database_id ?>' class='text-md font-weight-bold mb-0 p-1 delete-database-from-list-alert'><i class='fas fa-trash' style='color:#6c757d'></i></a></span>
      </td>
    </tr>
    <?php
    }
}

function addDatabaseToList()
{
  
  global $connection;

  if (isset($_POST['add_database'])) {
      $database_name = $_POST['database_name'];
      $database_user = $_POST['database_user'];
      $database_password = $_POST['database_password'];
      $database_host = $_POST['database_host'];

      $query_add_database_to_list = "INSERT INTO databases_list (database_name, database_user, database_password, database_host, database_status)";
      $query_add_database_to_list .= "VALUES ('{$database_name}', '{$database_user}', '{$database_password}', '{$database_host}', 'Aktywny')";

      $add_database_to_list = mysqli_query($connection, $query_add_database_to_list);

      ?>
      <script>
          $(document).ready(function () {
              Swal.fire({
              icon: 'success',
              title: 'Operacja zakończona pomyślnie',
              text: 'Baza została dodana do listy.',
              footer: '<a href="./dashboard.php">Powrót do głównego panelu</a>',
              confirmButtonText: 'Dodaj kolejną bazę danych',
              confirmButtonColor: 'rgb(249,164,81)',
              })
          })
          </script>
      <?php
  }

}

function editDatabaseFromList()
{
  if(isset($_GET['database_id']))
  {
      $get_database_id = $_GET['database_id'];
  }

  global $connection;
  global $database_name;
  global $database_user;
  global $database_password;
  global $database_host;

  $query_edit_database_from_list = "SELECT * FROM databases_list WHERE database_id = '$get_database_id'";
  $select_edit_database_from_list = mysqli_query($connection, $query_edit_database_from_list);
  
    while($row = mysqli_fetch_assoc($select_edit_database_from_list))
    {
      $database_name = $row['database_name'];
      $database_user = $row['database_user'];
      $database_password = $row['database_password'];
      $database_host = $row['database_host'];
    }

    if(isset($_POST['edit_database'])) {
  
      $database_name = $_POST['database_name'];
      $database_user = $_POST['database_user'];
      $database_password = $_POST['database_password'];
      $database_host = $_POST['database_host'];

      $query_update_database_from_list = "UPDATE databases_list SET ";
      $query_update_database_from_list .= "database_name = '{$database_name}', ";
      $query_update_database_from_list .= "database_user = '{$database_user}', ";
      $query_update_database_from_list .= "database_password = '{$database_password}', ";
      $query_update_database_from_list .= "database_host = '{$database_host}' ";
      $query_update_database_from_list .= "WHERE database_id = {$get_database_id}";

      $update_database_from_list = mysqli_query($connection, $query_update_database_from_list);

      ?>

      <script>
        $(document).ready(function () {
              Swal.fire({
              icon: 'success',
              title: 'Operacja zakończona pomyślnie',
              text: 'Twoja baza danych została edytowana.',
              footer: '<a href="./dashboard.php">Powrót do głównego panelu</a>',
              confirmButtonText: 'Edytuj dalej bazę danych bazę danych',
              confirmButtonColor: 'rgb(249,164,81)',
              })
          })
      </script>

  <?php
  }
}

function deleteDatabaseFromList() 
{
  global $connection;

  if(isset($_GET['delete_database']))

  {
    $get_database_id = $_GET['delete_database'];
  
    $query_delete_database_from_list_member = "DELETE FROM databases_list WHERE database_id = '$get_database_id'";
    $select_delete_database_from_list_member = mysqli_query($connection, $query_delete_database_from_list_member);
  ?>
    <script>
      $('.delete-database-from-list-alert').on('click', function (e) {
          e.preventDefault();
          const href = $(this).attr('href');
          Swal.fire({
              title: 'Czy jesteś pewny?',
              text: "Zmiany, które podejmiesz będą niodwracalne",
              icon: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#5cb85c',
              cancelButtonColor: '#d33',
              confirmButtonText: 'Tak, usuń bazę z listy!',
              cancelButtonText: "Anuluj"
          }).then((result) => {
              if (result.isConfirmed) {
                  Swal.fire({
                    title: 'Zmieniono',
                    text: "Twoja baza została usunięta z listy",
                    icon: 'success',
                    confirmButtonColor: 'rgb(249,164,81)',
                  })
                      .then((result) => {
                        window.location.href = 'dashboard.php';
                      })
              }
  
          })
  
      })
  </script>

  <?php
      }
}


function getallDatabasestoBackup()
{
  global $connection;

  $databases_list_query = "SELECT * FROM databases_list WHERE database_status = 'Aktywny'";
  $select_databases_list_query = mysqli_query($connection, $databases_list_query);

  while($row = mysqli_fetch_assoc($select_databases_list_query))
  {
    $database_name = $row['database_name'];
    $database_user = $row['database_user'];
    $database_password = $row['database_password'];
    $database_host = $row['database_host'];

    $databases = ["$database_name"];
    $user = "$database_user";
    $password = "$database_password";
    $host = "$database_host";
    
    // date_default_timezone_get("Europe/Warsaw");
    
    if (!file_exists("C:/xampp/htdocs/mysql_backup_manager/backups")) {
        mkdir("C:/xampp/htdocs/mysql_backup_manager/backups");
    }
    
    foreach ($databases as $database) {
        if (!file_exists(("C:/xampp/htdocs/mysql_backup_manager/backups/$database"))) {
            mkdir("C:/xampp/htdocs/mysql_backup_manager/backups/$database");
        }
    
        $filename = $database . "_" . date("d_m_Y") . "@" . date("H_i") . uniqid("@id_", false);
        $folder = "C:/xampp/htdocs/mysql_backup_manager/backups/$database/" . $filename . ".sql";
    
        exec("C:/xampp/mysql/bin/mysqldump --user={$user} --password={$password} --host={$host} {$database} --result-file={$folder}", $return);
    }

      $date_now = date("Y-m-d H:i:s");
      // Return will return non-zero upon an error
      if (!$return) {
        $query_add_database_report = "INSERT INTO databases_operation_reports (datatabase_operation_database_name, datatabase_operation_status, datatabase_operation_date, datatabase_operation_filename)";
        $query_add_database_report .= "VALUES ('{$database_name}', 'Powodzenie operacji', '{$date_now}', '{$filename}')";  
        ?>Kopia baz danych <b class="text-success"><?php echo $database_name ?></b> została utworzona pomyślnie.</i><br><?php
      } else {
        $query_add_database_report = "INSERT INTO databases_operation_reports (datatabase_operation_database_name, datatabase_operation_status, datatabase_operation_date, datatabase_operation_filename)";
        $query_add_database_report .= "VALUES ('{$database_name}', 'Niepowodzenie operacji', '{$date_now}', '{$filename}')";  
        ?>Kopia baz danych <b class="text-danger"><?php echo $database_name ?></b> została zakończona niepowodzeniem.</i><br><?php
      }

      $add_database_report = mysqli_query($connection, $query_add_database_report);
    
  }
  

}

function getallBackupReportList()
{

  global $connection;

  $backup_list_query = "SELECT * FROM databases_operation_reports";
  $select_backup_list_query = mysqli_query($connection, $backup_list_query);

  while($row = mysqli_fetch_assoc($select_backup_list_query))
  {
    $datatabase_operation_database_name = $row['datatabase_operation_database_name'];
    $datatabase_operation_status = $row['datatabase_operation_status'];
    $datatabase_operation_date = $row['datatabase_operation_date'];
    $datatabase_operation_filename = $row['datatabase_operation_filename'];
  
  ?>
  <tr>
    <td class='align-middle text-center'>
        <span class='text-md font-weight-bold mb-0'><?php echo $datatabase_operation_database_name; ?></span>
    </td>
    <td class='align-middle text-center'>
      <?php if($datatabase_operation_status == 'Powodzenie operacji') { ?>
        <span class='text-md font-weight-bold mb-0 text-success'><i class="far fa-thumbs-up"></i> <?php echo $datatabase_operation_status; ?></span>
      <?php } else if($datatabase_operation_status == 'Niepowodzenie operacji') { ?>
        <span class='text-md font-weight-bold mb-0 text-danger'><i class="far fa-thumbs-down"></i> <?php echo $datatabase_operation_status; ?></span>
      <?php } ?>
    </td>
    <td class='align-middle text-center'>
        <span class='text-md font-weight-bold mb-0'><?php echo $datatabase_operation_date; ?></span>
    </td>
    <td class='align-middle text-center'>
    <?php if(!empty($datatabase_operation_filename)) { ?>
        <span class='text-md font-weight-bold mb-0'><?php echo $datatabase_operation_filename; ?>.sql</span>
    <?php } else { ?>
        <span class='text-md font-weight-bold mb-0 text-danger'><i class="fas fa-ban"></i> BRAK PLIKU</span>
    <?php } ?>

    </td>

  </tr>

  <?php
  }
}

function mailConfig()
{
  global $connection;
  global $mail_settings_receiver;
  global $mail_settings_additional_receiver;
  global $mail_settings_sender;
  global $mail_settings_sender_password;
  global $mail_settings_host_address;

  $mail_config_query = "SELECT * FROM mail_settings";
  $select_mail_config_query = mysqli_query($connection, $mail_config_query);

  while($row = mysqli_fetch_assoc($select_mail_config_query))
  {
    $mail_settings_receiver = $row['mail_settings_receiver'];
    $mail_settings_additional_receiver = $row['mail_settings_additional_receiver'];
    $mail_settings_sender = $row['mail_settings_sender'];
    $mail_settings_sender_password = $row['mail_settings_sender_password'];
    $mail_settings_host_address = $row['mail_settings_host_address'];
  }

}

function checkExistingMailConfig()
{
  global $connection;

  $check_existing_mail_config_query = "SELECT * FROM mail_settings";
  $select_check_existing_mail_config_query = mysqli_query($connection, $check_existing_mail_config_query);
  $count_existing_mail_config_query = mysqli_num_rows($select_check_existing_mail_config_query);

  $count_existing_mail_config_query;
  if($count_existing_mail_config_query == 0 )
  {
    ?><a type="button" href="add_mail_configuration.php" class="btn bg-gradient-success fs-6"><i class="fas fa-plus-circle fa-lg"></i> Dodaj konfigurację</a><?php
  }


}

function addMailConfig()
{

  global $connection;

  if (isset($_POST['add_mail_config'])) {

      $mail_settings_receiver = $_POST['mail_settings_receiver'];
      $mail_settings_additional_receiver = $_POST['mail_settings_additional_receiver'];
      $mail_settings_sender = $_POST['mail_settings_sender'];
      $mail_settings_sender_password = $_POST['mail_settings_sender_password'];
      $mail_settings_host_address = $_POST['mail_settings_host_address'];

      $query_add_mail_settings = "INSERT INTO mail_settings (mail_settings_id , mail_settings_receiver, mail_settings_additional_receiver, mail_settings_sender, mail_settings_sender_password, mail_settings_host_address)";
      $query_add_mail_settings .= "VALUES ('1', '{$mail_settings_receiver}', '{$mail_settings_additional_receiver}', '{$mail_settings_sender}', '{$mail_settings_sender_password}', '{$mail_settings_host_address}')";

      $add_database_to_list = mysqli_query($connection, $query_add_mail_settings);

      ?>
      <script>
          $(document).ready(function () {
              Swal.fire({
              icon: 'success',
              title: 'Operacja zakończona pomyślnie',
              text: 'Twoja konfiguracja została dodana.',
              footer: '<a href="./mail_notifications.php">Powrót do konfiguracji maila</a>',
              confirmButtonText: 'OK',
              confirmButtonColor: 'rgb(249,164,81)',
              })
          })
          </script>
      <?php
  }
}

function editMailConfig()
{

  global $connection;
  global $mail_settings_receiver;
  global $mail_settings_additional_receiver;
  global $mail_settings_sender;
  global $mail_settings_sender_password;
  global $mail_settings_host_address;

  $query_edit_mail_config = "SELECT * FROM mail_settings WHERE mail_settings_id = '1'";
  $select_query_edit_mail_config = mysqli_query($connection, $query_edit_mail_config);
  
    while($row = mysqli_fetch_assoc($select_query_edit_mail_config))
    {
      $mail_settings_receiver = $row['mail_settings_receiver'];
      $mail_settings_additional_receiver = $row['mail_settings_additional_receiver'];
      $mail_settings_sender = $row['mail_settings_sender'];
      $mail_settings_sender_password = $row['mail_settings_sender_password'];
      $mail_settings_host_address = $row['mail_settings_host_address'];
    }

    if(isset($_POST['edit_mail_config'])) {
  
      $mail_settings_receiver = $_POST['mail_settings_receiver'];
      $mail_settings_additional_receiver = $_POST['mail_settings_additional_receiver'];
      $mail_settings_sender = $_POST['mail_settings_sender'];
      $mail_settings_sender_password = $_POST['mail_settings_sender_password'];
      $mail_settings_host_address = $_POST['mail_settings_host_address'];

      $query_update_mail_config = "UPDATE mail_settings SET ";
      $query_update_mail_config .= "mail_settings_receiver = '{$mail_settings_receiver}', ";
      $query_update_mail_config .= "mail_settings_additional_receiver = '{$mail_settings_additional_receiver}', ";
      $query_update_mail_config .= "mail_settings_sender = '{$mail_settings_sender}', ";
      $query_update_mail_config .= "mail_settings_sender_password = '{$mail_settings_sender_password}', ";
      $query_update_mail_config .= "mail_settings_host_address = '{$mail_settings_host_address}' ";
      $query_update_mail_config .= "WHERE mail_settings_id = '1'";

      $update_mail_config = mysqli_query($connection, $query_update_mail_config);

      ?>

      <script>
        $(document).ready(function () {
              Swal.fire({
              icon: 'success',
              title: 'Operacja zakończona pomyślnie',
              text: 'Twoja konfiguracja została edytowana.',
              footer: '<a href="./mail_notifications.php">Powrót do konfiguracji maila</a>',
              confirmButtonText: 'OK',
              confirmButtonColor: 'rgb(249,164,81)',
              })
          })
      </script>

  <?php
  }
}

function mailNotificationOfBackupList()
{

  global $connection;
  global $today_date;
  global $yesterday;
  global $tabela;

  $today_date = date('Y-m-d');
  $yesterday = date('Y-m-d',strtotime("-1 days"));
  
  $today_backup_list_query = "SELECT * FROM databases_operation_reports WHERE datatabase_operation_date BETWEEN '$today_date 00:00:00' AND '$today_date 23:59:59' ORDER BY datatabase_operation_date DESC ";
  $select_today_backup_list_query = mysqli_query($connection, $today_backup_list_query);
  
  $tabela = "";
  
  while($row = mysqli_fetch_assoc($select_today_backup_list_query))
  {
      $datatabase_operation_database_name = $row['datatabase_operation_database_name'];
      $datatabase_operation_status = $row['datatabase_operation_status'];
      $datatabase_operation_date = $row['datatabase_operation_date'];
      $datatabase_operation_filename = $row['datatabase_operation_filename'];
  
  
      $tabela .= "
      <tr>
      <td>$datatabase_operation_database_name</td>
      <td>$datatabase_operation_status</td>
      <td>$datatabase_operation_date</td>
      <td>$datatabase_operation_filename</td>
      </tr>";
      
  }
}

?>
