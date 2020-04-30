
/* Formatting function for row details - modify as you need */
function format ( d ) {
    // `d` is the original data object for the row
    return '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">'+
        '<tr>'+
            '<td>Full name:</td>'+
            '<td>'+d.filename+'</td>'+
        '</tr>'+
        '<tr>'+
          '<td>Image:</td>'+
          '<td><img src="'+d.image+'">'+'</td>'+
        '</tr>'+
        '<tr>'+
          '<td>Closet Image:</td>'+
          '<td><img src="'+d.closet_image+'">'+'</td>'+
        '</tr>'+
    '</table>';
}


jQuery(document).ready(function () {
            var oTable2 = $('#items-datatable').DataTable({
                "processing": true,
                "serverSide": true,
                "ajax": {
                  "url": $('#items-datatable').data('source')
                },
                "pagingType": "full_numbers",
                "columns": [
                  {
                    "className":      'details-control',
                    "orderable":      false,
                    "data":           null,
                    "defaultContent": ''
                                  },
                  {"data": "name"},
                  {"data": "variation"},
                  {"data": "buy"},
                  {"data": "sell"},
                  {"data": "category"}
                ],
                "order": [[1, 'asc']]
                // pagingType is optional, if you want full pagination controls.
                // Check dataTables documentation to learn more about
                // available options.
              });

              $('#items-datatable tbody').on('click', 'td.details-control', function () {
                  var tr = $(this).closest('tr');
                  var row = oTable2.row( tr );

                  if ( row.child.isShown() ) {
                      // This row is already open - close it
                      row.child.hide();
                      tr.removeClass('shown');
                  }
                  else {
                      // Open this row
                      row.child( format(row.data()) ).show();
                      tr.addClass('shown');
                  }
              } );


          yadcf.init(oTable2, [{
                 column_number: 0,
                 filter_type: "exclude"
             }, {
                 column_number: 1,
                 filter_type: "text"
             }, {
                 column_number: 2,
                 filter_type: "exclude"
             }, {
                 column_number: 3,
                 filter_type: "exclude"

             }, {
                 column_number: 4,
                 filter_type: "exclude"
             }, {
                 column_number: 5,
             }]);

             yadcf.exFilterColumn(oTable2, [[0, "Misc"]]);


             yadcf.initMultipleTables([oTable2], [{
             filter_container_id: 'multi-table-filter',
             filter_default_label: 'Filter all tables!'
           }]);
});
