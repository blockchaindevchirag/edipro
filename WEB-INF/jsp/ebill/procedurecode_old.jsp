<!--<style>
    .popover{
        max-width: 190px !important;
    }
</style>-->
<div class="accordion" id="accordionExample1">
    <div class="card">
        <div class="card-header" id="proheadingOne">
            <h5 class="mb-0"><a  href="#!" id="head1" data-toggle="collapse" data-target="#procollapseOne" aria-expanded="true" aria-controls="procollapseOne">Radiographic X-Ray</a><!--<span style="float:right" ><i class="feather icon-minus f-w-600 bg-c-red update-icon"></i></span>--></h5>
            <!--<span style="float:right" ><i class="feather icon-minus f-w-600 bg-c-red update-icon"></i></span>--> 
            <span style="float:right" ><a href="#" data-toggle="popover" data-placement="top" title="" data-content="Maximum 2 procedures could be selected" ><i class="fas fa-question-circle"></i></a></span>
        </div>
       
        <div id="procollapseOne" class=" card-body collapse show" aria-labelledby="proheadingOne" data-parent="#accordionExample1">
            <div class="row">               
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

    <div class="card">
        <div class="card-header" id="proheading2">
            <h5 class="mb-0"><a href="#!" class="collapsed" data-toggle="collapse" data-target="#procollapse2" aria-expanded="false" aria-controls="procollapse2">Patient Consultation/ Evaluation </a> <span id="manodatoryerr0" style="color: red"></span></h5>
            <!--<span style="float:right" ><i class="feather icon-minus f-w-600 bg-c-red update-icon"></i></span>-->
        <span style="float:right" ><a href="#" data-toggle="popover" data-placement="top" title="" data-content="Any one of the following parameters could be selected" ><i class="fas fa-question-circle"></i></a></span>
        </div>
        <div id="procollapse2" class="card-body collapse" aria-labelledby="proheading2" data-parent="#accordionExample1">
            <div class="row">
                
                
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>New Patient Consultation</h6>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc21" id="temp1proc21" >
                                                <label class="custom-control-label" for="temp1proc21">15-20mins</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc22" id="temp1proc22">
                                                <label class="custom-control-label" for="temp1proc22">20-30mins</label>
                                            </div>                
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc23" id="temp1proc23" >
                                                <label class="custom-control-label" for="temp1proc23">30-45mins</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc24" id="temp1proc24">
                                                <label class="custom-control-label" for="temp1proc24">45-60mins</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Pre-Op Evaluation</h6>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc41" id="temp1proc41" >
                                                <label class="custom-control-label" for="temp1proc41">1-10mins</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc42" id="temp1proc42">
                                                <label class="custom-control-label" for="temp1proc42">10-20mins</label>
                                            </div>                
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc43" id="temp1proc43" >
                                                <label class="custom-control-label" for="temp1proc43">20-30mins</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Est. Patient Consultation</h6>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc31" id="temp1proc31" >
                                                <label class="custom-control-label" for="temp1proc31">15-20mins</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc32" id="temp1proc32">
                                                <label class="custom-control-label" for="temp1proc32">20-30mins</label>
                                            </div>                
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc33" id="temp1proc33" >
                                                <label class="custom-control-label" for="temp1proc33">30-45mins</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc34" id="temp1proc34">
                                                <label class="custom-control-label" for="temp1proc34">45-60mins</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Post-Op Evaluation</h6>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc51" id="temp1proc51" >
                                                <label class="custom-control-label" for="temp1proc51">1-10mins</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc52" id="temp1proc52">
                                                <label class="custom-control-label" for="temp1proc52">10-20mins</label>
                                            </div>  
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                
               
                
            </div>
        </div>
    </div>
    
    
    <div class="card">
        <div class="card-header" id="proheading3">
            <h5 class="mb-0"><a href="#!" class="collapsed" data-toggle="collapse" data-target="#procollapse3" aria-expanded="false" aria-controls="procollapse3">Mandatory Questionnaire</a><span id="manodatoryerr1" style="color: red"></span></h5>
            <!--<span style="float:right" ><i class="feather icon-minus f-w-600 bg-c-red update-icon"></i></span>-->
          <span style="float:right" ><a href="#" data-toggle="popover" data-placement="top" title="" data-content="All the queries are mandatory, every one of them need to be answered" ><i class="fas fa-question-circle"></i></a></span>   
        </div>
        <div id="procollapse3" class="card-body collapse" aria-labelledby="proheading3" data-parent="#accordionExample1">
            <div class="row">                
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Alcohol or other Substance Abuse Counseling</h6>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc91" id="temp1proc91" >
                                                <label class="custom-control-label" for="temp1proc91">Yes</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc92" id="temp1proc92">
                                                <label class="custom-control-label" for="temp1proc92">No</label>
                                            </div> 
                                            <div class="custom-control custom-control-inline">
                                                <span id="temp1proc9192err" style="color: red"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Sinus Exam/Endoscopy</h6>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc61" id="temp1proc61" >
                                                <label class="custom-control-label" for="temp1proc61">Yes</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc62" id="temp1proc62">
                                                <label class="custom-control-label" for="temp1proc62">No</label>
                                            </div>  
                                            <div class="custom-control custom-control-inline">
                                                <span id="temp1proc6162err" style="color: red"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Oral Cancer Screening</h6>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark"  name="temp1proc71" id="temp1proc71" >
                                                <label class="custom-control-label" for="temp1proc71">Yes</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark"  name="temp1proc72" id="temp1proc72">
                                                <label class="custom-control-label" for="temp1proc72">No</label>
                                            </div> 
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark"  name="temp1proc73" id="temp1proc73">
                                                <label class="custom-control-label" for="temp1proc73">Velscope/Vizilite</label>
                                            </div> 
                                            <div class="custom-control custom-control-inline">
                                                <span id="temp1proc717273err" style="color: red"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Smoke/Tobacco Counseling </h6>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark"  name="temp1proc81" id="temp1proc81" >
                                                <label class="custom-control-label" for="temp1proc81">Current Smoker</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark"  name="temp1proc82" id="temp1proc82">
                                                <label class="custom-control-label" for="temp1proc82">Current Non-Smoker</label>
                                            </div> 
                                            <div class="custom-control custom-control-inline">
                                                <span id="temp1proc8182err" style="color: red"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Material use</h6>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc131" id="temp1proc131" >
                                                <label class="custom-control-label" for="temp1proc131">Yes</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc132" id="temp1proc132">
                                                <label class="custom-control-label" for="temp1proc132">No</label>
                                            </div>      
                                            <div class="custom-control custom-control-inline">
                                                <span id="temp1proc131132err" style="color: red"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Oral Hygiene Instruction (Pre-Operation for TX)</h6>
                                    <div class="row">
                                        <div class="col-md-12">
                                             <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc101" id="temp1proc101" >
                                                <label class="custom-control-label" for="temp1proc101">Yes</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc102" id="temp1proc102">
                                                <label class="custom-control-label" for="temp1proc102">No</label>
                                            </div>   
                                            <div class="custom-control custom-control-inline">
                                                <span id="temp1proc101102err" style="color: red"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
      
                
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Reviewing Medical Record (Must Mark every TX)</h6>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc111" id="temp1proc111" >
                                                <label class="custom-control-label" for="temp1proc111">Yes</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc112" id="temp1proc112">
                                                <label class="custom-control-label" for="temp1proc112">No</label>
                                            </div> 
                                            <div class="custom-control custom-control-inline">
                                                <span id="temp1proc111112err" style="color: red"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
       
            <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Rx given / Order for Ceph</h6>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc121" id="temp1proc121" >
                                                <label class="custom-control-label" for="temp1proc121">Antibiotic 24Hrs prior Tx</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc122" id="temp1proc122" >
                                                <label class="custom-control-label" for="temp1proc122">Antibiotic after Surgery</label>
                                            </div>    
                                            <div class="custom-control custom-control-inline">
                                                <span id="temp1proc121122err" style="color: red"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>            
            </div>
            
        </div>
    </div>
    

    <div class="card">
        <div class="card-header" id="proheading4">
            <h5 class="mb-0" id="bonegraft"><a href="#!" class="collapsed" data-toggle="collapse" data-target="#procollapse4" aria-expanded="false" aria-controls="procollapse4">Treating Quadrants </a></h5>
            <!--<span style="float:right" ><i class="feather icon-minus f-w-600 bg-c-red update-icon"></i></span>-->
        </div>
        <div id="procollapse4" class="card-body collapse" aria-labelledby="proheading4" data-parent="#accordionExample1">
          <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-4 border-right">
                <div class="col-sm">	
                    <label for="temp1proc420" style="font-weight:bold" class="col-form-label font-style-label">Maxilla</label>
                    <div class="col-sm">
                        <div class="custom-control custom-checkbox custom-control-inline">
                            <input type="checkbox" class="custom-control-input input-dark" name="temp1proc421" id="temp1proc421" >
                            <label class="custom-control-label" for="temp1proc421">Right</label>
                        </div>
                        <div class="custom-control custom-checkbox custom-control-inline">
                            <input type="checkbox" class="custom-control-input input-dark" name="temp1proc422" id="temp1proc422">
                            <label class="custom-control-label" for="temp1proc422">Left</label>
                        </div>   
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-4 border-right">
                <div class="col-sm">	
                    <label  for="temp1proc423" id="appliance"  style="font-weight:bold" class="col-form-label font-style-label">Mandible</label>
                    <div class="col-sm">
                        <div class="custom-control custom-checkbox custom-control-inline">
                            <input type="checkbox" class="custom-control-input input-dark" name="temp1proc424" id="temp1proc424" >
                            <label class="custom-control-label" for="temp1proc424">Right</label>
                        </div>
                        <div class="custom-control custom-checkbox custom-control-inline">
                            <input type="checkbox" class="custom-control-input input-dark" name="temp1proc425" id="temp1proc425">
                            <label class="custom-control-label" for="temp1proc425">Left</label>
                        </div> 
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-4">
                <div class="col-sm">	
                    <label for="temp1proc426"  style="font-weight:bold" class="col-form-label font-style-label">Arch</label>
                    <div class="col-sm">
                        <div class="custom-control custom-checkbox custom-control-inline">
                            <input type="checkbox" class="custom-control-input input-dark" name="temp1proc427" id="temp1proc427" >
                            <label class="custom-control-label" for="temp1proc427">Right</label>
                        </div>
                        <div class="custom-control custom-checkbox custom-control-inline">
                            <input type="checkbox" class="custom-control-input input-dark" name="temp1proc428" id="temp1proc428">
                            <label class="custom-control-label" for="temp1proc428">Left</label>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
