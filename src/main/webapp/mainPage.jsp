<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.Date, java.text.SimpleDateFormat, java.util.Locale"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
<link rel="stylesheet" href="resource/css/style.css">
</head>
<body>
	<div class="app-container">
		<div class="app-header">
			<div class="app-header-left">
				<span class="app-icon"></span>
				<p class="app-name">TRAFFIC SOLUTION</p>
				<div class="search-wrapper">
					<input class="search-input" type="text" placeholder="Search">
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
						fill="none" stroke="currentColor" stroke-linecap="round"
						stroke-linejoin="round" stroke-width="2"
						class="feather feather-search" viewBox="0 0 24 24">
        <defs></defs>
        <circle cx="11" cy="11" r="8"></circle>
        <path d="M21 21l-4.35-4.35"></path>
        </svg>
				</div>
			</div>
			<div class="app-header-right">
				<button class="mode-switch" title="Switch Theme">
					<svg class="moon" fill="none" stroke="currentColor"
						stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
						width="24" height="24" viewBox="0 0 24 24">
        <defs></defs>
        <path d="M21 12.79A9 9 0 1111.21 3 7 7 0 0021 12.79z"></path>
        </svg>
				</button>
				<button class="profile-btn">
					<svg xmlns="http://www.w3.org/2000/svg" width="19" height="19"
						fill="currentColor" class="bi bi-person-circle"
						viewBox="0 0 19 19">
                <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
                <path fill-rule="evenodd"
							d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
              </svg>
					<span>ADMIN</span>
				</button>
			</div>
			<button class="messages-btn">
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
					viewBox="0 0 24 24" fill="none" stroke="currentColor"
					stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
					class="feather feather-message-circle">
        <path
						d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z" /></svg>
			</button>
		</div>
		<div class="app-content">
			<div class="app-sidebar">
				<%--왼쪽 사이드바 부분 아이콘/홈페이지, 진행중, 완료, 전체--%>
				<a href="" class="app-sidebar-link active"> <svg
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						class="feather feather-home"> <path
							d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z" /> <polyline
							points="9 22 9 12 15 12 15 22" /></svg>
				</a> <a href="" class="app-sidebar-link"> <svg
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						class="feather feather-square">
						<rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect></svg>
				</a> <a href="" class="app-sidebar-link"> <svg
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						class="feather feather-check-square">
						<polyline points="9 11 12 14 22 4"></polyline>
						<path
							d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg>
				</a> <a href="" class="app-sidebar-link"> <svg
						xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						class="feather feather-folder">
						<path
							d="M22 19a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h5l2 3h9a2 2 0 0 1 2 2z"></path></svg>
				</a>
			</div>
			<div class="projects-section">
				<div class="projects-section-header">
					<p>HOME</p>
					<%
					// 현재 날짜 가져오기
					Date now = new Date();
					SimpleDateFormat sdf = new SimpleDateFormat("YYYY MMMM dd", Locale.ENGLISH); // "2025 March 08" 형식
					String formattedDate = sdf.format(now);
					%>
					<p class="time"><%=formattedDate%></p>
				</div>
				<div class="projects-section-line">
					<%--신고 접수 건수를 보여주는 부분--%>
					<div class="projects-status">
						<div class="item-status">
							<span class="status-number">5</span> <span class="status-type">In
								Progress</span>
						</div>
						<div class="item-status">
							<span class="status-number">20</span> <span class="status-type">Completed</span>
						</div>
						<div class="item-status">
							<span class="status-number">25</span> <span class="status-type">Total</span>
						</div>
					</div>
					<div class="view-actions">
						<button class="view-btn list-view" title="List View">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								class="feather feather-list">
        <line x1="8" y1="6" x2="21" y2="6" />
        <line x1="8" y1="12" x2="21" y2="12" />
        <line x1="8" y1="18" x2="21" y2="18" />
        <line x1="3" y1="6" x2="3.01" y2="6" />
        <line x1="3" y1="12" x2="3.01" y2="12" />
        <line x1="3" y1="18" x2="3.01" y2="18" /></svg>
						</button>
						<button class="view-btn grid-view active" title="Grid View">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								class="feather feather-grid">
        <rect x="3" y="3" width="7" height="7" />
        <rect x="14" y="3" width="7" height="7" />
        <rect x="14" y="14" width="7" height="7" />
        <rect x="3" y="14" width="7" height="7" /></svg>
						</button>
					</div>
				</div>
				<div class="project-boxes jsGridView">
					<div class="project-box-wrapper">
						<div class="project-box" style="background-color: #fee4cb;">
							<div class="project-box-header">
								<span>March 01, 2025</span>
								<div class="more-wrapper">
									<button class="project-btn-more">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-circle">
											<circle cx="12" cy="12" r="10"></circle></svg>
									</button>
								</div>
							</div>
							<div class="project-box-content-header">
								<p class="box-content-header">헬멧 미착용</p>
								<p class="box-content-subheader">2025-03-01 경기도 수원시 장안구</p>
							</div>
							<div class="box-progress-wrapper">
								<p class="box-progress-header">Accuracy</p>
								<div class="box-progress-bar">
									<span class="box-progress"
										style="width: 60%; background-color: #ff942e"></span>
								</div>
								<p class="box-progress-percentage">60%</p>
							</div>
							<div class="project-box-footer">
								
								<div class="days-left" style="color: #ff942e;">2 일전
								</div>
							</div>
						</div>
					</div>

					<div class="project-box-wrapper">
						<div class="project-box" style="background-color: #ffd3e2;">
							<div class="project-box-header">
								<span>March 01, 2025</span>
								<div class="more-wrapper">
									<button class="project-btn-more">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-circle">
											<circle cx="12" cy="12" r="10"></circle></svg>
									</button>
								</div>
							</div>
							<div class="project-box-content-header">
								<p class="box-content-header">2인 탑승</p>
								<p class="box-content-subheader">2025-03-01 경기도 수원시 팔달구</p>
							</div>
							<div class="box-progress-wrapper">
								<p class="box-progress-header">Accuracy</p>
								<div class="box-progress-bar">
									<span class="box-progress"
										style="width: 20%; background-color: #df3670"></span>
								</div>
								<p class="box-progress-percentage">20%</p>
							</div>
							<div class="project-box-footer">
								<div class="days-left" style="color: #df3670;">2 일전
								</div>
							</div>
						</div>
					</div>
					<div class="project-box-wrapper">
						<div class="project-box" style="background-color: #c8f7dc;">
							<div class="project-box-header">
								<span>March 01, 2025</span>
								<div class="more-wrapper">
									<button class="project-btn-more">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-circle">
											<circle cx="12" cy="12" r="10"></circle></svg>
									</button>
								</div>
							</div>
							<div class="project-box-content-header">
								<p class="box-content-header">인도 주행</p>
								<p class="box-content-subheader">2025-03-01 경기도 수원시 팔달구</p>
							</div>
							<div class="box-progress-wrapper">
								<p class="box-progress-header">Accuracy</p>
								<div class="box-progress-bar">
									<span class="box-progress"
										style="width: 60%; background-color: #34c471"></span>
								</div>
								<p class="box-progress-percentage">60%</p>
							</div>
							<div class="project-box-footer">
								<div class="days-left" style="color: #34c471;">2 일전
								</div>
							</div>
						</div>
					</div>
					<div class="project-box-wrapper">
						<div class="project-box" style="background-color: #d5deff;">
							<div class="project-box-header">
								<span>March 01, 2025</span>
								<div class="more-wrapper">
									<button class="project-btn-more">

										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-check-circle">
											<path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
											<polyline points="22 4 12 14.01 9 11.01"></polyline></svg>
									</button>
								</div>
							</div>
							<div class="project-box-content-header">
								<p class="box-content-header">헬멧 미착용</p>
								<p class="box-content-subheader">2025-03-01 경기도 수원시 영통구</p>
							</div>
							<div class="box-progress-wrapper">
								<p class="box-progress-header">Accuracy</p>
								<div class="box-progress-bar">
									<span class="box-progress"
										style="width: 40%; background-color: #4067f9"></span>
								</div>
								<p class="box-progress-percentage">40%</p>
							</div>
							<div class="project-box-footer">
								<div class="days-left" style="color: #4067f9;">2 일전
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="messages-section">
				<button class="messages-close">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
						viewBox="0 0 24 24" fill="none" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						class="feather feather-x-circle">
        <circle cx="12" cy="12" r="10" />
        <line x1="15" y1="9" x2="9" y2="15" />
        <line x1="9" y1="9" x2="15" y2="15" /></svg>
				</button>
				<div class="projects-section-header">
					<p>공지사항</p>
				</div>
				<div class="messages">
					<div class="message-box">
						<div class="message-content">
							<div class="message-header">
								<div class="title">수원시 전동킥보드 안전규제 관련 업데이트</div>
								<div class="star-checkbox">
									<input type="checkbox" id="star-1"> <label for="star-1">
										<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-star">
        <polygon
												points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2" /></svg>
									</label>
								</div>
							</div>
							<p class="message-line">최근 증가하는 전동킥보드 사고를 예방하기 위해...</p>
							<p class="message-line time">Dec, 12</p>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<script src="resource/js/main.js"></script>

</body>
</html>
