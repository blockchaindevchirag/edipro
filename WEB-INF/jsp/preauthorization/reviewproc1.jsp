<%-- 
    Document   : reviewproc1
    Created on : 31 Dec, 2021, 6:23:29 PM
    Author     : suresh
--%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div  class="col-md-12">
    <div class="card statustic-card">
        <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
            <h5 class="text-white m-b-0">Procedure Code</h5>
        </div>
      
        <div id="procedurecode_result" class="card-body ">

        </div>
       
        
        <div  id="procedurecodev_result" class="card-body ">  

        </div>

    </div>
</div>




<div class="col-md-12">
    <div class='card statustic-card'>
        <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
            <h5 class="text-white m-b-0">Notes</h5>
        </div>
        <div class="card-body ">
            <div class="row">
                <div class="col-sm">
                    <textarea class="form-control" name="notes" id="notes" rows="3"></textarea>

                </div>
            </div>
        </div>
    </div>                                                           
</div>
