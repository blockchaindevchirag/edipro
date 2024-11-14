<%-- 
    Document   : procedure_code_new
    Created on : 24 Feb, 2022, 11:39:01 AM
    Author     : suresh
--%>

<div id="cards_proc_codes">
    
    <div class="card">
        <div class="card-header" id="proheadingOne">
                <h5 class="mb-0"><a  href="#!" id="head1" data-toggle="collapse" data-target="#procollapseOne" aria-expanded="true" id="t1proc02category"  aria-controls="procollapseOne">Radiographic X-Ray</a></h5>
                <!--<span style="float:right" ><i class="feather icon-minus f-w-600 bg-c-red update-icon"></i></span>--> 
        </div>
        <br>
        <div id="procollapseOne" class=" card-body collapse show" aria-labelledby="proheadingOne" data-parent="#accordionExample1">
               <h6 id="t1proc02sub1category" >Radiographic X-Ray</h6>
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-6 border-right">

                        <div class="col-sm">
                            <label for="b-t-name" id="appliance"  style="font-weight:bold" class="col-form-label font-style-label">Radiographic X-Ray</label>
                            <div class="col-sm">
                                <div class="custom-control custom-checkbox custom-control-inline">
                                        <input type="checkbox" class="custom-control-input input-dark" name="temp1proc11" id="temp1proc11">
                                        <label class="custom-control-label" for="temp1proc11">Pano</label>
                                </div>

                                <div class="custom-control custom-checkbox custom-control-inline">
                                        <input type="checkbox" class="custom-control-input input-dark" name="temp1proc12" id="temp1proc12" >
                                        <label class="custom-control-label" for="temp1proc12">Ceph</label>
                                </div>
                                <div class="custom-control custom-checkbox custom-control-inline">
                                        <input type="checkbox" class="custom-control-input input-dark" name="temp1proc13" id="temp1proc13">
                                        <label class="custom-control-label" for="temp1proc13">CBCT + 3D</label>
                                </div>
                                <div class="custom-control custom-checkbox custom-control-inline">
                                        <input type="checkbox" class="custom-control-input input-dark" name="temp1proc14" id="temp1proc14">
                                        <label class="custom-control-label" for="temp1proc14">CT 3 views MAX</label>
                                </div>
                                <div class="custom-control custom-checkbox custom-control-inline">
                                        <input type="checkbox" class="custom-control-input input-dark" name="temp1proc15" id="temp1proc15">
                                        <label class="custom-control-label" for="temp1proc15">CT 3 views MAN</label>
                                </div>
                                <div class="custom-control custom-checkbox custom-control-inline">
                                        <input type="checkbox" class="custom-control-input input-dark" name="temp1proc16" id="temp1proc16">
                                        <label class="custom-control-label" for="temp1proc16">CT 4 views MAX</label>
                                </div>
                                <div class="custom-control custom-checkbox custom-control-inline">
                                        <input type="checkbox" class="custom-control-input input-dark" name="temp1proc17" id="temp1proc17">
                                        <label class="custom-control-label" for="temp1proc17">CT 4 views MAN</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        $('#cards_proc_codes').append('<div class="card">'+
            '<div class="card-header" id="proheadingOne">'+
                    '<h5 class="mb-0"><a  href="#!" id="head1" data-toggle="collapse" data-target="#procollapseOne" aria-expanded="true" aria-controls="procollapseOne">Radiographic X-Ray</a></h5>'+

            '</div>'+
            '<div id="procollapseOne" class=" card-body collapse show" aria-labelledby="proheadingOne" data-parent="#accordionExample1">'+
                    '<div class="row">'+
                        '<div class="col-md-6 col-sm-6 col-xs-6 border-right">'+
                            '<div class="col-sm">'+
                                '<label for="b-t-name" id="appliance"  style="font-weight:bold" class="col-form-label font-style-label">Radiographic X-Ray</label>'+
                                '<div class="col-sm">'+
                                    '<div class="custom-control custom-checkbox custom-control-inline">'+
                                            '<input type="checkbox" class="custom-control-input input-dark" name="temp1proc11" id="temp1proc11">'+
                                            '<label class="custom-control-label" for="temp1proc11">Pano</label>'+
                                    '</div>'+
                                    '<div class="custom-control custom-checkbox custom-control-inline">'+
                                            '<input type="checkbox" class="custom-control-input input-dark" name="temp1proc12" id="temp1proc12" >'+
                                            '<label class="custom-control-label" for="temp1proc12">Ceph</label>'+
                                    '</div>'+
                            '</div>'+
                       '</div>'+
                    '</div>'+
            '</div>'+
        '</div>'');
    });
</script>