<!--=============================-->
<div class="card">
    <div class="card-header" id="proheading5">
        <h5 class="mb-0"><a href="#!" class="collapsed" data-toggle="collapse" data-target="#procollapse5" aria-expanded="false" aria-controls="procollapse5">Appliance</a></h5>
    </div>
    <div id="procollapse5" class="card-body collapse" aria-labelledby="proheading5" data-parent="#accordionExample1">
        <div class="row">
            <div class="col-12">
                <div class="col-sm">
                    <div class="col-3 custom-control custom-checkbox custom-control-inline">
                        <input type="checkbox" class="custom-control-input input-dark" name="temp1proc430" value="1" id="temp1proc430" >
                        <label class="custom-control-label" for="temp1proc430">Sleep Apnea</label>
                    </div>
                    <div class="col-4 custom-control custom-checkbox custom-control-inline">
                        <input type="checkbox" class="custom-control-input input-dark" name="temp1proc431" value="1" id="temp1proc431">
                        <label class="custom-control-label" for="temp1proc431">Temp. Prosthetic Max</label>
                    </div>
                    <div class="col-4 custom-control custom-checkbox custom-control-inline">
                        <input type="checkbox" class="custom-control-input input-dark" name="temp1proc432" id="temp1proc432">
                        <label class="custom-control-label" for="temp1proc432">Temp. Prosthetic Man</label>
                    </div>
                </div>
                <div class="col-sm">
                    <div class="col-3 custom-control custom-checkbox custom-control-inline">
                        <input type="checkbox" class="custom-control-input input-dark" name="temp1proc433" value="1" id="temp1proc433" >
                        <label class="custom-control-label" for="temp1proc433">Speed Aid</label>
                    </div>
                    <div class="col-4 custom-control custom-checkbox custom-control-inline">
                        <input type="checkbox" class="custom-control-input input-dark" name="temp1proc434" value="1" id="temp1proc434">
                        <label class="custom-control-label" for="temp1proc434">Perm. Prosthetic Max</label>
                    </div>
                    <div class="col-4 custom-control custom-checkbox custom-control-inline">
                        <input type="checkbox" class="custom-control-input input-dark" name="temp1proc435" id="temp1proc435">
                        <label class="custom-control-label" for="temp1proc435">Perm. Prosthetic Man</label>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
 <!--==========================================-->
    <div class="card">
        <div class="card-header" id="proheading6">
            <h5 class="mb-0"><a href="#!" class="collapsed" data-toggle="collapse" data-target="#procollapse6" aria-expanded="false" aria-controls="procollapse6">Biopsy</a></h5>
            <!--<span style="float:right" ><i class="feather icon-minus f-w-600 bg-c-red update-icon"></i></span>-->
        </div>
        <div id="procollapse6" class="card-body collapse" aria-labelledby="proheading6" data-parent="#accordionExample1">
            <div class="row">
            <div class="col-sm">
                <div class="col-4 custom-control custom-checkbox custom-control-inline">
                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc141" value="1" id="temp1proc141" >
                    <label class="custom-control-label" for="temp1proc141">Open Bone of Infection - Superficial</label>
                </div>
                <div class="col-3 custom-control custom-checkbox custom-control-inline">
                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc142" value="1" id="temp1proc142">
                    <label class="custom-control-label" for="temp1proc142">Bone-Deep</label>
                </div>
                <!--                    <div class="custom-control custom-checkbox custom-control-inline">
                                        <input type="checkbox" class="custom-control-input input-dark" name="biopsy3" id="treament93">
                                        <label cldass="custom-control-label" for="treament93">Aspiration(I.G Additional)</label>
                                    </div>-->
                <div class="col-4 custom-control custom-checkbox custom-control-inline">
                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc143" id="temp1proc143">
                    <label class="custom-control-label" for="temp1proc143">Vestibule of Mouth</label>
                </div>

            </div>
        </div>
        </div>
    </div>
 <!--=======================================-->
     <div class="card">
        <div class="card-header" id="proheading7">
            <h5 class="mb-0"><a href="#!" class="collapsed" data-toggle="collapse" data-target="#procollapse7" aria-expanded="false" aria-controls="procollapse7">Implant/Bone Graft Fail Removal</a><span id="manodatoryerr2" style="color: red"></span></h5>
            <!--<span style="float:right" ><i class="feather icon-minus f-w-600 bg-c-red update-icon"></i></span>-->
        </div>
        <div id="procollapse7" class="card-body collapse" aria-labelledby="proheading7" data-parent="#accordionExample1">
            <div class="card-body">
            <div class="row">                
            <div class="col-xl-12">
                <div class="card proj-progress-card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-xl-12 col-md-6 mb-2">
                                <div class="row">
                                    <div class="col-md-6">
                                        <!--<div class="custom-control custom-checkbox custom-control-inline">
                                            <label class="col-form-label font-style-label" for="temp1proc151">Implant Fail Removal</label>
                                        </div>-->
                                        <div class="custom-control custom-checkbox custom-control-inline">
                                            <input type="text" class="form-control"  name="implatjo" tabindex="4" id="implatjo"  placeholder="JO#">  
                                        </div>
                                        <div class="custom-control custom-control-inline">
                                            <span id="implatjoerr" style="color: red"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>       
                
            <div class="col-xl-6">
               <div class="card proj-progress-card">
                   <div class="card-body">
                       <div class="row">
                           <div class="col-xl-12 col-md-6 mb-2">
                              <span style="float:right" ><a href="#bonegraft" id='implantfail' data-placement="top"><i class="fas fa-question-circle"></i></a></span>
                               <h6> Implant Fail Removal</h6>
                               <div class="row">
                                   <div class="col-md-6">
                                       <label class="col-form-label font-style-label" for="temp1proc151">Maxilla</label>
                                       <div class="col-sm">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc152" id="temp1proc152" >
                                                <label class="custom-control-label" for="temp1proc152">Right</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc153" id="temp1proc153">
                                                <label class="custom-control-label" for="temp1proc153">Left</label>
                                            </div>
                                       </div>
                                   </div>
                                   <div class="col-md-6">
                                      <label class="col-form-label font-style-label" for="temp1proc154">Mandible</label>
                                        <div class="col-sm">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc155" id="temp1proc155" >
                                                <label class="custom-control-label" for="temp1proc155">Right</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc156" id="temp1proc156">
                                                <label class="custom-control-label" for="temp1proc156">Left</label>
                                            </div> 
                                        </div>
                                   </div>
                               </div>
                               <hr>
                              <div class="row">
                                  <div class="col-md-4" style="display: contents">	
                                        <div class="custom-control custom-checkbox custom-control-inline">
                                            <input type="checkbox" class="custom-control-input input-dark" name="temp1proc157" id="temp1proc157" >
                                            <label class="custom-control-label" for="temp1proc157">Hardware</label>
                                        </div>
                                        <div class="custom-control custom-checkbox custom-control-inline">
                                            <input type="checkbox" class="custom-control-input input-dark" name="temp1proc158" id="temp1proc158">
                                            <label class="custom-control-label" for="temp1proc158">Superficial</label>
                                        </div>
                                        <div class="custom-control custom-checkbox custom-control-inline">
                                            <input type="checkbox" class="custom-control-input input-dark" name="temp1proc159" id="temp1proc159">
                                            <label class="custom-control-label" for="temp1proc159">Deep</label>
                                        </div>
                                        <div class="custom-control custom-control-inline">
                                            <span id="temp1proc157158159err" style="color: red"></span>
                                        </div>
                                    </div>
                              </div>
                           </div>
                       </div>
                   </div>
               </div>
           </div>
                
            <div class="col-xl-6">
               <div class="card proj-progress-card">
                   <div class="card-body">
                       <div class="row">
                           <div class="col-xl-12 col-md-6 mb-2">
                               <span style="float:right" ><a href="#bonegraft" id='bonegrafts' data-placement="top"><i class="fas fa-question-circle"></i></a></span>
                              <h6>Bone Graft Fail Removal</h6>
                               <div class="row"> 
                                   <div class="col-md-6">
                                       <label class="col-form-label font-style-label" for="temp1proc161">Maxilla</label>
                                       <div class="col-sm">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc162" id="temp1proc162" >
                                                <label class="custom-control-label" for="temp1proc162">Right</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc163" id="temp1proc163">
                                                <label class="custom-control-label" for="temp1proc163">Left</label>
                                            </div> 
                                       </div>
                                   </div>
                                   <div class="col-md-6">
                                      <label class="col-form-label font-style-label" for="temp1proc164">Mandible</label>
                                        <div class="col-sm">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc165" id="temp1proc165" >
                                                    <label class="custom-control-label" for="temp1proc165">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc166" id="temp1proc166">
                                                    <label class="custom-control-label" for="temp1proc166">Left</label>
                                                </div> 
                                        </div>
                                   </div>
                               </div>
                              <hr>
                               <div class="row">
                                   <div class="col-sm-4" style="display: contents">	
                                        <div class="custom-control custom-checkbox custom-control-inline">
                                            <input type="checkbox" class="custom-control-input input-dark" name="temp1proc167" id="temp1proc167" >
                                            <label class="custom-control-label" for="temp1proc167">Small</label>
                                        </div>
                                        <div class="custom-control custom-checkbox custom-control-inline">
                                            <input type="checkbox" class="custom-control-input input-dark" name="temp1proc168" id="temp1proc168">
                                            <label class="custom-control-label" for="temp1proc168">Large</label>
                                        </div>
                                        <div class="custom-control custom-control-inline">
                                            <span id="temp1proc167168err" style="color: red"></span>
                                        </div>
                                    </div> 
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
           </div>
                
    </div>
