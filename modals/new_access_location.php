<div class="modal fade bd-example-modal-xl" id="new_access_location" tabindex="-1"  role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">
          <b>New Access Location</b>
        </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="new_access_location_form">
          <div class="row">
            <div class="col-6">
              <label>Car Maker:</label><label style="color: red;">*</label>
              <select id="car_maker_al" class="form-control" required></select>
            </div>
            <div class="col-6">
              <label>Car Model:</label><label style="color: red;">*</label>
              <select id="car_model_al" class="form-control" required></select>
            </div>
          </div>
          <div class="row">
            <div class="col-6">
              <label>IP:</label><label style="color: red;">*</label>
              <input type="text" class="form-control" id="ip_al" autocomplete="off" maxlength="15" required>
            </div>
          </div>
          <br>
          <hr>
          <div class="row">
            <div class="col-12">
              <div class="float-right">
                <button id="btnAddAccessLocation" name="btn_add_access_location" class="btn btn-primary">Add</button>
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
