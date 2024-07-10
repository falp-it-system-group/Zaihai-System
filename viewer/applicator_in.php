<?php
include 'plugins/header.php';
include 'plugins/preloader.php';
include 'plugins/navbar/viewer_navbar.php';
?>
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="row mb-2 ml-1 mr-1">
                    <div class="col-sm-6">
                        <h1 class="m-0"> Applicator In</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="/emp_mgt/">Zaihai System</a></li>
                            <li class="breadcrumb-item active">Applicator In</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card card-gray-dark card-outline">
                                <div class="card-header">
                                <h3 class="card-title"><i class="fas fa-th-large"></i> Applicator In Table</h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                    <i class="fas fa-minus"></i>
                                    </button>
                                    <button type="button" class="btn btn-tool" data-card-widget="maximize">
                                    <i class="fas fa-expand"></i>
                                    </button>
                                </div>
                                </div>
                                <!-- /.card-header -->
                                <div class="card-body">
                                    <div class="row mb-2">
                                        <div class="col-sm-2">
                                        <span id="count_view"></span>
                                        </div>
                                    </div>
                                    <div class="table-responsive" style="max-height: 500px; overflow: auto; display:inline-block;">
                                        <table id="recentApplicatorInTable" class="table table-sm table-head-fixed text-nowrap table-hover">
                                            <thead style="text-align: center;">
                                                <tr>
                                                <th>#</th>
                                                <th>Serial No</th>
                                                <th>Applicator No.</th>
                                                <th>Terminal Name</th>
                                                <th>TRD No.</th>
                                                <th>Operator Out</th>
                                                <th>Date Time Out</th>
                                                <th>Zaihai Stock Address</th>
                                                <th>Operator In</th>
                                                <th>Date Time In</th>
                                                </tr>
                                            </thead>
                                            <tbody id="recentApplicatorInData" style="text-align: center;">
                                                <tr>
                                                <td colspan="10" style="text-align:center;">
                                                    <div class="spinner-border text-dark" role="status">
                                                    <span class="sr-only">Loading...</span>
                                                    </div>
                                                </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
            </div>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
<?php
include 'plugins/footer.php';
include '../modals/applicator_checksheet_view.php';
include 'plugins/js/applicator_in_script.php';
?>