</div>
                
            </div>
            
        </div>
  
 
 
    <div class="card">
        <div class="card-header" id="proheading8">
            <h5 class="mb-0"><a href="#!" class="collapsed" data-toggle="collapse" data-target="#procollapse8" aria-expanded="false" aria-controls="procollapse8">Surgical Tooth Removal</a><span id="manodatoryerr3" style="color: red"></span></h5>
            <!--<span style="float:right" ><i class="feather icon-minus f-w-600 bg-c-red update-icon"></i></span>-->
        <span style="float:right" ><a href="#bonegraft" data-toggle="popover" data-placement="top" title="" data-content="If JO # is entered, both 'Bone abscess removal' and 'Tissue abscess removal' are mandatory" ><i class="fas fa-question-circle"></i></a></span>    
        </div>
        <div id="procollapse8" class="card-body collapse" aria-labelledby="proheading8" data-parent="#accordionExample1">
            <div class="row">
                
                <div class="col-xl-12">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-4 col-md-6 mb-2">
                                   <h6>Surgical Tooth Removal</h6>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="text" class="form-control" name="surgicaljo" tabindex="4" id="surgicaljo"  placeholder="JO#">  
                                            </div>
                                                <div class="custom-control custom-control-inline">
                                                    <span id="sugicaljoerr" style="color: red"></span>
                                                </div>
                                        </div>                                        
                                    </div>
                                </div>
                                <div class="col-xl-8 col-md-6 mb-2">
                                   <h6>Drainage Abscess</h6>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc181" id="temp1proc181" >
                                                <label class="custom-control-label" for="temp1proc181">Cyst</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc182" id="temp1proc182">
                                                <label class="custom-control-label" for="temp1proc182">Cyst Superficial</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc183" id="temp1proc183">
                                                <label class="custom-control-label" for="temp1proc183">Cyst Deep</label>
                                            </div> 
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc184" id="temp1proc184">
                                                <label class="custom-control-label" for="temp1proc184">Abscess Fluid</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc185" id="temp1proc185">
                                                <label class="custom-control-label" for="temp1proc185">Abscess Simple</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc186" id="temp1proc186">
                                                <label class="custom-control-label" for="temp1proc186">Abscess Moderate</label>
                                            </div>
                                            <div class="custom-control custom-control-inline">
                                                <span id="temp1proc181to186err" style="color: red"></span>
                                            </div>
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>  
                
                
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                    <h6>Bone Abscess Removal</h6>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="temp1proc420" style="font-weight:bold" class="col-form-label font-style-label">Maxilla</label>
                                            <div class="col-sm">
                                               
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc192" id="temp1proc192" >
                                                    <label class="custom-control-label" for="temp1proc192">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc193" id="temp1proc193">
                                                    <label class="custom-control-label" for="temp1proc193">Left</label>
                                                </div> 
                                                <div class="custom-control custom-control-inline">
                                                    <span id="temp1proc192193err" style="color: red"></span>
                                                </div>   
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label  for="temp1proc423" id="appliance"  style="font-weight:bold" class="col-form-label font-style-label">Mandible</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc195" id="temp1proc195" >
                                                    <label class="custom-control-label" for="temp1proc195">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc196" id="temp1proc196">
                                                    <label class="custom-control-label" for="temp1proc196">Left</label>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
