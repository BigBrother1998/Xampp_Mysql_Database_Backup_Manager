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
    <div class="col-12">
      <?php checkExistingBackupPath(); ?>
      <a type="button" href="controllers/add_database_to_list.php" class="btn bg-gradient-success fs-6"><i class="fas fa-plus-circle fa-lg"></i> Dodaj bazę</a>
      <a type="button" href="mail_notifications.php" class="btn bg-gradient-info fs-6"><i class="fas fa-paper-plane fa-lg"></i> Konfiguracja maila</a>
      <a type="button" href="databases_backups_reports.php" class="btn bg-gradient-warning fs-6"><i class="fas fa-ballot-check fa-lg"></i> Raporty</a>
      <a type="button" href="backup_engine.php" class="btn bg-gradient-secondary fs-6"><i class="fas fa-sync-alt"></i> Natychmiastowa kopia</a>
    </div>
  </div>
</div>

<div class="container mt-3">
  <div class="card card-frame">
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-hover align-items-center all_databases mb-0">
          <thead>
            <tr>
              <th class="text-center text-uppercase text-dark fs-6 font-weight-bolder opacity-7">C</th>
              <th class="text-center text-uppercase text-dark fs-6 font-weight-bolder opacity-7">Nazwa bazy</th>
              <th class="text-center text-uppercase text-dark fs-6 font-weight-bolder opacity-7">Użytkownik</th>
              <th class="text-center text-uppercase text-dark fs-6 font-weight-bolder opacity-7">Hasło</th>
              <th class="text-center text-uppercase text-dark fs-6 font-weight-bolder opacity-7">Host</th>
              <th class="text-center text-uppercase text-dark fs-6 font-weight-bolder opacity-7">Status</th>
              <th class="text-center text-uppercase text-dark fs-6 font-weight-bolder opacity-7">Edycja</th>
            </tr>
          </thead>
          <tbody>

            <?php
              getAllDatabasesList();
            ?>

          </tbody>
        </table>
      </div>
  </div>
</div>
</form>

<script>
    $(document).each(function () {
        $('.all_databases').DataTable({           
            "dom": '<brfti>',
            "aLengthMenu": [
                [-1],
                ["Wszystko"]
            ],
            "scrollY": 500,
            "scrollCollapse": true,
            "stateSave": false,
            "language": {
                "search": "Wyszukaj",
                "lengthMenu": "Pokaż _MENU_ ",
                "zeroRecords": "Nic nie znaleziono. Przepraszamy <i class='far fa-frown'></i>",
                "info": "Pokaż stronę _PAGE_ z _PAGES_",
                "infoEmpty": "Nie znaleziono z",
                "paginate": {
                    "next": ">",
                    "previous": "<",
                "infoFiltered": "(Przeszukano z _MAX_ rekordów)",
                },
            }
        
        });
    });
</script>

</body>

</html>