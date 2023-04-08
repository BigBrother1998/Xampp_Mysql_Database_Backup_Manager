<?php

    $columnsPerTable = [
 
        // 1 //
        'databases_operation_reports' => [
            
            //columns_set
            'databases_operation_reports_list' => [
                'columns' => [
                    array(
                        'db'        => 'datatabase_operation_database_name',
                        'dt'        => 0,
                        'formatter' => function( $d, $row ) {
                            return ($d);
                        }
                    ),
                    array(
                        'db'        => 'datatabase_operation_status',
                        'dt'        => 1,
                        'formatter' => function( $d, $row ) {
                            return ($d) == "Powodzenie operacji" ? 
                            "<span class='text-success'><i class='far fa-thumbs-up'></i> $d</span>" : 
                            "<span class='text-danger'><i class='far fa-thumbs-down'></i> $d</span>";

                        }
                    ),
                    array(
                        'db'        => 'datatabase_operation_date',
                        'dt'        => 2,
                        'formatter' => function( $d, $row ) {
                            return ($d);
                        }
                    ),
                    array(
                        'db'        => 'datatabase_operation_filename',
                        'dt'        => 3,
                        'formatter' => function( $d, $row ) {
                            return ($d) !== "" ? 
                            "$d.sql" : 
                            "<span class='text-danger'><i class='fas fa-ban'></i> BRAK PLIKU</span>";

                        }
                    ),
                ],
            ],
        ],
        // 1 //
            
    ];

    require( 'ssp.php' );

    if (empty($_GET['database_table_name'])) {
        echo json_encode([]);
    }

    $primaryKey = 'datatabase_operation_id';
    $whereResult = '';
    $table = $_GET['database_table_name'];

    if (!empty($_GET['searchByFromdate'])) {
        $where [] = "datatabase_operation_date >= '{$_GET['searchByFromdate']}'";
    }

    if (!empty($_GET['searchByTodate'])) {
        $where [] = "datatabase_operation_date <= '{$_GET['searchByTodate']}'";
    }

    if (!empty($where)) {
        $whereResult = implode(' AND ', $where);
    }

    $dbpass = [
        'databases_operation_reports' => [
            'user' => 'root',
            'pass' => '',
            'db'   => 'database_backup_manager',
            'host' => 'localhost'
        ]

    ];

    $sql_details = $dbpass[$table];
    $tableColumns = $columnsPerTable[$table][$_GET['columns_set']]['columns'];
    echo json_encode(
        SSP::complex( $_GET, $sql_details, $table, $primaryKey, $tableColumns, $whereResult)
    );

?>