<!--                
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6> Osseous Surgery</h6>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="col-form-label font-style-label" for="temp1proc338">Maxilla</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc202" id="temp1proc202" >
                                                    <label class="custom-control-label" for="temp1proc202">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc203" id="temp1proc203">
                                                    <label class="custom-control-label" for="temp1proc203">Left</label>
                                                </div> 
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label  for="temp1proc423" id="appliance"  style="font-weight:bold" class="col-form-label font-style-label">Mandible</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc205" id="temp1proc205" >
                                                    <label class="custom-control-label" for="temp1proc205">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc206" id="temp1proc206">
                                                    <label class="custom-control-label" for="temp1proc206">Left</label>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>-->
               
                
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Tissue Abscess Removal</h6>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="col-form-label font-style-label" for="temp1proc338">Maxilla</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc212" id="temp1proc212" >
                                                    <label class="custom-control-label" for="temp1proc212">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc213" id="temp1proc213">
                                                    <label class="custom-control-label" for="temp1proc213">Left</label>
                                                </div> 
                                                <div class="custom-control custom-control-inline">
                                                    <span id="temp1proc212213err" style="color: red"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label  for="temp1proc423" id="appliance"  style="font-weight:bold" class="col-form-label font-style-label">Mandible</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc215" id="temp1proc215" >
                                                    <label class="custom-control-label" for="temp1proc215">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc216" id="temp1proc216">
                                                    <label class="custom-control-label" for="temp1proc216">Left</label>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
      
                
                 <div class="col-xl-12">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Bone Lesion / Bony Cyst</h6>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="col-form-label font-style-label" for="temp1proc338">Maxilla</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc222" id="temp1proc222" >
                                                    <label class="custom-control-label" for="temp1proc222">Cyst remove by Curettage </label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc223" id="temp1proc223" >
                                                    <label class="custom-control-label" for="temp1proc223">Cyst remove use Drill / Osteotome </label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc224" id="temp1proc224" >
                                                    <label class="custom-control-label" for="temp1proc224">2+ Cyst remove use Drill / Osteotome </label>
                                                </div> 
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label  for="temp1proc423" id="appliance"  style="font-weight:bold" class="col-form-label font-style-label">Mandible</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc226" id="temp1proc226" >
                                                    <label class="custom-control-label" for="temp1proc226">Cyst remove by Curettage </label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc227" id="temp1proc227" >
                                                    <label class="custom-control-label" for="temp1proc227">Cyst remove use Drill / Osteotome </label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc228" id="temp1proc228" >
                                                    <label class="custom-control-label" for="temp1proc228">2+ Cyst remove use Drill / Osteotome </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 
 
    <div class="card">
        <div class="card-header" id="proheading89">
            <h5 class="mb-0"><a href="#!" class="collapsed" data-toggle="collapse" data-target="#procollapse89" aria-expanded="false" aria-controls="procollapse89">Osseous Surgery</a><span id="manodatoryerr3" style="color: red"></span></h5>
            <!--<span style="float:right" ><i class="feather icon-minus f-w-600 bg-c-red update-icon"></i></span>-->
        </div>
        <div id="procollapse89" class="card-body collapse" aria-labelledby="proheading89" data-parent="#accordionExample1">
            <div class="row">
                
                
                <div class="col-xl-12">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="col-form-label font-style-label" for="temp1proc338">Maxilla</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc202" id="temp1proc202" >
                                                    <label class="custom-control-label" for="temp1proc202">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc203" id="temp1proc203">
                                                    <label class="custom-control-label" for="temp1proc203">Left</label>
                                                </div> 
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label  for="temp1proc423" id="appliance"  style="font-weight:bold" class="col-form-label font-style-label">Mandible</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc205" id="temp1proc205" >
                                                    <label class="custom-control-label" for="temp1proc205">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc206" id="temp1proc206">
                                                    <label class="custom-control-label" for="temp1proc206">Left</label>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               
      
                
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header" id="proheading10">
            <h5 class="mb-0"><a href="#!" class="collapsed" data-toggle="collapse" data-target="#procollapse10" aria-expanded="false" aria-controls="procollapse10">Bone Graft Surgery</a></h5>
            <!--<span style="float:right" ><i class="feather icon-minus f-w-600 bg-c-red update-icon"></i></span>-->
        </div>
        <div id="procollapse10" class="card-body collapse" aria-labelledby="proheading10" data-parent="#accordionExample1">
            <div class="row">
              
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Bone Graft</h6>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="col-form-label font-style-label" for="temp1proc338">Maxilla</label>
                                            <div class="col-sm">
                                               <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc232" id="temp1proc232" >
                                                    <label class="custom-control-label" for="temp1proc232">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc233" id="temp1proc233">
                                                    <label class="custom-control-label" for="temp1proc233">Left</label>
                                                </div> 
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label  for="temp1proc423" id="appliance"  style="font-weight:bold" class="col-form-label font-style-label">Mandible</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc235" id="temp1proc235" >
                                                    <label class="custom-control-label" for="temp1proc235">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc236" id="temp1proc236">
                                                    <label class="custom-control-label" for="temp1proc236">Left</label>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               
                
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Sinus Lift</h6>
                                    <div class="row">
                                        <div class="col-md">
                                            <div class="col-sm-6">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc241" id="temp1proc241" >
                                                    <label class="custom-control-label" for="temp1proc241">Lateral Approach</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc242" id="temp1proc242" >
                                                    <label class="custom-control-label" for="temp1proc242">Vertical Approach</label>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Sinus Augmentation Repair</h6>
                                    <div class="row">
                                        <div class="col-md">
                                            <!--<div class="col-sm-6">-->
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc251" id="temp1proc251" >
                                                    <label class="custom-control-label" for="temp1proc251">Fistula, Oral Maxillary</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc252" id="temp1proc252" >
                                                    <label class="custom-control-label" for="temp1proc252">Fistula, Oronasal</label>
                                                </div> 
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc253" id="temp1proc253" >
                                                    <label class="custom-control-label" for="temp1proc253">Fistula, nasonasal</label>
                                                </div> 
                                            <!--</div>-->
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header" id="proheading11">
            <h5 class="mb-0"><a href="#!" class="collapsed" data-toggle="collapse" data-target="#procollapse11" aria-expanded="false" aria-controls="procollapse11">Implant Surgery</a></h5>
            <!--<span style="float:right" ><i class="feather icon-minus f-w-600 bg-c-red update-icon"></i></span>-->
        </div>
        <div id="procollapse11" class="card-body collapse" aria-labelledby="proheading11" data-parent="#accordionExample1">
            <div class="row">              
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Implant Preparation</h6>
                                    <div class="row">
                                        
                                        <div class="custom-control custom-checkbox custom-control-inline">
                                            <input type="text" class="form-control"  name="implatsurjo" tabindex="4" id="implatsurjo"  placeholder="JO#">  
                                        </div>
                                        <div class="col-md-6">
                                            <label class="col-form-label font-style-label" for="temp1proc338">Maxilla</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc262" id="temp1proc262" >
                                                    <label class="custom-control-label" for="temp1proc262">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc263" id="temp1proc263">
                                                    <label class="custom-control-label" for="temp1proc263">Left</label>
                                                </div> 
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label  for="temp1proc423" id="appliance"  style="font-weight:bold" class="col-form-label font-style-label">Mandible</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc265" id="temp1proc265" >
                                                    <label class="custom-control-label" for="temp1proc265">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc266" id="temp1proc266">
                                                    <label class="custom-control-label" for="temp1proc266">Left</label>
                                                </div> 
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc267" id="temp1proc267" >
                                                    <label class="custom-control-label" for="temp1proc267">Osteoplasty w/BG</label>
                                                </div>
