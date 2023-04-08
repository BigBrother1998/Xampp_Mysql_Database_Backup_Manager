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

        <?php deleteDatabaseFromList(); ?>

      <div class="d-flex justify-content-center mt-10">
        <div class="col-lg-6 mt-4 flex">
          <div class="card mb-4">
            <div class="card-header pb-0 p-3">

            <div class="row g-0">
                <div class="col-sm-6 col-md-8">
                  <h2 class="mb-1">Usuń bazę danych</h2>
                  <p class="text-yellow font-weight-bold">Usuń bazę danych z listy</p>
            </div>

            <form action="" method="post" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-12 col-md-12">
                        <h5>Czy na pewno chcesz usunąć bazę <b class="text-info">"<?php echo $database_name; ?>"</b> z listy?</h5>
                        <h5>Status bazy:
                        <?php if($database_status == 'Aktywny') { ?>
                            <b class="text-success"><i class="fas fa-check-circle"></i> <?php echo $database_status?></b>.
                        <?php }else if($database_status == 'Nieaktywny') {?>
                            <b class="text-danger"><i class="fas fa-times-circle"></i> <?php echo $database_status?></b>.
                        <?php } ?>
                        </h5>
                    </div>
                </div>

                    <div class="col-12 text-center mt-2">
                        <button class="btn bg-gradient-warning text-white btn-icon" name="delete_database" type="submit">
                            <span><i class="fas fa-trash"></i></span>
                            <span>Usuń bazę danych</span>
                        </button>
                        <a class="btn bg-gradient-warning text-white btn-icon" href="../dashboard.php">
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