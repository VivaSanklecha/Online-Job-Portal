
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="AllStyle.css"></link>
        <title>Company Registration</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		    <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Kode+Mono:wght@400..700&display=swap" rel="stylesheet">
    <style>
        .kode-mono-font {
            font-family: "Kode Mono", monospace;
            font-optical-sizing: auto;
            font-weight: bold;
            font-style: normal;
          }</style>
    </head>
            <body class="vh-100" style="background-color: #9A616D;">
		
		
		
                <section>
                  <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                      <div class="col col-xl-10">
                        <div class="card" style="border-radius: 1rem;">
                          <div class="row g-0">
                            <div class="col-md-12 col-lg-12 d-flex align-items-center">
                              <div class="card-body p-4 p-lg-5 text-black">
                
                                <form action="CmpSubmitServlet" method="post">                            
                                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Embark your journey with 
                                    <span class="kode-mono-font display-4 fw-bold mb-0 " style="color:#9A616D;">HireMe<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-mortarboard-fill" viewBox="0 0 16 16">
                                        <path d="M8.211 2.047a.5.5 0 0 0-.422 0l-7.5 3.5a.5.5 0 0 0 .025.917l7.5 3a.5.5 0 0 0 .372 0L14 7.14V13a1 1 0 0 0-1 1v2h3v-2a1 1 0 0 0-1-1V6.739l.686-.275a.5.5 0 0 0 .025-.917z"/>
                                        <path d="M4.176 9.032a.5.5 0 0 0-.656.327l-.5 1.7a.5.5 0 0 0 .294.605l4.5 1.8a.5.5 0 0 0 .372 0l4.5-1.8a.5.5 0 0 0 .294-.605l-.5-1.7a.5.5 0 0 0-.656-.327L8 10.466z"/></svg></span>
                                </h5>
                                <hr>
                                <h3 class="display-5 mb-4">Company Details</h3>
                                <!-- <br> -->
                        <div class="row g-0">
                                  <div class="form-outline col-6 mb-4">
                                    <label class="form-label" for="form2Example17">Registration ID</label>
                                    <input name="regid" id="form2Example17" class="form-control form-control-lg" />
                                  </div>
                
                                  <div class="form-outline col-6 mb-4">
                                     <label class="form-label" for="form2Example27">Company Name</label>
                                    <input name="cname" id="form2Example27" class="form-control form-control-lg" />
                                  </div>
                            </div>
                            <hr style=fill:black;>
                        <div class="row g-0">
                                  <div class="form-outline col-6 mb-4">
                                    <label class="form-label" for="form2Example17">Company Address</label>
                                    <input name="caddress" id="form2Example17" class="form-control form-control-lg" />
                                  </div>
                
                                  <div class="form-outline col-6 mb-4">
                                     <label class="form-label" for="form2Example27">Company Scope</label>
                                    <input name="scope" id="form2Example27" class="form-control form-control-lg" />
                                  </div>
                            </div>
                            <hr style=fill:black;>
                        <div class="row g-0">
                                  <div class="form-outline col-6 mb-4">
                                    <label class="form-label" for="form2Example17">Email Address</label>
                                    <input name="cemail" type="email" id="form2Example17" class="form-control form-control-lg" />
                                  </div>
                
                                  <div class="form-outline col-6 mb-4">
                                    <label class="form-label" for="input-phn">Contact</label>
                                    <div class="input-group" id="input-phn">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="basic-addon1">+91</span>
                                        </div>
                                        <input style="width:21rem" class="p-2" type="text" name="contactno" class="form-control" placeholder="eg: 9876616788">
                                    </div>                                  </div>
                            </div>
                            <hr style=fill:black;>
                                <h3 class="display-5 mb-4">Employer Details</h3>
                                <!-- <br> -->
                        <div class="row g-0">
                                  <div class="form-outline col-6 mb-4">
                                    <label class="form-label" for="form2Example17">Name</label>
                                    <input name="emp_name" id="form2Example17" class="form-control form-control-lg" />
                                  </div>
                
                                  <div class="form-outline col-6 mb-4">
                                     <label class="form-label" for="form2Example27">Designation</label>
                                    <input name="emp_post" id="form2Example27" class="form-control form-control-lg" />
                                  </div>
                            </div>
                            <hr style=fill:black;>
                            <div class="row g-0">
                                <div class="form-outline col-6 mb-4">
                                  <label class="form-label" for="form2Example17">Address</label>
                                  <input name="emp_address" id="form2Example17" class="form-control form-control-lg" />
                                </div>
              
                                <div class="form-outline col-6 mb-4">
                                  <label class="form-label" for="input-phn">Contact</label>
                                  <div class="input-group" id="input-phn">
                                      <div class="input-group-prepend">
                                          <span class="input-group-text" id="basic-addon1">+91</span>
                                      </div>
                                      <input style="width:21rem" class="p-2" type="text" name="emp_contactno" class="form-control" placeholder="eg: 9876616788">
                                  </div>                                 
                               </div>
                          </div>
                          <hr style=fill:black;>
                        <div class="row g-0">
                                  <div class="form-outline col-6 mb-4">
                                    <label class="form-label" for="form2Example17">Password</label>
                                    <input type="password" name="password" id="form2Example17" class="form-control form-control-lg" />
                                  </div>
                
                                  <div class="form-outline col-6 mb-4">
                                     <label class="form-label" for="form2Example27">Re-Enter Password</label>
                                    <input type="password" name="password" id="form2Example27" class="form-control form-control-lg" />
                                  </div>
                            </div>
                            <div class="small text-muted">Note: Your Company Registration ID will act as your Username</div>
                            <hr style=fill:black;>

                        
                                  <div class="pt-1 mb-4">
                                    <button class="btn btn-dark btn-lg btn-block" type="submit">Register</button>
                                  </div>
                                  <a href="#!" class="small text-muted">Terms of use.</a>
                                  <a href="#!" class="small text-muted">Privacy policy</a>
                                </form>
    
    </body>
</html>