<!--                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc268" id="temp1proc268" >
                                                    <label class="custom-control-label" for="temp1proc268">Osteoplasty Reduce</label>
                                                </div>-->
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc269" id="temp1proc269" >
                                                    <label class="custom-control-label" for="temp1proc269">Osteoplasty Max</label>
                                                </div> 
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc2610" id="temp1proc2610" >
                                                    <label class="custom-control-label" for="temp1proc2610">Osteoplasty Man</label>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        
                          
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Reconstuction Endosteal Implant</h6>
                                    <div class="row">
                                        
                                        <div class="col-sm">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc271"  id="temp1proc271" >
                                                <label class="custom-control-label" for="temp1proc271"> < 3 Screw</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc272"  id="temp1proc272" >
                                                <label class="custom-control-label" for="temp1proc272">More than 3 Screw</label>
                                            </div> 
                                        </div>
                                        
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>
 
    <div class="card">
        <div class="card-header" id="proheading12">
            <h5 class="mb-0"><a href="#!" class="collapsed" data-toggle="collapse" data-target="#procollapse12" aria-expanded="false" aria-controls="procollapse12">Tissue Lesion Excision</a></h5>
            <!--<span style="float:right" ><i class="feather icon-minus f-w-600 bg-c-red update-icon"></i></span>-->
        </div>
        <div id="procollapse12" class="card-body collapse" aria-labelledby="proheading12" data-parent="#accordionExample1">
            <div class="row">
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Cyst Excision</h6>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="col-form-label font-style-label" for="temp1proc338">Maxilla</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc284" id="temp1proc284" >
                                                    <label class="custom-control-label" for="temp1proc284">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc285" id="temp1proc285">
                                                    <label class="custom-control-label" for="temp1proc285">Left</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label  for="temp1proc423" id="appliance"  style="font-weight:bold" class="col-form-label font-style-label">Mandible</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc287" id="temp1proc287" >
                                                    <label class="custom-control-label" for="temp1proc287">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc288" id="temp1proc288">
                                                    <label class="custom-control-label" for="temp1proc288">Left</label>
                                                </div> 
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc281"  id="temp1proc281" >
                                                    <label class="custom-control-label" for="temp1proc281">Tissue</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc282"  id="temp1proc282" >
                                                    <label class="custom-control-label" for="temp1proc282">Cyst remove w/ BG (not Allograft)</label>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Excision Lesion</h6>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="col-form-label font-style-label" for="temp1proc338">Maxilla</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc291" id="temp1proc291" >
                                                    <label class="custom-control-label" for="temp1proc291">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc292" id="temp1proc292">
                                                    <label class="custom-control-label" for="temp1proc292">Left</label>
                                                </div> 
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label  for="temp1proc423" id="appliance"  style="font-weight:bold" class="col-form-label font-style-label">Mandible</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc293" id="temp1proc293" >
                                                    <label class="custom-control-label" for="temp1proc293">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc294" id="temp1proc294">
                                                    <label class="custom-control-label" for="temp1proc294">Left</label>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-xl-12">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                    <div class="row">
                                        
                                        <div class="col-sm">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc295"  id="temp1proc295" >
                                                <label class="custom-control-label" for="temp1proc295">w/out suture</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc296"  id="temp1proc296" >
                                                <label class="custom-control-label" for="temp1proc296">w/ Simple suture</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc297"  id="temp1proc297" >
                                                <label class="custom-control-label" for="temp1proc297">w/ Flap suture</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc298"  id="temp1proc298" >
                                                <label class="custom-control-label" for="temp1proc298">w/out Repair</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc299"  id="temp1proc299" >
                                                <label class="custom-control-label" for="temp1proc299">w/ simple Repair</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc290"  id="temp1proc290" >
                                                <label class="custom-control-label" for="temp1proc290">w/ Complex repair</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc2900!"  id="temp1proc2900" >
                                                <label class="custom-control-label" for="temp1proc2900">Lip</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc2901@"  id="temp1proc2901" >
                                                <label class="custom-control-label" for="temp1proc2901">Palate</label>
                                            </div>


                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc2902"  id="temp1proc2902" >
                                                <label class="custom-control-label" for="temp1proc2902">Floor of mouth</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc2902"  id="temp1proc2903" >
                                                <label class="custom-control-label" for="temp1proc2903">Mucosa for Cplx Repair underly muscle (Req CT Graft)</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc2904"  id="temp1proc2904" >
                                                <label class="custom-control-label" for="temp1proc2904">Vestibule w/out repair</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc2905"  id="temp1proc2905" >
                                                <label class="custom-control-label" for="temp1proc2905">Vestibule w/Simple Repair (Req CT Graft)</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc2906"  id="temp1proc2906" >
                                                <label class="custom-control-label" for="temp1proc2906">Vestibule w/Cplx Repair (Req CT Graft)</label>
                                            </div>
                                        </div>
                                        
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header" id="proheading13">
            <h5 class="mb-0"><a href="#!" class="collapsed" data-toggle="collapse" data-target="#procollapse13" aria-expanded="false" aria-controls="procollapse13">Foreign Body</a></h5>
            <!--<span style="float:right" ><i class="feather icon-minus f-w-600 bg-c-red update-icon"></i></span>-->
        </div>
        <div id="procollapse13" class="card-body collapse" aria-labelledby="proheading13" data-parent="#accordionExample1">
            <div class="row">
              
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Removal foreign body</h6>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="col-form-label font-style-label" for="temp1proc338">Maxilla</label>
                                            <div class="col-sm">
                                                
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc306" id="temp1proc306" >
                                                    <label class="custom-control-label" for="temp1proc306">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc307" id="temp1proc307">
                                                    <label class="custom-control-label" for="temp1proc307">Left</label>
                                                </div> 
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label  for="temp1proc423" id="appliance"  style="font-weight:bold" class="col-form-label font-style-label">Mandible</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc309" id="temp1proc309" >
                                                    <label class="custom-control-label" for="temp1proc309">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc310" id="temp1proc310">
                                                    <label class="custom-control-label" for="temp1proc310">Left</label>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-xl-12">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                    
                                    <div class="row">
                                        
                                        <div class="col-sm">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc301" id="temp1proc301" >
                                                <label class="custom-control-label" for="temp1proc301">Removal of foreign body with repair</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc302" id="temp1proc302" >
                                                <label class="custom-control-label" for="temp1proc302">Removal of foreign body on muscle</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc303" id="temp1proc303">
                                                <label class="custom-control-label" for="temp1proc303">Removal foreign body soft tissue from dentoalveolar Structure</label>
                                            </div> 

                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc304" id="temp1proc304" >
                                                <label class="custom-control-label" for="temp1proc304">Removal foreign body bone from dentoalveolar Structure</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="accordion" id="accordionExample1">
   
    <div class="card">
        <div class="card-header" id="proheading14">
            <h5 class="mb-0"><a href="#!" class="collapsed" data-toggle="collapse" data-target="#procollapse14" aria-expanded="false" aria-controls="procollapse14">Tissue Graft</a></h5>
            <!--<span style="float:right" ><i class="feather icon-minus f-w-600 bg-c-red update-icon"></i></span>-->
        </div>
        
        <div id="procollapse14" class="card-body collapse" aria-labelledby="proheading14" data-parent="#accordionExample1">
            <div class="row">
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                    <h6>Tissue Remove</h6>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc31131" id="temp1proc31131" >
                                                <label class="custom-control-label" for="temp1proc31131">Hyperplastic or Alveolar mucosa</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc31141" id="temp1proc31141" >
                                                <label class="custom-control-label" for="temp1proc31141">Operculectomy</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc31142" id="temp1proc31142" >
                                                <label class="custom-control-label" for="temp1proc31142">Tuberosities</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc31143" id="temp1proc31143" >
                                                <label class="custom-control-label" for="temp1proc31143">Destruction Lesion/Scar w/out Excision</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc31144" id="temp1proc31144" >
                                                <label class="custom-control-label" for="temp1proc31144">Complex(including Ridge extension/Muscle repositioning)</label>
                                            </div>
                                        </div>
                                        
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                    <h6>Pedicle Soft Tissue Graft (w/out transfer)</h6>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="temp1proc420" style="font-weight:bold" class="col-form-label font-style-label">Maxilla</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc311" id="temp1proc311" >
                                                    <label class="custom-control-label" for="temp1proc311">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc312" id="temp1proc312">
                                                    <label class="custom-control-label" for="temp1proc312">Left</label>
                                                </div>   
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label  for="temp1proc423" id="appliance"  style="font-weight:bold" class="col-form-label font-style-label">Mandible</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc313" id="temp1proc313" >
                                                    <label class="custom-control-label" for="temp1proc313">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc314" id="temp1proc314">
                                                    <label class="custom-control-label" for="temp1proc314">Left</label>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6> Tissue Graft for mouth/Chin w/ transfer</h6>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="col-form-label font-style-label" for="temp1proc338">Maxilla</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc315" id="temp1proc315" >
                                                    <label class="custom-control-label" for="temp1proc315">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc316" id="temp1proc316">
                                                    <label class="custom-control-label" for="temp1proc316">Left</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label  for="temp1proc423" id="appliance"  style="font-weight:bold" class="col-form-label font-style-label">Mandible</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc317" id="temp1proc317" >
                                                    <label class="custom-control-label" for="temp1proc317">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc318" id="temp1proc318">
                                                    <label class="custom-control-label" for="temp1proc318">Left</label>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6> Substitute Graft for temporary wound</h6>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="col-form-label font-style-label" for="temp1proc338">Maxilla</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc319" id="temp1proc319" >
                                                    <label class="custom-control-label" for="temp1proc319">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc3110" id="temp1proc3110">
                                                    <label class="custom-control-label" for="temp1proc3110">Left</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label  for="temp1proc423" id="appliance"  style="font-weight:bold" class="col-form-label font-style-label">Mandible</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc3111" id="temp1proc3111" >
                                                    <label class="custom-control-label" for="temp1proc3111">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc3112" id="temp1proc3112">
                                                    <label class="custom-control-label" for="temp1proc3112">Left</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6> Substitute Graft for temporary wound</h6>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="col-form-label font-style-label" for="temp1proc353">Maxilla</label>
                                            <div class="col-sm">
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc3113" id="temp1proc3113" >
                                                    <label class="custom-control-label" for="temp1proc3113">Right</label>
                                                </div>
                                                <div class="custom-control custom-checkbox custom-control-inline">
                                                    <input type="checkbox" class="custom-control-input input-dark" name="temp1proc3114" id="temp1proc3114">
                                                    <label class="custom-control-label" for="temp1proc3114">Left</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                           <label class="col-form-label font-style-label" for="temp1proc356">Mandible</label>
                                           <div class="col-sm">
                                               <div class="custom-control custom-checkbox custom-control-inline">
                                                   <input type="checkbox" class="custom-control-input input-dark" name="temp1proc3115" id="temp1proc3115" >
                                                   <label class="custom-control-label" for="temp1proc3115">Right</label>
                                               </div>
                                               <div class="custom-control custom-checkbox custom-control-inline">
                                                   <input type="checkbox" class="custom-control-input input-dark" name="temp1proc3116" id="temp1proc3116">
                                                   <label class="custom-control-label" for="temp1proc3116">Left</label>
                                               </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-12">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">
                                   <h6>Vestibuloplasty (increase the height of the alveolar ridge for relining denture)</h6>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc3117" id="temp1proc3117" >
                                                <label class="custom-control-label" for="temp1proc3117">Anterior</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc3118" id="temp1proc3118" >
                                                <label class="custom-control-label" for="temp1proc3118">Posterior</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc3119" id="temp1proc3119" >
                                                <label class="custom-control-label" for="temp1proc3119">Bilateral</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc3120" id="temp1proc3120" >
                                                <label class="custom-control-label" for="temp1proc3120">Full-Arch</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc3121" id="temp1proc3121" >
                                                <label class="custom-control-label" for="temp1proc3121">Complex(including Ridge extension/Muscle repositioning)</label>
                                            </div>
                                        </div>
                                        
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>               
            </div>
        </div>
    </div>
   
   
