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

        <?php editBackupPath(); ?>

      <div class="d-flex justify-content-center mt-10">
        <div class="col-lg-6 mt-4 flex">
          <div class="card mb-4">
            <div class="card-header pb-0 p-3">

            <div class="row g-0">
                <div class="col-sm-6 col-md-10">
                  <h2 class="mb-1">Edytuj lokalizację XAMPPA</h2>
                  <p class="text-yellow font-weight-bold">Wpisz dokładną lokalizacje programu XAMPP</p>
            </div>

            <form action="" method="post" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-6 col-md-12">
                        <div class="form-group">
                            <label for="backup_path_name" class="form-control-label">Nazwa ścieżki</label>
                            <input class="form-control" type="text" name="backup_path_name" value="<?php echo $backup_path_name; ?>" required>
                        </div>
                    </div>
                </div>

                <h6 class="text-monospace">*Przykładowa ścieżka kopii bazy danych to: <b class="text-info">"C:/xampp"</b></h6>

                    <div class="col-12 text-center mt-2">
                        <button class="btn bg-gradient-warning text-white btn-icon" name="edit_backup_path" type="submit">
                            <span><i class="fas fa-marker"></i></span>
                            <span>Edytuj ścieżkę</span>
                        </button>
                        <a class="btn bg-gradient-warning text-white btn-icon" href="../databases_backups_reports.php">
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