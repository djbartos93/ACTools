
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
    '</table>';
}


jQuery(document).ready(function() {
  var table = $('#housewares-datatable').DataTable({
    "processing": true,
    "serverSide": true,
    "ajax": {
      "url": $('#housewares-datatable').data('source')
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
      {"data": "buy"},
      {"data": "sell"},
      {"data": "tag"}
    ],
    "order": [[1, 'asc']]
    // pagingType is optional, if you want full pagination controls.
    // Check dataTables documentation to learn more about
    // available options.
  });
  // Add event listener for opening and closing details
$('#housewares-datatable tbody').on('click', 'td.details-control', function () {
    var tr = $(this).closest('tr');
    var row = table.row( tr );

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
});
