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
<?php include "../includes/header.php" ?>
<?php include "../includes/functions.php" ?>

<!-- MAIN PAGE -->
<main class="main-content position-relative border-radius-lg">

        <?php addMailConfig(); ?>

      <div class="d-flex justify-content-center mt-10">
        <div class="col-lg-6 mt-4 flex">
          <div class="card mb-4">
            <div class="card-header pb-0 p-3">

            <div class="row g-0">
                <div class="col-sm-6 col-md-10">
                  <h2 class="mb-1">Dodaj konigurację powiadomień mailowych</h2>
                  <p class="text-yellow font-weight-bold">Wpisz dane poczty oraz serwera wysyłkowego</p>
            </div>

            <form action="" method="post" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-6 col-md-6">
                        <div class="form-group">
                            <label for="mail_settings_receiver" class="form-control-label">Odbiorca</label>
                            <input class="form-control" type="email" name="mail_settings_receiver" required>
                        </div>
                    </div>
                    <div class="col-6 col-md-6">
                        <div class="form-group">
                            <label for="mail_settings_additional_receiver" class="form-control-label">Dodatkowy odbiorca</label>
                            <input class="form-control" type="email" name="mail_settings_additional_receiver">
                        </div>
                    </div>
                    <div class="col-6 col-md-6">
                        <div class="form-group">
                            <label for="mail_settings_sender" class="form-control-label">Adres email</label>
                            <input class="form-control" type="email" name="mail_settings_sender" required>
                        </div>
                    </div>
                    <div class="col-6 col-md-6">
                        <div class="form-group">
                            <label for="mail_settings_sender_password" class="form-control-label">Hasło adresu email</label>
                            <input class="form-control" type="password" name="mail_settings_sender_password" required>
                        </div>
                    </div>
                    <div class="col-6 col-md-6">
                        <div class="form-group">
                            <label for="mail_settings_host_address" class="form-control-label">Adres serwera</label>
                            <input class="form-control" type="text" name="mail_settings_host_address" required>
                        </div>
                    </div>

                </div>

                    <div class="col-12 text-center mt-2">
                        <button class="btn bg-gradient-warning text-white btn-icon" name="add_mail_config" type="submit">
                            <span><i class="fas fa-plus"></i></span>
                            <span>Dodaj konfigurację</span>
                        </button>
                        <a class="btn bg-gradient-warning text-white btn-icon" href="../mail_notifications.php">
                            <span><i class="fas fa-arrow-alt-left"></i></span>
                            <span>Powrót</span>
                        </a>
                    </div>

                </form>

                    </div>
                </div>
            </div>  
        </div>
    </div>
</main>

</body>

</html>