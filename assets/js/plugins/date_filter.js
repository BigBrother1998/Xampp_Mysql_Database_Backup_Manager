// Tłumaczenie formularza z wyborem daty i godzin

function DateFormTranslate() {
  $.extend(true, $.fn.dataTable.DateTime, {
    defaults: {
      i18n: {
        hours: "Godziny",
        minutes: "Minuty",
        seconds: "Sekundy",
        previous: "Poprzedni",
        next: "Następny",
        months: [
          "Styczeń",
          "Luty",
          "Marzec",
          "Kwiecień",
          "Maj",
          "Czerwiec",
          "Lipiec",
          "Sierpień",
          "Wrzesień",
          "Październik",
          "Listopad",
          "Grudzień",
        ],
        weekdays: ["Ne", "Pn", "Wt", "Śr", "Cz", "Pt", "Sb"],
        unknown: "?",
      },
    },
  });
}

// Filtrowanie za pomocą dat i godzin

function TableDateFilter() {
  var minDate, maxDate;

  $.fn.dataTable.ext.search.push(function (settings, data, dataIndex) {
    var min = minDate.val();
    var max = maxDate.val();
    var date = new Date(data[2]);

    if (
      (min === null && max === null) ||
      (min === null && date <= max) ||
      (min <= date && max === null) ||
      (min <= date && date <= max)
    ) {
      return true;
    }
    return false;
  });

  $(document).ready(function () {
    minDate = new DateTime($("#min"), {
      format: "YYYY-MM-DD HH:mm",
    });
    maxDate = new DateTime($("#max"), {
      format: "YYYY-MM-DD HH:mm",
    });

    var table = $(".table").DataTable();

    $("#min, #max").on("change", function () {
      table.draw();
    });
  });
}