</div>
    <div class="card">
        <div class="card-header" id="proheading15">
            <h5 class="mb-0"><a href="#!" class="collapsed" data-toggle="collapse" data-target="#procollapse15" aria-expanded="false" aria-controls="procollapse15">Suture</a></h5>
            <!--<span style="float:right" ><i class="feather icon-minus f-w-600 bg-c-red update-icon"></i></span>-->
            <span style="float:right" >
                <a href="#sutureIds" id='sutureId' data-placement="bottom"><i class="fas fa-question-circle"></i></a>
            </span>    
        </div>
        <div id="procollapse15" class="card-body collapse" aria-labelledby="proheading15" data-parent="#accordionExample1">
            <div class="row">
                
                <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">                                    
                                   <h6>Suture repair of wound</h6>
                                    <div class="row">
                                        
                                        <div class="col-sm">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc441" id="temp1proc441" >
                                                <label class="custom-control-label" for="temp1proc441">< 2.5cm</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc442" id="temp1proc442" >
                                                <label class="custom-control-label" for="temp1proc442">2.6-5cm</label>
                                            </div> 
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc443" id="temp1proc443" >
                                                <label class="custom-control-label" for="temp1proc443">5-7.5cm</label>
                                            </div> 
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc444" id="temp1proc444" >
                                                <label class="custom-control-label" for="temp1proc444">7.6-12cm</label>
                                            </div> 
                                        </div>
                                        
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              <div class="col-xl-6">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">                                    
                                   <h6>Suture closure of vestibule</h6>
                                    <div class="row">
                                        
                                        <div class="col-sm">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc371" id="temp1proc371" >
                                                <label class="custom-control-label" for="temp1proc371">< 2.5cm</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc372" id="temp1proc372" >
                                                <label class="custom-control-label" for="temp1proc372">2.6-5cm</label>
                                            </div> 
                                        </div>
                                        
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>                
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header" id="proheading16">
            <h5 class="mb-0"><a href="#!" class="collapsed" data-toggle="collapse" data-target="#procollapse16" aria-expanded="false" aria-controls="procollapse16">Phlebotomy & Stemcell</a></h5>
            <!--<span style="float:right" ><i class="feather icon-minus f-w-600 bg-c-red update-icon"></i></span>-->
        </div>
        <div id="procollapse16" class="card-body collapse" aria-labelledby="proheading16" data-parent="#accordionExample1">
            <div class="row">
                
                 <div class="col-xl-7">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">                                    
                                   <h6>Stem Cell</h6>
                                    <div class="row">
                                        
                                        <div class="col-sm">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc381" id="temp1proc381" >
                                                <label class="custom-control-label" for="temp1proc381">1</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc382" id="temp1proc382" >
                                                <label class="custom-control-label" for="temp1proc382">2</label>
                                            </div> 
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc383" id="temp1proc383" >
                                                <label class="custom-control-label" for="temp1proc383">3</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc384" id="temp1proc384" >
                                                <label class="custom-control-label" for="temp1proc384">4</label>
                                            </div> 
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc385" id="temp1proc385" >
                                                <label class="custom-control-label" for="temp1proc385">5</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc386" id="temp1proc386" >
                                                <label class="custom-control-label" for="temp1proc386">6</label>
                                            </div> 
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc387" id="temp1proc387" >
                                                <label class="custom-control-label" for="temp1proc387">7</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc388" id="temp1proc388" >
                                                <label class="custom-control-label" for="temp1proc388">8</label>
                                            </div> 
                                        </div>
                                        
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        
                 <div class="col-xl-5">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">                                    
                                   <h6>Stem Cell</h6>
                                    <div class="row">                                        
                                        <div class="col-sm">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc401" id="temp1proc401" >
                                                <label class="custom-control-label" for="temp1proc401">Blood StemCell Autologus</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc402" id="temp1proc402" >
                                                <label class="custom-control-label" for="temp1proc402">Blood StemCell Allogenic</label>
                                            </div> 
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc403" id="temp1proc403" >
                                                <label class="custom-control-label" for="temp1proc403">Transp StemCell AlloDerm</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc404" id="temp1proc404" >
                                                <label class="custom-control-label" for="temp1proc404">Transp StemCell AutoDerm</label>
                                            </div>
                                        </div>                                        
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header" id="proheading17">
            <h5 class="mb-0" id='sutureIds'><a href="#!" class="collapsed" data-toggle="collapse" data-target="#procollapse17" aria-expanded="false" aria-controls="procollapse17">Tissue/Bone Harvest</a></h5>
            <!--<span style="float:right" ><i class="feather icon-minus f-w-600 bg-c-red update-icon"></i></span>-->
        </div>
        <div id="procollapse17" class="card-body collapse" aria-labelledby="proheading17" data-parent="#accordionExample1">
            <div class="row">
                <div class="col-xl-7">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">                                    
                                   <h6>Tissue Donor/Culture</h6>
                                    <div class="row">
                                        
                                        <div class="col-sm">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc391" id="temp1proc391" >
                                                <label class="custom-control-label" for="temp1proc391">Mucosa for Donor Graft</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc392" id="temp1proc392" >
                                                <label class="custom-control-label" for="temp1proc392">Harvest for tissue cultured autograft < 100 sq cm</label>
                                            </div> 
                                        </div>
                                        
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
             
                
               <div class="col-xl-5">
                    <div class="card proj-progress-card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-xl-12 col-md-6 mb-2">                                    
                                   <h6>Bone Marrow</h6>
                                    <div class="row">
                                        
                                        <div class="col-sm">
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc411" id="temp1proc411" >
                                                <label class="custom-control-label" for="temp1proc411">Harvest Bone Allogenic</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline">
                                                <input type="checkbox" class="custom-control-input input-dark" name="temp1proc412" id="temp1proc412" >
                                                <label class="custom-control-label" for="temp1proc412">Harvest Bone Autologus</label>
                                            </div>  
                                        </div>
                                        
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                
            </div>
        </div>
    </div>   
    
