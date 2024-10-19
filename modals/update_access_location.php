<div class="modal fade bd-example-modal-xl" id="update_access_location" tabindex="-1"  role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">
          <b>Update Access Location Details</b>
        </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="update_access_location_form">
          <div class="row">
            <input type="hidden" id="id_access_location_update" class="form-control">
            <div class="col-6">
              <label>Car Maker:</label><label style="color: red;">*</label>
              <select id="car_maker_al_update" class="form-control" required></select>
            </div>
            <div class="col-6">
              <label>Car Model:</label><label style="color: red;">*</label>
              <select id="car_model_al_update" class="form-control" required></select>
            </div>
          </div>
          <div class="row">
            <div class="col-6">
              <label>IP:</label><label style="color: red;">*</label>
              <input type="text" class="form-control" id="ip_al_update" autocomplete="off" maxlength="15" required>
            </div>
          </div>
          <br>
          <hr>
          <div class="row">
            <div class="col-9">
              <div class="float-left">
                <button class="btn btn-danger" id="btnDeleteAccessLocation" name="btn_delete_access_location">Delete</button>
              </div>
            </div>
            <div class="col-3">
              <div class="float-right">
                <button class="btn btn-primary" id="btnUpdateAccessLocation" name="btn_update_access_location">Update</button>
              </div>
            </div>
          </div>
        </form>
      <!-- /.card-body -->
      </div>
    <!-- /.card -->
    </div>
  </div>
</div>
