<%-- 
    Document   : reviewproc1
    Created on : 31 Dec, 2021, 6:23:29 PM
    Author     : suresh
--%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<style>
    @media only screen and (min-width: 820px)and (max-width:950px){
               .tooth{padding-right:5px!important;}
               .pad-7{padding-right:7px!important;}
               .padd-30{padding-left:30px;}
               .padd-10{padding-left:10px;}
               .pad-3{padding-right:3px!important;}
               .pad-0{padding-right:0px!important;}
           }
</style>
<div  class="col-md-12 m-t-20" id="toothdiv" style="page-break-inside: avoid;" keep-together="always">
    <div class="card statustic-card">
        <div style="padding: 10px 15px;" class="card-header bg-success border-0 ">
            <h5 class="text-white m-b-0">Tooth Chart</h5>
        </div>
        <div class="col-lg-11 col-md-12">
            <img src="assets/images/upperteeth.jpg" alt="" width="98%"/>
            <div class="row">
                <div class="col-6">
                    <div class="row p-l-40 padd-10">
                        <div class="custom-control custom-checkbox p-r-15 pad-8">
                    <input type="checkbox" class="custom-control-input input-green m-r-0" name="teeth1" id="1" >
                    <label class="custom-control-label" for="teeth1">1</label>
                </div>
                <div class="custom-control custom-checkbox p-r-15 pad-7">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth2"  id="2" >
                    <label class="custom-control-label" for="teeth2">2</label>
                </div>
                <div class="custom-control custom-checkbox p-r-15 tooth">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth3"  id="3" >
                    <label class="custom-control-label" for="teeth3">3</label>
                </div>
                <div class="custom-control custom-checkbox p-r-15 tooth">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth4"  id="4" >
                    <label class="custom-control-label" for="teeth4">4</label>
                </div>
                <div class="custom-control custom-checkbox p-r-15 tooth">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth5"  id="5" >
                    <label class="custom-control-label" for="teeth5">5</label>
                </div>
                <div class="custom-control custom-checkbox p-r-15 tooth">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth6"   id="6" >
                    <label class="custom-control-label" for="teeth6">6</label>
                </div>

                <div class="custom-control custom-checkbox p-r-15 tooth">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth7" id="7" >
                    <label class="custom-control-label" for="teeth7">7</label>
                </div>
                <div class="custom-control custom-checkbox p-r-0 tooth">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth8"  id="8" >
                    <label class="custom-control-label" for="teeth8">8</label>
                </div>
                    </div>
                </div>
                <div class="col-6 p-r-0">
                    <div class="row">
                        <div class="custom-control custom-checkbox p-r-10 pad-3">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth9"  id="9" >
                    <label class="custom-control-label" for="teeth9">9</label>
                </div>
                <div class="custom-control custom-checkbox p-r-10 pad-3">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth10"  id="10" >
                    <label class="custom-control-label" for="teeth10">10</label>
                </div>
                <div class="custom-control custom-checkbox p-r-10 pad-3">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth11"  id="11" >
                    <label class="custom-control-label" for="teeth11">11</label>
                </div>
                <div class="custom-control custom-checkbox p-r-10 pad-3">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth12"   id="12" >
                    <label class="custom-control-label" for="teeth12">12</label>
                </div>

                <div class="custom-control custom-checkbox p-r-10 pad-3">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth13" id="13" >
                    <label class="custom-control-label" for="teeth1">13</label>
                </div>
                <div class="custom-control custom-checkbox p-r-10 pad-3">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth14"  id="14" >
                    <label class="custom-control-label" for="teeth14">14</label>
                </div>
                <div class="custom-control custom-checkbox p-r-10 pad-3">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth15"  id="15" >
                    <label class="custom-control-label" for="teeth15">15</label>
                </div>
                <div class="custom-control custom-checkbox p-r-10 pad-0">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth16"  id="16" >
                    <label class="custom-control-label" for="teeth16">16</label>
                </div>
                    </div>
                </div>
            </div>
        </div>
        <hr class="m-0">
        <div class="col-lg-11 col-md-12">
           
            <div class="row">
                <div class="col-6">
                    <div class="row p-l-40 padd-10">
                        <div class="custom-control custom-checkbox p-r-5 pad-0">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth32" id="32" >
                    <label class="custom-control-label" for="teeth32">32</label>
                </div>
                <div class="custom-control custom-checkbox p-r-10 pad-0">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth31"  id="31" >
                    <label class="custom-control-label" for="teeth31">31</label>
                </div>
                <div class="custom-control custom-checkbox p-r-10 pad-0">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth30"  id="30" >
                    <label class="custom-control-label" for="teeth30">30</label>
                </div>
                <div class="custom-control custom-checkbox p-r-5 pad-0">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth29"  id="29" >
                    <label class="custom-control-label" for="teeth29">29</label>
                </div>
                <div class="custom-control custom-checkbox p-r-10 pad-0">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth28"  id="28" >
                    <label class="custom-control-label" for="teeth28">28</label>
                </div>
                <div class="custom-control custom-checkbox p-r-5 pad-0">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth27"   id="27" >
                    <label class="custom-control-label" for="teeth27">27</label>
                </div>

                <div class="custom-control custom-checkbox p-r-5 pad-0"> 
                    <input type="checkbox" class="custom-control-input input-green" name="teeth26" id="26" >
                    <label class="custom-control-label" for="teeth26">26</label>
                </div>
                <div class="custom-control custom-checkbox p-r-5 pad-0">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth25"  id="25" >
                    <label class="custom-control-label" for="teeth25">25</label>
                </div>
                    </div>
                </div>
                <div class="col-6">
                    <div class="row m-l-10">
                        <div class="custom-control custom-checkbox p-r-5">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth24"  id="24" >
                    <label class="custom-control-label" for="teeth24">24</label>
                </div>
                <div class="custom-control custom-checkbox p-r-10 pad-0">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth23"  id="23" >
                    <label class="custom-control-label" for="teeth23">23</label>
                </div>
                <div class="custom-control custom-checkbox p-r-10 pad-0">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth22"  id="22" >
                    <label class="custom-control-label" for="teeth22">22</label>
                </div>
                <div class="custom-control custom-checkbox p-r-10 pad-0">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth21"   id="21" >
                    <label class="custom-control-label" for="teeth21">21</label>
                </div>

                <div class="custom-control custom-checkbox p-r-10 pad-0">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth20" id="20" >
                    <label class="custom-control-label" for="teeth20">20</label>
                </div>
                <div class="custom-control custom-checkbox p-r-10 pad-0">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth19"  id="19" >
                    <label class="custom-control-label" for="teeth19">19</label>
                </div>
                <div class="custom-control custom-checkbox p-r-10 pad-3">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth18"  id="18" >
                    <label class="custom-control-label padd-l-0" for="teeth18">18</label>
                </div>
                <div class="custom-control custom-checkbox p-r-5 pad-0">
                    <input type="checkbox" class="custom-control-input input-green" name="teeth17"  id="17" >
                    <label class="custom-control-label padd-l-0" for="teeth17">17</label>
                </div>
                    </div>
                </div>
            </div>
              <img src="assets/images/lowerteeth.jpg" alt=""width="98%"/>
        </div>
    
        
    </div>
</div>





