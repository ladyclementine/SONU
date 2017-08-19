 
//= require admin_template/adminto/js/bootstrap.min.js
//= require admin_template/adminto/js/detect.js
//= require admin_template/adminto/js/fastclick.js
//= require admin_template/adminto/js/jquery.blockUI.js
//= require admin_template/adminto/js/waves.js
//= require admin_template/adminto/js/jquery.nicescroll.js
//= require admin_template/adminto/js/jquery.slimscroll.js
//= require admin_template/adminto/js/jquery.scrollTo.min.js

 
//= require admin_template/adminto/css/plugins/datatables/jquery.dataTables.min.js
//= require admin_template/adminto/css/plugins/datatables/dataTables.bootstrap.js
//= require admin_template/adminto/css/plugins/datatables/dataTables.buttons.min.js
//= require admin_template/adminto/css/plugins/datatables/buttons.bootstrap.min.js
//= require admin_template/adminto/css/plugins/datatables/jszip.min.js
//= require admin_template/adminto/css/plugins/datatables/pdfmake.min.js
//= require admin_template/adminto/css/plugins/datatables/vfs_fonts.js
//= require admin_template/adminto/css/plugins/datatables/buttons.html5.min.js
//= require admin_template/adminto/css/plugins/datatables/buttons.print.min.js
//= require admin_template/adminto/css/plugins/datatables/dataTables.fixedHeader.min.js
//= require admin_template/adminto/css/plugins/datatables/dataTables.keyTable.min.js
//= require admin_template/adminto/css/plugins/datatables/dataTables.responsive.min.js
//= require admin_template/adminto/css/plugins/datatables/responsive.bootstrap.min.js
//= require admin_template/adminto/css/plugins/datatables/dataTables.scroller.min.js

//= require admin_template/adminto/pages/datatables.init.js




//= require admin_template/adminto/css/plugins/fileuploads/js/dropify.min.js



//= require admin_template/adminto/js/jquery.core.js
//= require admin_template/adminto/js/jquery.app.js


$('.dropify').dropify({
	messages: {
		'default': 'Arraste e solte ou clique para substituir',
		'replace': 'Arraste e solte ou clique para substituir',
		'remove': 'Remover',
		'error': 'Ooops, Algo anexado errado.'
	},
	error: {
		'fileSize': 'The file size is too big (1M max).'
	}
});
$(document).ready(function() {
                $('#datatable').dataTable();
                $('#datatable-keytable').DataTable( { keys: true } );
                $('#datatable-responsive').DataTable();
                $('#datatable-scroller').DataTable( { ajax: "assets/plugins/datatables/json/scroller-demo.json", deferRender: true, scrollY: 380, scrollCollapse: true, scroller: true } );
                var table = $('#datatable-fixed-header').DataTable( { fixedHeader: true } );
            } );
            TableManageButtons.init();