$ -> 
  
  $('#users-table').dataTable
    processing: true
    serverSide: true
    pageLength: 50
    ajax: $('#users-table').data('source')
    pagingType: 'full_numbers'
    columns: [
      {data: 'name'}
      {data: 'email'}
      {data: 'comitee'}
      {data: 'type_user'}
      {data: 'buttons'}
    ]
    'oLanguage':
      'sEmptyTable': 'Nenhum registro encontrado'
      'sInfo': 'Mostrando de _START_ até _END_ de _TOTAL_ registros'
      'sInfoEmpty': 'Mostrando 0 até 0 de 0 registros'
      'sInfoFiltered': '(Filtrados de _MAX_ registros)'
      'sInfoPostFix': ''
      'sInfoThousands': '.'
      'sLengthMenu': 'Mostrando _MENU_ resultados'
      'sLoadingRecords': 'Carregando...'
      'sProcessing': 'Processando...'
      'sZeroRecords': 'Nenhum registro encontrado'
      'sSearch': 'Pesquisar'
      'oPaginate':
        'sNext': 'Próximo'
        'sPrevious': 'Anterior'
        'sFirst': 'Primeiro'
        'sLast': 'Último'
      'oAria':
        'sSortAscending': ': Ordenar colunas de forma ascendente'
        'sSortDescending': ': Ordenar colunas de forma descendente'
    dom: 'lBfrtip'
    buttons: [
      {
        extend: 'csv'
        title: 'SONU - CSV '
        exportOptions: columns: 'thead th:not(.noExport)'
      }
      {
        extend: 'excel'
        title: 'SONU - EXCEL - ' 
        exportOptions: columns: 'thead th:not(.noExport)'
      }
      {
        extend: 'pdf'
        title: 'SONU - PDF - '
        exportOptions: columns: 'thead th:not(.noExport)'
      }
    ]