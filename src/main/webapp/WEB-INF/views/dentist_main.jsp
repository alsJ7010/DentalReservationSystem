<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>JJONDDuk_Dentist  :></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- App css -->
        <link href="resources/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/app.min.css" rel="stylesheet" type="text/css" />
        
        <!-- jquery.js -->
		<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
		<!-- jquery.js ends -->
		
		<script src="resources/js/login.js"></script>

		<script>
			$(document).ready(function() {
				setPatientInfo();
			});
			
			function setPatientInfo() {
				if("${sessionScope.d_code}" == "") {
					alert("로그인이 필요합니다.");
					window.location.href='http://localhost:8090/reservation/';
				} else {
					var c_code = "${sessionScope.c_code}";
					var d_code = "${sessionScope.d_code}";
					
					$("#c_code").val(c_code);
					$("#d_code").val(d_code);
					
					//$('#logout-btn').show();
				}
		
				console.log("세션값이당: " + p_code);
			}
		</script>

    </head>

    <body>

		<form>
			<input type="hidden" id="c_code" value="1">
    		<input type="hidden" id="d_code" value="1">
		</form>
		
        <!-- Begin page -->
        <div class="wrapper">

            <!-- ========== Left Sidebar Start ========== -->
            <div class="left-side-menu">

                <div class="slimscroll-menu" id="left-side-menu-container">

                    <!-- LOGO -->
                    <a href="index.html" class="logo text-center">
                        <span class="logo-lg">
                            <img src="resources/image/logo.png" alt="" height="40">
                        </span>
                        <span class="logo-sm">
                            <img src="assets/images/logo_sm.png" alt="" height="16">
                        </span>
                    </a>

                    <!--- Sidemenu -->
                    <ul class="metismenu side-nav">

                        <li class="side-nav-title side-nav-item">Menu</li>

                        <li class="side-nav-item active">
                            <a href="javascript: void(0);" class="side-nav-link" >
                                <i class="dripicons-view-list"></i>
                                <span> 환자 관리 </span>
                            </a>
                            <ul class="side-nav-second-level" aria-expanded="false">
                                <li>
                                    <a href="http://localhost:8090/reservation/schedule_check">스케줄 확인</a>
                                </li>
                                <li>
                                    <a href="http://localhost:8090/reservation/patient_list">환자 검색</a>
                                </li>
                            </ul>
                        </li>
                        <li class="side-nav-item active">
                            <a href="javascript: void(0);" class="side-nav-link" >
                                <i class="dripicons-user"></i>
                                <span> 의료진 </span>
                            </a>
                            <ul class="side-nav-second-level" aria-expanded="false">
                            	<li>
                                    <a href="http://localhost:8090/reservation/close_notice">휴진 등록</a>
                                </li>
                                <li>
                                    <a href="http://localhost:8090/reservation/dentist_list">의료진 목록</a>
                                </li>
                            </ul>
                        </li>
                        <li class="side-nav-item active">
                            <a href="javascript: void(0);" class="side-nav-link" >
                                <i class="dripicons-swap"></i>
                                <span> 환자 트랜스퍼 </span>
                            </a>
                            <ul class="side-nav-second-level" aria-expanded="false">
                                <li>
                                    <a href="http://localhost:8090/reservation/patient_transfer">환자 트랜스퍼</a>
                                </li>
                                <li>
                                    <a href="http://localhost:8090/reservation/receiveTransfer">받은 트랜스퍼</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <!-- End Sidebar -->

                    <div class="clearfix"></div>

                </div>
                <!-- Sidebar -left -->

            </div>
            <!-- Left Sidebar End -->

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page">
                <div class="content">

                    <!-- Topbar Start -->
                    <div class="navbar-custom">
                    
                    	<ul class="list-unstyled topbar-right-menu float-right mb-0">
						<li class="dropdown notification-list"><a
							class="nav-link dropdown-toggle nav-user arrow-none mr-0"
							data-toggle="dropdown" href="#" role="button"
							aria-haspopup="false" aria-expanded="false"> <span
								class="account-user-avatar"> </span> <span> <span
									class="font-weight-bold">  ${sessionScope.d_name} 님 </span> <span
									class="account-position">   환영합니다.   </span>
							</span>

						</a>
							<div
								class="dropdown-menu dropdown-menu-right dropdown-menu-animated topbar-dropdown-menu profile-dropdown">
								<!-- item-->
								<a href="javascript:void(0);" class="dropdown-item notify-item">
									<i class="mdi mdi-logout mr-1" onclick="logout()"></i> <span
									onclick="logout()">로그아웃</span>
								</a>

							</div></li>

					</ul>
                    
                       <button class="button-menu-mobile open-left disable-btn">
                            <i class="mdi mdi-menu"></i>
                        </button>
                        
                    </div>
                    <!-- end Topbar -->

                    <!-- Start Content-->
                    <div class="container-fluid">
                        
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <!-- <h4 class="page-title">의료진</h4> -->
                                    <br><br><br><br><br>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 


                        <div class="row justify-content-center">
                            <div class="col-xl-10">

                                <!-- Pricing Title-->
                                <div class="text-center">
                                    <h3 class="mb-2">의료진</h3>
                                    <p class="text-muted w-50 m-auto">
                                        웰컴 쫀떡 의료진~.~♡  <br> 최고의 의료진들이 모여 고객의 건강만을 최선으로 생각합니다.
                                    </p>
                                </div>

                                <!-- Plans -->
                                <div class="row mt-sm-5 mt-3 mb-3">
                                    <div  id="dentist_mainPage" class="col-md-4">
                                        <div class="card card-pricing">
                                            <div class="card-body text-center">
                                                <p class="card-pricing-plan-name font-weight-bold text-uppercase"> 스케줄확인</p>
                                                <i class="card-pricing-icon dripicons-calendar text-primary"></i>
                                                <h2 class="card-pricing-price"> </h2>
                                               <!--  <ul class="card-pricing-features">
                                                    <li>10 GB Storage</li>
                                                    <li>500 GB Bandwidth</li>
                                                    <li>No Domain</li>
                                                    <li>1 User</li>
                                                    <li>Email Support</li>
                                                    <li>24x7 Support</li>
                                                </ul> -->
                                                <input type="button" class="btn btn-primary mt-4 mb-2 btn-rounded" id="choose" 
                                                value="선택" onclick="location.href='http://localhost:8090/reservation/scheduelCheck'">
                                            </div>
                                        </div> <!-- end Pricing_card -->
                                    </div> <!-- end col -->

                                    <div id="dentist_mainPage" class="col-md-4">
                                        <div class="card card-pricing">
                                            <div class="card-body text-center">
                                                <p class="card-pricing-plan-name font-weight-bold text-uppercase">환자 트랜스퍼</p>
                                                <i class="card-pricing-icon dripicons-document text-primary"></i>
                                                <h2 class="card-pricing-price"> <span> </span></h2>
                                                <button class="btn btn-primary mt-4 mb-2 btn-rounded" 
                                                onclick="location.href='http://localhost:8090/reservation/patient_transfer'">선택</button>
                                            </div>
                                        </div> <!-- end Pricing_card -->
                                    </div> <!-- end col -->
                                    
                                    <div id="dentist_mainPage" class="col-md-4">
                                        <div class="card card-pricing">
                                            <div class="card-body text-center">
                                                <p class="card-pricing-plan-name font-weight-bold text-uppercase">스케줄 조정</p>
                                                <i class="card-pricing-icon dripicons-clock text-primary"></i>
                                                <h2 class="card-pricing-price"> <span> </span></h2>
                                                <button class="btn btn-primary mt-4 mb-2 btn-rounded"
                                                onclick="location.href='http://localhost:8090/reservation/close_notice'">선택</button>
                                            </div>
                                        </div> <!-- end Pricing_card -->
                                    </div> <!-- end col -->
                                    
                                    <div id="dentist_mainPage" class="col-md-4">
                                        <div class="card card-pricing">
                                            <div class="card-body text-center">
                                                <p class="card-pricing-plan-name font-weight-bold text-uppercase">환자 검색 </p>
                                                <i class="card-pricing-icon dripicons-search text-primary"></i>
                                                <h2 class="card-pricing-price"><span> </span></h2>
                                                <button class="btn btn-primary mt-4 mb-2 btn-rounded " 
                                                onclick="location.href='http://localhost:8090/reservation/patient_list'">선택</button>
                                            </div>
                                        </div> <!-- end Pricing_card -->
                                    </div> <!-- end col -->

                                </div>
                                <!-- end row -->

                            </div> <!-- end col-->
                        </div>
                        <!-- end row -->
                        
                    </div> <!-- container -->

                </div> <!-- content -->

                <!-- Footer Start -->
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6">
                                2018 - 2019 Â© Hyper - Coderthemes.com
                            </div>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- end Footer -->

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->


        </div>
        <!-- END wrapper -->


        <!-- Right Sidebar -->
        <div class="right-bar">

            <div class="rightbar-title">
                <a href="javascript:void(0);" class="right-bar-toggle float-right">
                    <i class="dripicons-cross noti-icon"></i>
                </a>
                <h5 class="m-0">Settings</h5>
            </div>

            <div class="slimscroll-menu rightbar-content">

                <!-- Settings -->
                <hr class="mt-0" />
                <h5 class="pl-3">Basic Settings</h5>
                <hr class="mb-0" />

                <div class="p-3">
                    <div class="custom-control custom-checkbox mb-2">
                        <input type="checkbox" class="custom-control-input" id="notifications-check" checked>
                        <label class="custom-control-label" for="notifications-check">Notifications</label>
                    </div>

                    <div class="custom-control custom-checkbox mb-2">
                        <input type="checkbox" class="custom-control-input" id="api-access-check">
                        <label class="custom-control-label" for="api-access-check">API Access</label>
                    </div>

                    <div class="custom-control custom-checkbox mb-2">
                        <input type="checkbox" class="custom-control-input" id="auto-updates-check" checked>
                        <label class="custom-control-label" for="auto-updates-check">Auto Updates</label>
                    </div>

                    <div class="custom-control custom-checkbox mb-2">
                        <input type="checkbox" class="custom-control-input" id="online-status-check" checked>
                        <label class="custom-control-label" for="online-status-check">Online Status</label>
                    </div>

                    <div class="custom-control custom-checkbox mb-2">
                        <input type="checkbox" class="custom-control-input" id="auto-payout-check">
                        <label class="custom-control-label" for="auto-payout-check">Auto Payout</label>
                    </div>

                </div>


                <!-- Timeline -->
                <hr class="mt-0" />
                <h5 class="pl-3">Recent Activity</h5>
                <hr class="mb-0" />
                <div class="pl-2 pr-2">
                    <div class="timeline-alt">
                        <div class="timeline-item">
                            <i class="mdi mdi-upload bg-info-lighten text-info timeline-icon"></i>
                            <div class="timeline-item-info">
                                <a href="#" class="text-info font-weight-bold mb-1 d-block">You sold an item</a>
                                <small>Paul Burgess just purchased âHyper - Admin Dashboardâ!</small>
                                <p class="mb-0 pb-2">
                                    <small class="text-muted">5 minutes ago</small>
                                </p>
                            </div>
                        </div>

                        <div class="timeline-item">
                            <i class="mdi mdi-airplane bg-primary-lighten text-primary timeline-icon"></i>
                            <div class="timeline-item-info">
                                <a href="#" class="text-primary font-weight-bold mb-1 d-block">Product on the Bootstrap Market</a>
                                <small>Dave Gamache added
                                    <span class="font-weight-bold">Admin Dashboard</span>
                                </small>
                                <p class="mb-0 pb-2">
                                    <small class="text-muted">30 minutes ago</small>
                                </p>
                            </div>
                        </div>

                        <div class="timeline-item">
                            <i class="mdi mdi-microphone bg-info-lighten text-info timeline-icon"></i>
                            <div class="timeline-item-info">
                                <a href="#" class="text-info font-weight-bold mb-1 d-block">Robert Delaney</a>
                                <small>Send you message
                                    <span class="font-weight-bold">"Are you there?"</span>
                                </small>
                                <p class="mb-0 pb-2">
                                    <small class="text-muted">2 hours ago</small>
                                </p>
                            </div>
                        </div>

                        <div class="timeline-item">
                            <i class="mdi mdi-upload bg-primary-lighten text-primary timeline-icon"></i>
                            <div class="timeline-item-info">
                                <a href="#" class="text-primary font-weight-bold mb-1 d-block">Audrey Tobey</a>
                                <small>Uploaded a photo
                                    <span class="font-weight-bold">"Error.jpg"</span>
                                </small>
                                <p class="mb-0 pb-2">
                                    <small class="text-muted">14 hours ago</small>
                                </p>
                            </div>
                        </div>

                        <div class="timeline-item">
                            <i class="mdi mdi-upload bg-info-lighten text-info timeline-icon"></i>
                            <div class="timeline-item-info">
                                <a href="#" class="text-info font-weight-bold mb-1 d-block">You sold an item</a>
                                <small>Paul Burgess just purchased âHyper - Admin Dashboardâ!</small>
                                <p class="mb-0 pb-2">
                                    <small class="text-muted">1 day ago</small>
                                </p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>


        <div class="rightbar-overlay"></div>
        <!-- /Right-bar -->


        <!-- App js -->
        <script src="resources/js/app.min.js"></script>
    </body>
</html>
