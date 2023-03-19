
<?php

include "includes/header.php";
include "includes/functions.php";

?>

<!-- Navbar -->
<div class="row justify-content-start vw-100 mt-3">
  <div class="col-4" trigger="">
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl">
      <div class="container-fluid">
          <div class="card">
            <div class="card-body p-3">
              <div class="row">
                <div class="col-11">
                  <div class="numbers">
                    <h5 class="font-weight-bolder mb-0 mt-2">
                      Backup Manager
                    </h5>
                    <?php

                    checkConnectionWithDatabasesList();

                    ?>
                  </div>
                </div>
                <div class="col-1 text-end">
                  <div class="icon icon-shape bg-gradient-warning shadow text-center border-radius-md">
                    <i class="fas fa-database fa-lg"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
    </nav>
  </div>
  </nav>
</div>
</div>

<form action="" method="post">
<div class="container-fluid mt-3">
  <div class="row">
    <div class="col-6">
      <a type="button" href="add_database_to_list.php" class="btn bg-gradient-success fs-6"><i class="fas fa-plus-circle fa-lg"></i> Dodaj bazę</a>
      <a type="button" href="mail_notifications.php" class="btn bg-gradient-info fs-6"><i class="fas fa-paper-plane fa-lg"></i> Konfiguracja maila</a>
      <a type="button" href="databases_backups_reports.php" class="btn bg-gradient-warning fs-6"><i class="fas fa-ballot-check fa-lg"></i> Raporty</a>
      <a type="button" href="backup_engine.php" class="btn bg-gradient-secondary fs-6"><i class="fas fa-sync-alt"></i> Natychmiastowa kopia</a>
    </div>
  </div>
</div>

<div class="container mt-3 text-center">
  <div class="card card-frame">
    <div class="card-body">
        <h4 class="text-uppercase">Szybki raport</h4>

                <?php
                //Funkcja tworząca backup aktualnej listy bazy danych wraz z raportami
                getallDatabasestoBackup();

                //Wysłanie powiadomienia mailowego
                include "mailer/send_mail.php"; 

                ?>

        </div>
    </div>
</div>