</div>

     <script>
            $('[data-toggle="popover"]').popover({
                html: true,
                title: 'Help',
//                title: 'Help<a class="close" href="#">&times;</a>',
            });
                    $('[data-toggle="popover"]').click(function (e) {
            e.stopPropagation();
        });

        $(document).click(function (e) {
            if (($('.popover').has(e.target).length == 0) || $(e.target).is('.close')) {
                $('[data-toggle="popover"]').popover('hide');
            }
        });
           
            
            $('#popoverId').popover({
                html: true,
                title: 'Help<a class="close" href="#");">&times;</a>',
                content: 'At least 2 problems need to be selected from following 8 items. <br>(i) Sinus Problem.<br>(ii) Tissue Lesion/Cyst/Infection.<br>(iv) Bone Lesion/Bony Cyst.<br>(v) Injury/Traumatic/Accidental.<br>(vi) Zygomatic & Le-Fort Fracture/ Nasal.<br>(vii) Fracture.<br>(viii) Implant or Bone Graft failure',
            //    content: $('#popoverContent').html(),
            });
            $('#bonegrafts').popover({
                html: true,
                title: 'Help',
                content: 'If Maxilla/Mandible is selected, "Small/Large" is mandatory',
            //    content: $('#popoverContent').html(),
            });
            $('#implantfail').popover({
                html: true,
                title: 'Help',
                content: 'If Maxilla/Mandible is selected, "Hardware, Superficial, Deep" is mandatory',
            //    content: $('#popoverContent').html(),
            });
            $('#sutureId').popover({
                html: true,
                title: 'Help',
                content: 'Only one of the options could be selected',
            });

        $('#popoverId').click(function (e) {
            e.stopPropagation();
        });
        $('#sutureId').click(function (e) {
            e.stopPropagation();
        });
        $('#implantfail').click(function (e) {
            e.stopPropagation();
        });
        $('#bonegrafts').click(function (e) {
            e.stopPropagation();
        });
        $(document).click(function (e) {
            if (($('.popover').has(e.target).length == 0) || $(e.target).is('.close')) {
                $('#popoverId').popover('hide');
                $('#sutureId').popover('hide');
                $('#implantfail').popover('hide');
                $('#bonegrafts').popover('hide');
            }
        });
            </script>