<html>
<head>
<meta charset="ISO-8859-1">

<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminSideBar.jsp"></jsp:include>

<div class="pagetitle">
<jsp:include page="AdminHeader.jsp"></jsp:include>
   <main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">AdminDashboard</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-12">
          <div class="row">

            <!-- Sales Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Sales <span>| Today</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${TodayExpense }</h6>
                      <span class="text-success small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Sales Card -->

            <!-- Revenue Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Revenue <span>| This Month</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${TotalExpense }</h6>
                      <span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->

            <!-- Customers Card -->
            <div class="col-xxl-4 col-xl-12">

              <div class="card info-card customers-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Customers <span>| This Year</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${TotalUser}</h6>
                      <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span>

                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Customers Card -->

            <!-- Reports -->
            <div class="col-12">
              <div class="card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Reports <span>/Today</span></h5>

                  <!-- Line Chart -->
                  <div id="reportsChart" style="min-height: 365px;"><div id="apexchartsnqdzvcjp" class="apexcharts-canvas apexchartsnqdzvcjp apexcharts-theme-light" style="width: 885px; height: 350px;"><svg id="SvgjsSvg1308" width="885" height="350" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg apexcharts-zoomable" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><rect id="SvgjsRect1315" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g id="SvgjsG1434" class="apexcharts-yaxis" rel="0" transform="translate(15.635351181030273, 0)"><g id="SvgjsG1435" class="apexcharts-yaxis-texts-g"><text id="SvgjsText1437" font-family="Helvetica, Arial, sans-serif" x="20" y="31.5" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1438">100</tspan><title>100</title></text><text id="SvgjsText1440" font-family="Helvetica, Arial, sans-serif" x="20" y="85.63599990844726" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1441">80</tspan><title>80</title></text><text id="SvgjsText1443" font-family="Helvetica, Arial, sans-serif" x="20" y="139.77199981689452" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1444">60</tspan><title>60</title></text><text id="SvgjsText1446" font-family="Helvetica, Arial, sans-serif" x="20" y="193.90799972534177" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1447">40</tspan><title>40</title></text><text id="SvgjsText1449" font-family="Helvetica, Arial, sans-serif" x="20" y="248.04399963378904" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1450">20</tspan><title>20</title></text><text id="SvgjsText1452" font-family="Helvetica, Arial, sans-serif" x="20" y="302.1799995422363" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1453">0</tspan><title>0</title></text></g></g><g id="SvgjsG1310" class="apexcharts-inner apexcharts-graphical" transform="translate(45.63535118103027, 30)"><defs id="SvgjsDefs1309"><clipPath id="gridRectMasknqdzvcjp"><rect id="SvgjsRect1320" width="835.3646488189697" height="272.6799995422363" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMasknqdzvcjp"></clipPath><clipPath id="nonForecastMasknqdzvcjp"></clipPath><clipPath id="gridRectMarkerMasknqdzvcjp"><rect id="SvgjsRect1321" width="877.3646488189697" height="318.6799995422363" x="-24" y="-24" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><linearGradient id="SvgjsLinearGradient1339" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop1340" stop-opacity="0.3" stop-color="rgba(65,84,241,0.3)" offset="0"></stop><stop id="SvgjsStop1341" stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="0.9"></stop><stop id="SvgjsStop1342" stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="1"></stop></linearGradient><linearGradient id="SvgjsLinearGradient1361" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop1362" stop-opacity="0.3" stop-color="rgba(46,202,106,0.3)" offset="0"></stop><stop id="SvgjsStop1363" stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="0.9"></stop><stop id="SvgjsStop1364" stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="1"></stop></linearGradient><linearGradient id="SvgjsLinearGradient1383" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop1384" stop-opacity="0.3" stop-color="rgba(255,119,29,0.3)" offset="0"></stop><stop id="SvgjsStop1385" stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="0.9"></stop><stop id="SvgjsStop1386" stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="1"></stop></linearGradient></defs><line id="SvgjsLine1316" x1="0" y1="0" x2="0" y2="270.6799995422363" stroke="#b6b6b6" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs" x="0" y="0" width="1" height="270.6799995422363" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><line id="SvgjsLine1393" x1="0" y1="271.6799995422363" x2="0" y2="277.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1394" x1="127.5945613567646" y1="271.6799995422363" x2="127.5945613567646" y2="277.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1395" x1="255.1891227135292" y1="271.6799995422363" x2="255.1891227135292" y2="277.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1396" x1="382.7836840702938" y1="271.6799995422363" x2="382.7836840702938" y2="277.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1397" x1="510.3782454270584" y1="271.6799995422363" x2="510.3782454270584" y2="277.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1398" x1="637.972806783823" y1="271.6799995422363" x2="637.972806783823" y2="277.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1399" x1="765.5673681405876" y1="271.6799995422363" x2="765.5673681405876" y2="277.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><g id="SvgjsG1389" class="apexcharts-grid"><g id="SvgjsG1390" class="apexcharts-gridlines-horizontal"><line id="SvgjsLine1401" x1="0" y1="54.13599990844726" x2="829.3646488189697" y2="54.13599990844726" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1402" x1="0" y1="108.27199981689452" x2="829.3646488189697" y2="108.27199981689452" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1403" x1="0" y1="162.40799972534177" x2="829.3646488189697" y2="162.40799972534177" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1404" x1="0" y1="216.54399963378904" x2="829.3646488189697" y2="216.54399963378904" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g id="SvgjsG1391" class="apexcharts-gridlines-vertical"></g><line id="SvgjsLine1407" x1="0" y1="270.6799995422363" x2="829.3646488189697" y2="270.6799995422363" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine1406" x1="0" y1="1" x2="0" y2="270.6799995422363" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG1392" class="apexcharts-grid-borders"><line id="SvgjsLine1400" x1="0" y1="0" x2="829.3646488189697" y2="0" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1405" x1="0" y1="270.6799995422363" x2="829.3646488189697" y2="270.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1433" x1="0" y1="271.6799995422363" x2="829.3646488189697" y2="271.6799995422363" stroke="#e0e0e0" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt"></line></g><g id="SvgjsG1322" class="apexcharts-area-series apexcharts-plot-series"><g id="SvgjsG1323" class="apexcharts-series" seriesName="Sales" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath1343" d="M 0 270.6799995422363 L 0 186.76919968414308C 66.9871447123014 186.76919968414308 124.40469732284545 162.40799972534177 191.39184203514685 162.40799972534177C 236.04993851001444 162.40799972534177 274.32830691704385 194.88959967041015 318.98640339191144 194.88959967041015C 363.64449986677903 194.88959967041015 401.92286827380843 132.6331997756958 446.580964748676 132.6331997756958C 491.2390612235436 132.6331997756958 529.517429630573 156.99439973449705 574.1755261054406 156.99439973449705C 618.8336225803081 156.99439973449705 657.1119909873375 48.72239991760253 701.7700874622051 48.72239991760253C 746.4281839370727 48.72239991760253 784.7065523441021 119.09919979858398 829.3646488189697 119.09919979858398C 829.3646488189697 119.09919979858398 829.3646488189697 119.09919979858398 829.3646488189697 270.6799995422363M 829.3646488189697 119.09919979858398z" fill="url(#SvgjsLinearGradient1339)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMasknqdzvcjp)" pathTo="M 0 270.6799995422363 L 0 186.76919968414308C 66.9871447123014 186.76919968414308 124.40469732284545 162.40799972534177 191.39184203514685 162.40799972534177C 236.04993851001444 162.40799972534177 274.32830691704385 194.88959967041015 318.98640339191144 194.88959967041015C 363.64449986677903 194.88959967041015 401.92286827380843 132.6331997756958 446.580964748676 132.6331997756958C 491.2390612235436 132.6331997756958 529.517429630573 156.99439973449705 574.1755261054406 156.99439973449705C 618.8336225803081 156.99439973449705 657.1119909873375 48.72239991760253 701.7700874622051 48.72239991760253C 746.4281839370727 48.72239991760253 784.7065523441021 119.09919979858398 829.3646488189697 119.09919979858398C 829.3646488189697 119.09919979858398 829.3646488189697 119.09919979858398 829.3646488189697 270.6799995422363M 829.3646488189697 119.09919979858398z" pathFrom="M -1 270.6799995422363 L -1 270.6799995422363 L 191.39184203514685 270.6799995422363 L 318.98640339191144 270.6799995422363 L 446.580964748676 270.6799995422363 L 574.1755261054406 270.6799995422363 L 701.7700874622051 270.6799995422363 L 829.3646488189697 270.6799995422363"></path><path id="SvgjsPath1344" d="M 0 186.76919968414308C 66.9871447123014 186.76919968414308 124.40469732284545 162.40799972534177 191.39184203514685 162.40799972534177C 236.04993851001444 162.40799972534177 274.32830691704385 194.88959967041015 318.98640339191144 194.88959967041015C 363.64449986677903 194.88959967041015 401.92286827380843 132.6331997756958 446.580964748676 132.6331997756958C 491.2390612235436 132.6331997756958 529.517429630573 156.99439973449705 574.1755261054406 156.99439973449705C 618.8336225803081 156.99439973449705 657.1119909873375 48.72239991760253 701.7700874622051 48.72239991760253C 746.4281839370727 48.72239991760253 784.7065523441021 119.09919979858398 829.3646488189697 119.09919979858398" fill="none" fill-opacity="1" stroke="#4154f1" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMasknqdzvcjp)" pathTo="M 0 186.76919968414308C 66.9871447123014 186.76919968414308 124.40469732284545 162.40799972534177 191.39184203514685 162.40799972534177C 236.04993851001444 162.40799972534177 274.32830691704385 194.88959967041015 318.98640339191144 194.88959967041015C 363.64449986677903 194.88959967041015 401.92286827380843 132.6331997756958 446.580964748676 132.6331997756958C 491.2390612235436 132.6331997756958 529.517429630573 156.99439973449705 574.1755261054406 156.99439973449705C 618.8336225803081 156.99439973449705 657.1119909873375 48.72239991760253 701.7700874622051 48.72239991760253C 746.4281839370727 48.72239991760253 784.7065523441021 119.09919979858398 829.3646488189697 119.09919979858398" pathFrom="M -1 270.6799995422363 L -1 270.6799995422363 L 191.39184203514685 270.6799995422363 L 318.98640339191144 270.6799995422363 L 446.580964748676 270.6799995422363 L 574.1755261054406 270.6799995422363 L 701.7700874622051 270.6799995422363 L 829.3646488189697 270.6799995422363" fill-rule="evenodd"></path><g id="SvgjsG1324" class="apexcharts-series-markers-wrap" data:realIndex="0"><g id="SvgjsG1326" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasknqdzvcjp)"><circle id="SvgjsCircle1327" r="4" cx="0" cy="186.76919968414308" class="apexcharts-marker no-pointer-events wpaqervhc" stroke="#ffffff" fill="#4154f1" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="0" j="0" index="0" default-marker-size="4"></circle><circle id="SvgjsCircle1328" r="4" cx="191.39184203514685" cy="162.40799972534177" class="apexcharts-marker no-pointer-events wo3jakxpb" stroke="#ffffff" fill="#4154f1" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="1" j="1" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1329" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasknqdzvcjp)"><circle id="SvgjsCircle1330" r="4" cx="318.98640339191144" cy="194.88959967041015" class="apexcharts-marker no-pointer-events wu5117yzxl" stroke="#ffffff" fill="#4154f1" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="2" j="2" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1331" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasknqdzvcjp)"><circle id="SvgjsCircle1332" r="4" cx="446.580964748676" cy="132.6331997756958" class="apexcharts-marker no-pointer-events wjym05oql" stroke="#ffffff" fill="#4154f1" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="3" j="3" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1333" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasknqdzvcjp)"><circle id="SvgjsCircle1334" r="4" cx="574.1755261054406" cy="156.99439973449705" class="apexcharts-marker no-pointer-events wto57jti6" stroke="#ffffff" fill="#4154f1" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="4" j="4" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1335" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasknqdzvcjp)"><circle id="SvgjsCircle1336" r="4" cx="701.7700874622051" cy="48.72239991760253" class="apexcharts-marker no-pointer-events wggw1hbtv" stroke="#ffffff" fill="#4154f1" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="5" j="5" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1337" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasknqdzvcjp)"><circle id="SvgjsCircle1338" r="4" cx="829.3646488189697" cy="119.09919979858398" class="apexcharts-marker no-pointer-events wivz2tm0wf" stroke="#ffffff" fill="#4154f1" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="6" j="6" index="0" default-marker-size="4"></circle></g></g></g><g id="SvgjsG1345" class="apexcharts-series" seriesName="Revenue" data:longestSeries="true" rel="2" data:realIndex="1"><path id="SvgjsPath1365" d="M 0 270.6799995422363 L 0 240.90519959259032C 66.9871447123014 240.90519959259032 124.40469732284545 184.0623996887207 191.39184203514685 184.0623996887207C 236.04993851001444 184.0623996887207 274.32830691704385 148.87399974822998 318.98640339191144 148.87399974822998C 363.64449986677903 148.87399974822998 401.92286827380843 184.0623996887207 446.580964748676 184.0623996887207C 491.2390612235436 184.0623996887207 529.517429630573 178.64879969787597 574.1755261054406 178.64879969787597C 618.8336225803081 178.64879969787597 657.1119909873375 129.92639978027344 701.7700874622051 129.92639978027344C 746.4281839370727 129.92639978027344 784.7065523441021 159.70119972991944 829.3646488189697 159.70119972991944C 829.3646488189697 159.70119972991944 829.3646488189697 159.70119972991944 829.3646488189697 270.6799995422363M 829.3646488189697 159.70119972991944z" fill="url(#SvgjsLinearGradient1361)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="1" clip-path="url(#gridRectMasknqdzvcjp)" pathTo="M 0 270.6799995422363 L 0 240.90519959259032C 66.9871447123014 240.90519959259032 124.40469732284545 184.0623996887207 191.39184203514685 184.0623996887207C 236.04993851001444 184.0623996887207 274.32830691704385 148.87399974822998 318.98640339191144 148.87399974822998C 363.64449986677903 148.87399974822998 401.92286827380843 184.0623996887207 446.580964748676 184.0623996887207C 491.2390612235436 184.0623996887207 529.517429630573 178.64879969787597 574.1755261054406 178.64879969787597C 618.8336225803081 178.64879969787597 657.1119909873375 129.92639978027344 701.7700874622051 129.92639978027344C 746.4281839370727 129.92639978027344 784.7065523441021 159.70119972991944 829.3646488189697 159.70119972991944C 829.3646488189697 159.70119972991944 829.3646488189697 159.70119972991944 829.3646488189697 270.6799995422363M 829.3646488189697 159.70119972991944z" pathFrom="M -1 270.6799995422363 L -1 270.6799995422363 L 191.39184203514685 270.6799995422363 L 318.98640339191144 270.6799995422363 L 446.580964748676 270.6799995422363 L 574.1755261054406 270.6799995422363 L 701.7700874622051 270.6799995422363 L 829.3646488189697 270.6799995422363"></path><path id="SvgjsPath1366" d="M 0 240.90519959259032C 66.9871447123014 240.90519959259032 124.40469732284545 184.0623996887207 191.39184203514685 184.0623996887207C 236.04993851001444 184.0623996887207 274.32830691704385 148.87399974822998 318.98640339191144 148.87399974822998C 363.64449986677903 148.87399974822998 401.92286827380843 184.0623996887207 446.580964748676 184.0623996887207C 491.2390612235436 184.0623996887207 529.517429630573 178.64879969787597 574.1755261054406 178.64879969787597C 618.8336225803081 178.64879969787597 657.1119909873375 129.92639978027344 701.7700874622051 129.92639978027344C 746.4281839370727 129.92639978027344 784.7065523441021 159.70119972991944 829.3646488189697 159.70119972991944" fill="none" fill-opacity="1" stroke="#2eca6a" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="1" clip-path="url(#gridRectMasknqdzvcjp)" pathTo="M 0 240.90519959259032C 66.9871447123014 240.90519959259032 124.40469732284545 184.0623996887207 191.39184203514685 184.0623996887207C 236.04993851001444 184.0623996887207 274.32830691704385 148.87399974822998 318.98640339191144 148.87399974822998C 363.64449986677903 148.87399974822998 401.92286827380843 184.0623996887207 446.580964748676 184.0623996887207C 491.2390612235436 184.0623996887207 529.517429630573 178.64879969787597 574.1755261054406 178.64879969787597C 618.8336225803081 178.64879969787597 657.1119909873375 129.92639978027344 701.7700874622051 129.92639978027344C 746.4281839370727 129.92639978027344 784.7065523441021 159.70119972991944 829.3646488189697 159.70119972991944" pathFrom="M -1 270.6799995422363 L -1 270.6799995422363 L 191.39184203514685 270.6799995422363 L 318.98640339191144 270.6799995422363 L 446.580964748676 270.6799995422363 L 574.1755261054406 270.6799995422363 L 701.7700874622051 270.6799995422363 L 829.3646488189697 270.6799995422363" fill-rule="evenodd"></path><g id="SvgjsG1346" class="apexcharts-series-markers-wrap" data:realIndex="1"><g id="SvgjsG1348" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasknqdzvcjp)"><circle id="SvgjsCircle1349" r="4" cx="0" cy="240.90519959259032" class="apexcharts-marker no-pointer-events wlpu5c6jq" stroke="#ffffff" fill="#2eca6a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="0" j="0" index="1" default-marker-size="4"></circle><circle id="SvgjsCircle1350" r="4" cx="191.39184203514685" cy="184.0623996887207" class="apexcharts-marker no-pointer-events wp6tkexgm" stroke="#ffffff" fill="#2eca6a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="1" j="1" index="1" default-marker-size="4"></circle></g><g id="SvgjsG1351" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasknqdzvcjp)"><circle id="SvgjsCircle1352" r="4" cx="318.98640339191144" cy="148.87399974822998" class="apexcharts-marker no-pointer-events wlqmeo3vw" stroke="#ffffff" fill="#2eca6a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="2" j="2" index="1" default-marker-size="4"></circle></g><g id="SvgjsG1353" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasknqdzvcjp)"><circle id="SvgjsCircle1354" r="4" cx="446.580964748676" cy="184.0623996887207" class="apexcharts-marker no-pointer-events wpuhz0q34" stroke="#ffffff" fill="#2eca6a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="3" j="3" index="1" default-marker-size="4"></circle></g><g id="SvgjsG1355" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasknqdzvcjp)"><circle id="SvgjsCircle1356" r="4" cx="574.1755261054406" cy="178.64879969787597" class="apexcharts-marker no-pointer-events wrdow9oiv" stroke="#ffffff" fill="#2eca6a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="4" j="4" index="1" default-marker-size="4"></circle></g><g id="SvgjsG1357" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasknqdzvcjp)"><circle id="SvgjsCircle1358" r="4" cx="701.7700874622051" cy="129.92639978027344" class="apexcharts-marker no-pointer-events wc2or7xsm" stroke="#ffffff" fill="#2eca6a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="5" j="5" index="1" default-marker-size="4"></circle></g><g id="SvgjsG1359" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasknqdzvcjp)"><circle id="SvgjsCircle1360" r="4" cx="829.3646488189697" cy="159.70119972991944" class="apexcharts-marker no-pointer-events w6kumyyvn" stroke="#ffffff" fill="#2eca6a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="6" j="6" index="1" default-marker-size="4"></circle></g></g></g><g id="SvgjsG1367" class="apexcharts-series" seriesName="Customers" data:longestSeries="true" rel="3" data:realIndex="2"><path id="SvgjsPath1387" d="M 0 270.6799995422363 L 0 230.07799961090086C 66.9871447123014 230.07799961090086 124.40469732284545 240.90519959259032 191.39184203514685 240.90519959259032C 236.04993851001444 240.90519959259032 274.32830691704385 184.0623996887207 318.98640339191144 184.0623996887207C 363.64449986677903 184.0623996887207 401.92286827380843 221.9575996246338 446.580964748676 221.9575996246338C 491.2390612235436 221.9575996246338 529.517429630573 246.31879958343504 574.1755261054406 246.31879958343504C 618.8336225803081 246.31879958343504 657.1119909873375 205.7167996520996 701.7700874622051 205.7167996520996C 746.4281839370727 205.7167996520996 784.7065523441021 240.90519959259032 829.3646488189697 240.90519959259032C 829.3646488189697 240.90519959259032 829.3646488189697 240.90519959259032 829.3646488189697 270.6799995422363M 829.3646488189697 240.90519959259032z" fill="url(#SvgjsLinearGradient1383)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="2" clip-path="url(#gridRectMasknqdzvcjp)" pathTo="M 0 270.6799995422363 L 0 230.07799961090086C 66.9871447123014 230.07799961090086 124.40469732284545 240.90519959259032 191.39184203514685 240.90519959259032C 236.04993851001444 240.90519959259032 274.32830691704385 184.0623996887207 318.98640339191144 184.0623996887207C 363.64449986677903 184.0623996887207 401.92286827380843 221.9575996246338 446.580964748676 221.9575996246338C 491.2390612235436 221.9575996246338 529.517429630573 246.31879958343504 574.1755261054406 246.31879958343504C 618.8336225803081 246.31879958343504 657.1119909873375 205.7167996520996 701.7700874622051 205.7167996520996C 746.4281839370727 205.7167996520996 784.7065523441021 240.90519959259032 829.3646488189697 240.90519959259032C 829.3646488189697 240.90519959259032 829.3646488189697 240.90519959259032 829.3646488189697 270.6799995422363M 829.3646488189697 240.90519959259032z" pathFrom="M -1 270.6799995422363 L -1 270.6799995422363 L 191.39184203514685 270.6799995422363 L 318.98640339191144 270.6799995422363 L 446.580964748676 270.6799995422363 L 574.1755261054406 270.6799995422363 L 701.7700874622051 270.6799995422363 L 829.3646488189697 270.6799995422363"></path><path id="SvgjsPath1388" d="M 0 230.07799961090086C 66.9871447123014 230.07799961090086 124.40469732284545 240.90519959259032 191.39184203514685 240.90519959259032C 236.04993851001444 240.90519959259032 274.32830691704385 184.0623996887207 318.98640339191144 184.0623996887207C 363.64449986677903 184.0623996887207 401.92286827380843 221.9575996246338 446.580964748676 221.9575996246338C 491.2390612235436 221.9575996246338 529.517429630573 246.31879958343504 574.1755261054406 246.31879958343504C 618.8336225803081 246.31879958343504 657.1119909873375 205.7167996520996 701.7700874622051 205.7167996520996C 746.4281839370727 205.7167996520996 784.7065523441021 240.90519959259032 829.3646488189697 240.90519959259032" fill="none" fill-opacity="1" stroke="#ff771d" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="2" clip-path="url(#gridRectMasknqdzvcjp)" pathTo="M 0 230.07799961090086C 66.9871447123014 230.07799961090086 124.40469732284545 240.90519959259032 191.39184203514685 240.90519959259032C 236.04993851001444 240.90519959259032 274.32830691704385 184.0623996887207 318.98640339191144 184.0623996887207C 363.64449986677903 184.0623996887207 401.92286827380843 221.9575996246338 446.580964748676 221.9575996246338C 491.2390612235436 221.9575996246338 529.517429630573 246.31879958343504 574.1755261054406 246.31879958343504C 618.8336225803081 246.31879958343504 657.1119909873375 205.7167996520996 701.7700874622051 205.7167996520996C 746.4281839370727 205.7167996520996 784.7065523441021 240.90519959259032 829.3646488189697 240.90519959259032" pathFrom="M -1 270.6799995422363 L -1 270.6799995422363 L 191.39184203514685 270.6799995422363 L 318.98640339191144 270.6799995422363 L 446.580964748676 270.6799995422363 L 574.1755261054406 270.6799995422363 L 701.7700874622051 270.6799995422363 L 829.3646488189697 270.6799995422363" fill-rule="evenodd"></path><g id="SvgjsG1368" class="apexcharts-series-markers-wrap" data:realIndex="2"><g id="SvgjsG1370" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasknqdzvcjp)"><circle id="SvgjsCircle1371" r="4" cx="0" cy="230.07799961090086" class="apexcharts-marker no-pointer-events wktz6qqla" stroke="#ffffff" fill="#ff771d" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="0" j="0" index="2" default-marker-size="4"></circle><circle id="SvgjsCircle1372" r="4" cx="191.39184203514685" cy="240.90519959259032" class="apexcharts-marker no-pointer-events wm2rhclf" stroke="#ffffff" fill="#ff771d" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="1" j="1" index="2" default-marker-size="4"></circle></g><g id="SvgjsG1373" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasknqdzvcjp)"><circle id="SvgjsCircle1374" r="4" cx="318.98640339191144" cy="184.0623996887207" class="apexcharts-marker no-pointer-events wy47rg83nf" stroke="#ffffff" fill="#ff771d" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="2" j="2" index="2" default-marker-size="4"></circle></g><g id="SvgjsG1375" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasknqdzvcjp)"><circle id="SvgjsCircle1376" r="4" cx="446.580964748676" cy="221.9575996246338" class="apexcharts-marker no-pointer-events wi8u2j1n" stroke="#ffffff" fill="#ff771d" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="3" j="3" index="2" default-marker-size="4"></circle></g><g id="SvgjsG1377" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasknqdzvcjp)"><circle id="SvgjsCircle1378" r="4" cx="574.1755261054406" cy="246.31879958343504" class="apexcharts-marker no-pointer-events wzkaziqxs" stroke="#ffffff" fill="#ff771d" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="4" j="4" index="2" default-marker-size="4"></circle></g><g id="SvgjsG1379" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasknqdzvcjp)"><circle id="SvgjsCircle1380" r="4" cx="701.7700874622051" cy="205.7167996520996" class="apexcharts-marker no-pointer-events w3ys16sxn" stroke="#ffffff" fill="#ff771d" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="5" j="5" index="2" default-marker-size="4"></circle></g><g id="SvgjsG1381" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasknqdzvcjp)"><circle id="SvgjsCircle1382" r="4" cx="829.3646488189697" cy="240.90519959259032" class="apexcharts-marker no-pointer-events whuvjc0s7" stroke="#ffffff" fill="#ff771d" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="6" j="6" index="2" default-marker-size="4"></circle></g></g></g><g id="SvgjsG1325" class="apexcharts-datalabels" data:realIndex="0"></g><g id="SvgjsG1347" class="apexcharts-datalabels" data:realIndex="1"></g><g id="SvgjsG1369" class="apexcharts-datalabels" data:realIndex="2"></g></g><line id="SvgjsLine1408" x1="0" y1="0" x2="829.3646488189697" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine1409" x1="0" y1="0" x2="829.3646488189697" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG1410" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG1411" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"><text id="SvgjsText1413" font-family="Helvetica, Arial, sans-serif" x="0" y="299.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1414">00:00</tspan><title>00:00</title></text><text id="SvgjsText1416" font-family="Helvetica, Arial, sans-serif" x="127.5945613567646" y="299.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1417">01:00</tspan><title>01:00</title></text><text id="SvgjsText1419" font-family="Helvetica, Arial, sans-serif" x="255.1891227135292" y="299.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1420">02:00</tspan><title>02:00</title></text><text id="SvgjsText1422" font-family="Helvetica, Arial, sans-serif" x="382.7836840702938" y="299.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1423">03:00</tspan><title>03:00</title></text><text id="SvgjsText1425" font-family="Helvetica, Arial, sans-serif" x="510.3782454270584" y="299.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1426">04:00</tspan><title>04:00</title></text><text id="SvgjsText1428" font-family="Helvetica, Arial, sans-serif" x="637.972806783823" y="299.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1429">05:00</tspan><title>05:00</title></text><text id="SvgjsText1431" font-family="Helvetica, Arial, sans-serif" x="765.5673681405876" y="299.6799995422363" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1432">06:00</tspan><title>06:00</title></text></g></g><g id="SvgjsG1454" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG1455" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG1456" class="apexcharts-point-annotations"></g><rect id="SvgjsRect1457" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-zoom-rect"></rect><rect id="SvgjsRect1458" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-selection-rect"></rect></g><g id="SvgjsG1311" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend apexcharts-align-center apx-legend-position-bottom" style="inset: auto 0px 1px; position: absolute; max-height: 175px;"><div class="apexcharts-legend-series" rel="1" seriesname="Sales" data:collapsed="false" style="margin: 2px 5px;"><span class="apexcharts-legend-marker" rel="1" data:collapsed="false" style="background: rgb(65, 84, 241) !important; color: rgb(65, 84, 241); height: 12px; width: 12px; left: 0px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 12px;"></span><span class="apexcharts-legend-text" rel="1" i="0" data:default-text="Sales" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Sales</span></div><div class="apexcharts-legend-series" rel="2" seriesname="Revenue" data:collapsed="false" style="margin: 2px 5px;"><span class="apexcharts-legend-marker" rel="2" data:collapsed="false" style="background: rgb(46, 202, 106) !important; color: rgb(46, 202, 106); height: 12px; width: 12px; left: 0px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 12px;"></span><span class="apexcharts-legend-text" rel="2" i="1" data:default-text="Revenue" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Revenue</span></div><div class="apexcharts-legend-series" rel="3" seriesname="Customers" data:collapsed="false" style="margin: 2px 5px;"><span class="apexcharts-legend-marker" rel="3" data:collapsed="false" style="background: rgb(255, 119, 29) !important; color: rgb(255, 119, 29); height: 12px; width: 12px; left: 0px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 12px;"></span><span class="apexcharts-legend-text" rel="3" i="2" data:default-text="Customers" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Customers</span></div></div><div class="apexcharts-tooltip apexcharts-theme-light"><div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"></div><div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(65, 84, 241);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group" style="order: 2;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(46, 202, 106);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group" style="order: 3;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(255, 119, 29);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light"><div class="apexcharts-xaxistooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>

                  <script>
                    document.addEventListener("DOMContentLoaded", () => {
                      new ApexCharts(document.querySelector("#reportsChart"), {
                        series: [{
                          name: 'Sales',
                          data: [31, 40, 28, 51, 42, 82, 56],
                        }, {
                          name: 'Revenue',
                          data: [11, 32, 45, 32, 34, 52, 41]
                        }, {
                          name: 'Customers',
                          data: [15, 11, 32, 18, 9, 24, 11]
                        }],
                        chart: {
                          height: 350,
                          type: 'area',
                          toolbar: {
                            show: false
                          },
                        },
                        markers: {
                          size: 4
                        },
                        colors: ['#4154f1', '#2eca6a', '#ff771d'],
                        fill: {
                          type: "gradient",
                          gradient: {
                            shadeIntensity: 1,
                            opacityFrom: 0.3,
                            opacityTo: 0.4,
                            stops: [0, 90, 100]
                          }
                        },
                        dataLabels: {
                          enabled: false
                        },
                        stroke: {
                          curve: 'smooth',
                          width: 2
                        },
                        xaxis: {
                          type: 'datetime',
                          categories: ["2018-09-19T00:00:00.000Z", "2018-09-19T01:30:00.000Z", "2018-09-19T02:30:00.000Z", "2018-09-19T03:30:00.000Z", "2018-09-19T04:30:00.000Z", "2018-09-19T05:30:00.000Z", "2018-09-19T06:30:00.000Z"]
                        },
                        tooltip: {
                          x: {
                            format: 'dd/MM/yy HH:mm'
                          },
                        }
                      }).render();
                    });
                  </script>
                  <!-- End Line Chart -->

                </div>

              </div>
            </div><!-- End Reports -->

           

            
  
          </div>
        </div><!-- End Left side columns -->
        </div>
          </section>
</main>
        <!-- Right side columns -->
        

          
          

         
          

        </div><!-- End Right side columns -->

      
  


  
   <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      © Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
  </footer><!-- End Footer -->
      <jsp:include page="AllJs.jsp"></jsp:include>
</body>
</html>



















<!-- <html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
</head>
<body>
<h2>Admin Dashboard</h2>
<a href="newcategory"> New Category</a><br><br>
<a href="newsubcategory"> New Sub Category</a><br><br>
<a href="listcategories">Show all categories</a><br><br>
<a href="sublistcategories">Show all subcategories</a> <br><br>
<a href="status">Add Status</a><br><br>
<a href="liststatus">List Status</a> <br><br>
<a href="vendor">Add Vendor</a> <br><br>
<a href="listvendor">List Vendor</a> <br><br>
<a href="accounttype">Add Account Type</a> <br><br>
<a href="listaccounttype">List Account Type</a> <br><br>
<a href="logout">LogOut</a>
</body>
</html> -->