<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>JJONDDuk_Dentist  :></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="resources/images/favicon.ico">
        
        <!-- jquery.js -->
		<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
		<!-- jquery.js ends -->

        <!-- third party css -->
        <link href="resources/css/dataTables.bootstrap4.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/responsive.bootstrap4.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/buttons.bootstrap4.css" rel="stylesheet" type="text/css" />
        <link href="resources/css/select.bootstrap4.css" rel="stylesheet" type="text/css" />
        <!-- third party css end -->

        <!-- App css -->
        <link href="resources/css/icons.min.css?after" rel="stylesheet" type="text/css" />
        <link href="resources/css/app.min.css?after" rel="stylesheet" type="text/css" />
        
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
		
		<!-- 민정js -->
		<script src="resources/js/dentist.js"></script>
		
		<!-- 예린js -->
		<script src="resources/js/push_alarm.js"></script>
	
		<script>
		
			$(document).ready(function() {
				Today_PList();
			});
		</script>
		
    </head>

    <body>
		<form>
			<input type="hidden" id="c_code" value="">
    		<input type="hidden" id="d_code" value="">
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
                                    <h4 class="page-title">환자 리스트 :></h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 


                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <!-- <h4 class="header-title">Basic Data Table</h4> -->
                                        <p class="text-muted font-14 mb-4">
                                        	진료 또는 예약 내역이 있는 환자 리스트입니다.
                                        </p>

										<button class="btn btn-primary" onclick="pushMessageInfo()">내일 예약환자 푸시</button>
                                        <button class="btn btn-info"  data-toggle="modal" data-target="#login-modal">푸시알람</button>
                                        <br><br>
                                        <div id="login-modal" class="modal fade" tabindex="-1" role="dialog" style="display: none;" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-body">
                                                        <div class="text-center mt-2 mb-4">
                                                            <a class="text-success">
                                                                <span><img src="resources/image/logo-dark.png" alt="" height="45" style="margin-top: 15px;"></span>
                                                            </a>
                                                        </div>
    
                                                        <form action="#" class="pl-3 pr-3">
                                                        <p>내원한 모든 환자에게 보내는 푸시알림입니다</p>
                                                        <br>
                                                            <div class="form-group">
                                                                <label for="emailaddress1">푸시알람 제목</label>
                                                                <input class="form-control" type="text" id="push_title" required="" >
                                                            </div>
    
                                                            <div class="form-group">
                                                                <label for="password1">푸시알람 내용</label>
                                                                <input class="form-control" type="text" required="" id="push_text" >
                                                            </div>
    
                                                            <div class="form-group text-center">
                                                                <button id="sendPush"class="btn btn-rounded btn-primary" type="submit" onclick="allPushInfo()">보내기</button>
                                                                
                                                                
                                                            </div>
    
                                                        </form>
    
                                                    </div>
                                                </div><!-- /.modal-content -->
                                            </div><!-- /.modal-dialog -->
                                        </div>
					
                                        <table id="basic-datatable" class="table dt-responsive nowrap" width="100%">
                                            <thead>
                                                 <tr>
                                                    <th>이름</th>
                                                    <th>ID</th>
                                                    <th>생년월일</th>
                                                    <th>전화번호</th>
                                                </tr>
                                            </thead>
                                        
                                        
                                            <tbody id="todayList">
                                            	<!-- <script>
                                            		Today_PList();
                                            	</script> -->
                                            </tbody>
                                        </table>

                                    </div> <!-- end card body-->
                                </div> <!-- end card -->
                            </div><!-- end col-->
                        </div>
                        <!-- end row-->

                    </div> <!-- container -->

                </div> <!-- content -->

                <!-- Footer Start -->
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6">
                                2018 - 2019 © Hyper - Coderthemes.com
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
                                <small>Paul Burgess just purchased “Hyper - Admin Dashboard”!</small>
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
                                <small>Paul Burgess just purchased “Hyper - Admin Dashboard”!</small>
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

        <!-- third party js -->
        <script src="resources/js/jquery.dataTables.min.js"></script>
        <script src="resources/js/dataTables.bootstrap4.js"></script>
        <script src="resources/js/dataTables.responsive.min.js"></script>
        <script src="resources/js/responsive.bootstrap4.min.js"></script>
        <script src="resources/js/dataTables.buttons.min.js"></script>
        <script src="resources/js/buttons.bootstrap4.min.js"></script>
        <script src="resources/js/buttons.html5.min.js"></script>
        <script src="resources/js/buttons.flash.min.js"></script>
        <script src="resources/js/buttons.print.min.js"></script>
        <script src="resources/js/dataTables.keyTable.min.js"></script>
        <script src="resources/js/dataTables.select.min.js"></script>
        <!-- third party js ends -->

        <!-- demo app -->
        <script src="resources/js/demo.datatable-init.js"></script>
        <!-- end demo js-->

    </body>
</html>
