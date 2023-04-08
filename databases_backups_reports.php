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
    <div class="col-7">
      <a type="button" href="controllers/add_database_to_list.php" class="btn bg-gradient-success fs-6"><i class="fas fa-plus-circle fa-lg"></i> Dodaj bazę</a>
      <a type="button" href="mail_notifications.php" class="btn bg-gradient-info fs-6"><i class="fas fa-paper-plane fa-lg"></i> Konfiguracja maila</a>
      <a type="button" href="dashboard.php" class="btn bg-gradient-warning fs-6"><i class="fad fa-chart-network fa-lg"></i> Dashboard</a>
      <a type="button" href="backup_engine.php" class="btn bg-gradient-secondary fs-6"><i class="fas fa-sync-alt"></i> Natychmiastowa kopia</a>
    </div>
    <div class="col-5 mt-2">
      <?php backupPathName(); ?>
      <h6 class="text-monospace"><i class="fas fa-folder-open"></i> Ścieżka kopii "<?php echo $backup_path_name; ?>/htdocs/mysql_backup_manager/backups"
      <?php if(isset($backup_path_name)) { ?>
        <a href="controllers/edit_backup_path.php" data-bs-toggle="tooltip" data-bs-placement="top" title="Edytuj ścieżkę"> <i class="fas fa-edit fa-lg"></i></a>
      <?php } ?>
      </h6>
    </div>
  </div>
</div>

<div class="container mt-3 mb-5">
    <div class="card card-frame">
      <div class="card-body">
      <div class="col-md-6 col-sm-12 justify-content-center">
        <h6 class="text-gradient text-warning text-center"><i class="far fa-calendar-alt fa-lg"></i> Zakres dat i godzin:</h6>
          <table>
            <tbody>
              <td>Od:</td>
              <td><input class="form-control " type="text" id="min" name="min" autocomplete="off"></td>

              <td>Do:</td>
              <td><input class="form-control" type="text" id="max" name="max" autocomplete="off"></td>
            </tbody>
          </table>
               
        </div>
        <div class="table-responsive">
          <table class="table table-hover align-items-center databases_backup_history mb-0">
            <thead>
              <tr>
                <th class="text-center text-uppercase text-dark fs-6 font-weight-bolder opacity-7">Nazwa bazy</th>
                <th class="text-center text-uppercase text-dark fs-6 font-weight-bolder opacity-7">Status</th>
                <th class="text-center text-uppercase text-dark fs-6 font-weight-bolder opacity-7">Data kopii</th>
                <th class="text-center text-uppercase text-dark fs-6 font-weight-bolder opacity-7">Nazwa pliku</th>
              </tr>
            </thead>
            <tbody class='align-middle text-center text-md mb-0'>
            </tbody>
          </table>
        </div>
    </div>
  </div>
</div>

<script type="text/javascript" src="assets/js/core/async_data_tables_operation_reports.js"></script>

<script>
    $(document).ready(function() {
      renderTable({
        database_table_name: "databases_operation_reports",
        columns_set: "databases_operation_reports_list",
      })
    });

    TableDateFilter();
    DateFormTranslate();
  </script>

</body>

</html>