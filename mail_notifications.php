<!--
=========================================================
* Soft UI Dashboard - v1.0.5
=========================================================

* Product Page: https://www.creative-tim.com/product/soft-ui-dashboard
* Copyright 2022 Creative Tim (https://www.creative-tim.com)
* Licensed under MIT (https://www.creative-tim.com/license)
* Coded by Creative Tim

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->

<?php include "includes/header.php" ?>
<?php include "includes/functions.php" ?>

<!-- Navbar -->
<div class="row justify-content-start vw-100 mt-3">
  <div class="col-4" trigger="">
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl">
      <div class="container-fluid">
        <nav aria-label="breadcrumb">
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
    </nav>
  </div>
  </nav>
</div>
</div>


<div class="container-fluid mt-3">
  <div class="row">
    <div class="col-6">
      <?php checkExistingMailConfig(); ?>
      <a type="button" href="dashboard.php" class="btn bg-gradient-warning fs-6"><i class="fad fa-chart-network fa-lg"></i> Dashboard</a>
      <a type="button" href="databases_backups_reports.php" class="btn bg-gradient-warning fs-6"><i class="fas fa-ballot-check fa-lg"></i> Raporty</a>
    </div>
  </div>
</div>

<?php 
  MailConfig(); 
?>

<div class="container mt-3">
  <div class="col-12">
                <div class="card card-frame">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-11 mb-2">
                                <h2 class="font-weight-bolder text-dark text-gradient">Konfiguracja powiadomień mailowych</h2>
                            </div>
                            <?php if(isset($mail_settings_host_address)) { ?>
                            <div class="col-1 mb-2">
                                <a href="edit_mail_configuration.php" data-bs-toggle="tooltip" data-bs-placement="top" title="Edytuj konfigurację"><i class="fas fa-edit fa-2x"></i></a>
                            </div>
                            <?php } ?>
                            <hr>
                            <div class="col-4">
                                <h6 class="font-weight-bolder text-dark text-gradient">Odbiorca</h6>
                                <h4 class="font-weight-bolder text-dark text-gradient"><?php echo $mail_settings_receiver; ?></h4>
                            </div>
                            <div class="col-4">
                                <h6 class="font-weight-bolder text-dark text-gradient">Dodatkowy odbiorca</h6>
                                <h4 class="font-weight-bolder text-dark text-gradient"><?php echo $mail_settings_additional_receiver; ?></h4>
                            </div>
                            <div class="col-4">
                                <h6 class="font-weight-bolder text-dark text-gradient">Adres email</h6>
                                <h4 class="font-weight-bolder text-dark text-gradient"><?php echo $mail_settings_sender; ?></h4>
                            </div>
                            <div class="col-4">
                                <h6 class="font-weight-bolder text-dark text-gradient">Hasło adresu email</h6>
                                <?php if(isset($mail_settings_sender_password)) { ?>
                                <h4 class="font-weight-bolder text-dark text-gradient">*************</h4>
                                <?php } ?>
                            </div>
                            <div class="col-4">
                                <h6 class="font-weight-bolder text-dark text-gradient">Adres serwera</h6>
                                <h4 class="font-weight-bolder text-dark text-gradient"><?php echo $mail_settings_host_address; ?></h4>
                            </div>
                        </div>

    </div>
</div>

</body>

</html>