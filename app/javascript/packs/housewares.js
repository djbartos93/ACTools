jQuery(document).ready(function() {
  $('#housewares-datatable').dataTable({
    "processing": true,
    "serverSide": true,
    "ajax": {
      "url": $('#housewares-datatable').data('source')
    },
    "pagingType": "full_numbers",
    "columns": [
      {"data": "name"},
      {"data": "image"},
      {"data": "variation"}
    ]
    // pagingType is optional, if you want full pagination controls.
    // Check dataTables documentation to learn more about
    // available options.
  });
});
