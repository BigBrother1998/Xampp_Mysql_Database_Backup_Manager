const defaultTableData = {
  table_selector: ".table",
  database_table_name: null,
  footer_callback: null,
};

console.log($(defaultTableData.table_selector));
function renderTable(tableData) {
  console.log(tableData);
  let dataTableDetails = { ...defaultTableData, ...tableData };
  let merged2 = { ...tableData, ...defaultTableData };
  console.log(merged2);

  var dataTable = $(dataTableDetails.table_selector).DataTable({
    ajax: {
      url: "async/data_tables_operation_reports_async.php",
      data: function (data) {
        // Read values
        var from_date = $("#min").val();
        var to_date = $("#max").val();

        data.searchByFromdate = from_date;
        data.searchByTodate = to_date;
        data.database_table_name = dataTableDetails.database_table_name;
        data.columns_set = dataTableDetails.columns_set || "default";
      },
    },
    processing: true,
    serverSide: true,
    order: [[0, "desc"]],
    dom: "<bfprtli>",
    aLengthMenu: [
      [20, 50, -1],
      [20, 50, "Wszystko"],
    ],
    order: [[2, "desc"]],
    scrollY: 500,
    scrollCollapse: true,
    stateSave: false,
    language: {
      search: "Wyszukaj",
      lengthMenu: "Pokaż _MENU_ ",
      zeroRecords:
        "Nic nie znaleziono. Przepraszamy <i class='far fa-frown'></i>",
      info: "Pokaż stronę _PAGE_ z _PAGES_",
      infoEmpty: "Nie znaleziono z",
      processing:
        "<i class='fas fa-circle-notch fa-spin fa-2x'></i><br>Wczytuje",
      paginate: {
        next: ">",
        previous: "<",
      },
      infoFiltered: "(Przeszukano z _MAX_ rekordów)",
    },
  });

  $("#min").on("change", function () {
    dataTable.draw();
  });

  $("#max").on("change", function () {
    dataTable.draw();
  });
}
