<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>HRM</title>
  <script src="http://code.jquery.com/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js?t=1589892888"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
      <link href="css/mdb.min.css" rel="stylesheet">

      <link rel="shortcut icon" href="{{ URL::asset('assets/img/apple-touch-icon.png') }}">
      
</head>

<body>

  <!--Main Navigation-->
  <header>

    <!-- Navbar -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
      <div class="container">

        <!-- Brand -->
        

        <!-- Links -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">

          <!-- Left -->
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link waves-effect" href="/">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            
          </ul>

          <!-- Right -->
          <ul class="navbar-nav nav-flex-icons">
            <li class="nav-item">
              <a href="{{route('login')}}" class="nav-link waves-effect" >
               Login
              </a>
            </li>
            
          </ul>

        </div>

      </div>
    </nav>
    <!-- Navbar -->

  </header>
  <!--Main Navigation-->

  <!--Main layout-->
  <main class="mt-5 pt-5">
    <div class="container">

     

      <hr class="my-5">

      <!--Section: Magazine v.1-->
      <section class="wow fadeIn">

        <!--Section heading-->
        <h2 class="h1 text-center my-5 font-weight-bold">NewsFeed</h2>

        <!--Grid row-->
        <div class="row text-left">

          <!--Grid column-->
          <div class="col-lg-6 col-md-12">

            <!--Image-->
            <div class="view overlay rounded z-depth-1-half mb-3">
              <img src="{{ URL::asset('img/news/new1.jpg') }}" class="img-fluid" alt="Sample post image">
              <a href="/news1">
                <div class="mask rgba-white-slight"></div>
              </a>
            </div>

            <!--Excerpt-->
            <div class="news-data">
              <a href="" class="light-blue-text">
                <h6>
                <i class="far fa-newspaper"></i>
                  <strong> News</strong>
                </h6>
              </a>
              <p>
                <strong>
                  <i class="far fa-clock"></i> 18/12/2020</strong>
              </p>
            </div>
            
            <h3>
              <a href="/news1" class="text-dark">
                <strong>5 cách biến “nguy”thành "cơ" trong đại dịch COVID-19</strong>
              </a>
            </h3>
           

            <!--/Featured news-->

            <hr>

            <div class="view overlay rounded z-depth-1-half mb-3">
              <img src="{{ URL::asset('img/news/new2.jpg') }}" class="img-fluid" alt="Sample post image" width="100%">
              <a href="/news2">
                <div class="mask rgba-white-slight"></div>
              </a>
            </div>

            <!--Excerpt-->
            <div class="news-data">
              <a href="" class="light-blue-text">
                <h6>
                <i class="far fa-newspaper"></i>
                  <strong> News</strong>
                </h6>
              </a>
              <p>
                <strong>
                  <i class="far fa-clock"></i> 18/12/2020</strong>
              </p>
            </div>
            
            <h3>
              <a href='/news2' class="text-dark">
                <strong>3 lời khuyên cải thiện gắn kết nhân viên cho quản lý</strong>
              </a>
            </h3>
            

            <hr>

            <!--Small news-->
            
            <!--/Small news-->

          </div>
          <!--Grid column-->

          <!--Grid column-->
          <div class="col-lg-6 col-md-12">

            <!--Image-->
            <div class="view overlay rounded z-depth-1-half mb-3">
              <img src="{{ URL::asset('img/news/new3.jpg') }}" class="img-fluid" alt="Sample post image">
              <a href="/news3">
                <div class="mask rgba-white-slight"></div>
              </a>
            </div>

            <!--Excerpt-->
            <div class="news-data">
              <a href="" class="light-blue-text">
                <h6>
                <i class="far fa-newspaper"></i>
                  <strong> News</strong>
                </h6>
              </a>
              <p>
                <strong>
                  <i class="far fa-clock"></i> 18/12/2020</strong>
              </p>
            </div>
            <h3>
              <a href="/news3" class="text-dark">
                <strong>Tại sao chiến lược trải nghiệm nhân viên thất bại?</strong>
              </a>
            </h3>
            

            <!--/Featured news-->

            <hr>

           
          </div>
          <!--Grid column-->

        </div>
        <!--Grid row-->

      </section>
      <!--/Section: Magazine v.1-->


    </div>
  </main>
  <!--Main layout-->

  <!--Footer-->
  <footer class="page-footer text-center font-small mdb-color darken-2 mt-4 wow fadeIn">

   

    <hr class="my-4">

    

    <!--Copyright-->
    <div class="footer-copyright py-3">
    ©dcvy.19it3@vku.udn.vn. All Rights Reserved.
      
    </div>
    <!--/.Copyright-->

  </footer>
  <!--/.Footer-->

  <!-- SCRIPTS -->
  <!-- JQuery -->
  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="js/mdb.min.js"></script>
  <!-- Initializations -->
  <script type="text/javascript">
    // Animations initialization
    new WOW().init();

  </script>
</body>

</html>
