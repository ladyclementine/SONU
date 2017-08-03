//= require admin_template/adminto/js/modernizr.min.js
//= require admin_template/adminto/js/jquery.min.js
//= require admin_template/adminto/js/bootstrap.min.js
//= require admin_template/adminto/js/detect.js
//= require admin_template/adminto/js/fastclick.js
//= require admin_template/adminto/js/jquery.blockUI.js
//= require admin_template/adminto/js/waves.js
//= require admin_template/adminto/js/jquery.nicescroll.js
//= require admin_template/adminto/js/jquery.slimscroll.js
//= require admin_template/adminto/js/jquery.scrollTo.min.js

//= require admin_template/adminto/js/jquery.knob.js
//= require admin_template/adminto/js/morris.min.js
//= require admin_template/adminto/js/raphael-min.js
//= require admin_template/adminto/js/jquery.dashboard.js
//= require admin_template/adminto/js/jquery.core.js
//= require admin_template/adminto/js/jquery.app.js

//= require admin_template/adminto/css/plugins/datatables/jquery.dataTables.min.js
//= require admin_template/adminto/css/plugins/datatables/dataTables.bootstrap.js


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
//= require admin_template/adminto/css/plugins/fileuploads/js/dropify.min.js
//= require admin_template/adminto/css/plugins/toastr/toastr.min.js



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

dataConfirmModal.setDefaults({
  title: 'Você tem certeza?',
  text: 'Deseja fazer isso?',
  commit: 'Sim, prosseguir!',
  cancel: 'Não, cancelar!',
  zIindex: 10099
});