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

<!-- MAIN PAGE -->
<main class="main-content position-relative border-radius-lg">

        <?php editDatabaseFromList(); ?>

      <div class="d-flex justify-content-center mt-10">
        <div class="col-lg-6 mt-4 flex">
          <div class="card mb-4">
            <div class="card-header pb-0 p-3">

            <div class="row g-0">
                <div class="col-sm-6 col-md-8">
                  <h2 class="mb-1">Edytuj bazę danych</h2>
                  <p class="text-yellow font-weight-bold">Edytuj bazę danych do listy</p>
            </div>

            <form action="" method="post" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-6 col-md-6">
                        <div class="form-group">
                            <label for="database_name" class="form-control-label">Nazwa baza danych</label>
                            <select class="form-control select-customer" name="database_name" required>
                            <option value="<?php echo $database_name; ?>"><?php echo $database_name; ?> (aktualnie wybrany)</option>

                                    <?php

                                        $show_all_databases = "SHOW DATABASES";
                                        $select_show_all_databases = mysqli_query($connection, $show_all_databases);

                                        while($row = mysqli_fetch_assoc($select_show_all_databases))
                                        {
                                            $database_name = $row['Database'];

                                            echo "<option value='{$database_name}'>{$database_name}</option>";
                                        }

                                    ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-6 col-md-6">
                        <div class="form-group">
                            <label for="database_user" class="form-control-label">Użytkownik</label>
                            <input class="form-control" type="text" name="database_user"  value="<?php echo $database_user; ?>" required>
                        </div>
                    </div>
                    <div class="col-6 col-md-6">
                        <div class="form-group">
                            <label for="database_password" class="form-control-label">Hasło</label>
                            <input class="form-control" type="password" name="database_password" value="<?php echo $database_password; ?>">
                        </div>
                    </div>
                    <div class="col-6 col-md-6">
                        <div class="form-group">
                            <label for="database_host" class="form-control-label">Host</label>
                            <input class="form-control" type="text" name="database_host"  value="<?php echo $database_host; ?>"  required>
                        </div>
                    </div>

                </div>

                    <div class="col-12 text-center mt-2">
                        <button class="btn bg-gradient-warning text-white btn-icon" name="edit_database" type="submit">
                            <span><i class="fas fa-marker"></i></span>
                            <span>Edytuj bazę danych</span>
                        </button>
                        <a class="btn bg-gradient-warning text-white btn-icon" href="./dashboard.php">
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