<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Insurance-Dashboard</title>
  <!-- Chart.js -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link rel="stylesheet" href="assets/admin/css/all.css" />
    <link rel="stylesheet" href="assets/admin/css/style.css" />
  </head>
  <body>
    <div class="container">
      <header>
        <nav class="carrotsuite-nav">
          <div class="logo">
            <a href="adminDashboard.jsp" class="active nav-item">
              <img src="img/icon/icon-02-primary.png" alt=" <h1>Insurance</h1>" />
            </a> 
          </div>
	
          <div class="icons left">
           
          </div><div class="icons right">
      
          
          </div>
          <div class="user" id="user">
            <a href="#" class="user-link">Admin</a>
            <div class="user-img-wrapper">
              <img src="assets/admin/images/useravatar.png" alt="User 1" />
            </div>
          </div>
        </nav>
        <!-- end of feeds navigation -->
      </header>
      <main class="main">
        <section class="sidebar">
          <h3>Lead Generation And Feedback</h3>
          <ul class="menu">
            
            <li>
              <a href="adminDashboard.jsp" class="active" title="Dashboard">
                <i class="fas fa-tachometer-alt"></i>
                <span>Dashboard</span>
              </a>
            </li>
            <li>
              <a href="#" title="leads">
                <i class="fas fa-users"></i>
                <span>Leads</span>
              </a>
            </li>
            <li>
              <a href="#" title="reviews">
                <i class="fa-solid fas fa-comments"></i>
                <span>Reviews</span>
              </a>
            </li>
          </ul>
        </section>
        <section class="page-content">
          <article class="header">
            <div class="dropdown">
              <button class="dropbtn">
                Actions <i class="fas fa-caret-up"></i>
              </button>
              <div class="dropdown-content">
          
                <a href="#">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="icon"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    stroke-width="2"
                    stroke="currentColor"
                    fill="none"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                  >
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <rect x="3" y="5" width="18" height="14" rx="2" />
                    <polyline points="3 7 12 13 21 7" />
                  </svg>
                  Send Email
                </a>
                <a href="#">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="icon"
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    stroke-width="2"
                    stroke="currentColor"
                    fill="none"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                  >
                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                    <path
                      d="M7 18a4.6 4.4 0 0 1 0 -9a5 4.5 0 0 1 11 2h1a3.5 3.5 0 0 1 0 7h-1"
                    />
                    <polyline points="9 15 12 12 15 15" />
                    <line x1="12" y1="12" x2="12" y2="21" />
                  </svg>
                  Export
                </a>
              </div>
            </div>
          </article>
          <article class="board">
            <p>Dasboard</p>
            <section class="boxes">
              <div class="box bg-pink">
                <p>Registered Custombers</p>
                <div class="icon-value">
                  <div class="icon">
                    <i class="fas fa-users"></i>
                  </div>
                  <p class="value">50</p>
                </div>
              </div>
         
              <div class="box bg-cyan">
                <p>Total Number Reviews</p>
                <div class="icon-value">
                  <div class="icon"><i class="fab fa-forumbee"></i></div>
                  <p class="value">43</p>
                </div>
              </div>
             
            </section>
          	<section class="boxes">
            	<div class="box">
            	<canvas id="userChart"></canvas>
				  
				  <script src="js/script.js"></script>
           			</div>
           </section>			
          </article>
        </section>
      </main>
    </div>
    <script>
      const menuLinks = document.querySelectorAll(".sidebar .menu a");

      for (const link of menuLinks) {
        link.addEventListener("mouseenter", function () {
          if (window.matchMedia("(max-width: 626px)").matches) {
            const tooltip = this.querySelector("span").textContent;
            this.setAttribute("title", tooltip);
          } else {
            this.removeAttribute("title");
          }
        });
      }
    </script>
  </body>
</html>
