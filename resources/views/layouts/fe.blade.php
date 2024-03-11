<!DOCTYPE html>
<html lang="en">

<head>
    <title>PT ALFA NARAPATI KARYA - JASA KONSTRUKSI SURABAYA JAWATIMUR INDONESIA</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="{{ asset('fe') }}/css/animate.css">

    <link rel="stylesheet" href="{{ asset('fe') }}/css/owl.carousel.min.css">
    <link rel="stylesheet" href="{{ asset('fe') }}/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="{{ asset('fe') }}/css/magnific-popup.css">

    <link rel="stylesheet" href="{{ asset('fe') }}/css/ionicons.min.css">

    <link rel="stylesheet" href="{{ asset('fe') }}/css/flaticon.css">
    <link rel="stylesheet" href="{{ asset('fe') }}/css/icomoon.css">
    <link rel="stylesheet" href="{{ asset('fe') }}/css/style.css">
</head>

<body>

    <div class="container pt-5">
        <div class="row justify-content-between">
            <div class="col">
                <a class="navbar-brand" href="index.html">
                    <img src="{{ asset('fe') }}/images/logo.png" class="mr-3" width="50px" height="50px"
                        alt="Logo">
                </a>
            </div>
            <div class="col d-flex justify-content-end">
                <div class="social-media">
                    <p class="mb-0 d-flex">
                        <a href="https://web.facebook.com/profile.php?id=61555746202582&locale=id_ID"
                            class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i
                                    class="sr-only"></i></span></a>
                        <a href="https://www.instagram.com/alfanarapatikarya/"
                            class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i
                                    class="sr-only"></i></span></a>
                        <a href="https://www.tiktok.com/@pt.alfa.narapati"
                            class="d-flex align-items-center justify-content-center"><span><i
                                    class="fa-brands fa-tiktok"></i></span></a>
                        <a href="https://wa.me/6282143198418"
                            class="d-flex align-items-center justify-content-center"><span class="fa fa-whatsapp"><i
                                    class="sr-only"></i></span></a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="fa fa-bars"></span> Menu
            </button>
            <!-- <form action="#" class="searchform order-lg-last">
    <div class="form-group d-flex">
     <input type="text" class="form-control pl-3" placeholder="Search">
     <button type="submit" placeholder="" class="form-control search"><span
       class="fa fa-search"></span></button>
    </div>
   </form> -->
            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item {{ \Route::is('/') ? 'active' : '' }}"><a href="{{ route('/') }}" class="nav-link">Beranda</a></li>
                    <li class="nav-item {{ \Route::is('about') ? 'active' : '' }}"><a href="{{ route('about') }}" class="nav-link">Tentang Kami</a></li>
                    <li class="nav-item {{ \Route::is('service') ? 'active' : '' }}"><a href="{{ route('service') }}" class="nav-link">Layanan Kami</a></li>
                    <li class="nav-item {{ \Route::is('project') ? 'active' : '' }}"><a href="{{ route('project') }}" class="nav-link">Project</a></li>
                    <li class="nav-item {{ \Route::is('team') ? 'active' : '' }}"><a href="{{ route('team') }}" class="nav-link">Tim</a></li>
                    <li class="nav-item {{ \Route::is('blog') ? 'active' : '' }}"><a href="{{ route('blog') }}" class="nav-link">Blog</a></li>
                    <li class="nav-item {{ \Route::is('contact') ? 'active' : '' }}"><a href="{{ route('contact') }}" class="nav-link">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- END nav -->
    @yield('content')

    <footer class="footer">
        <div class="container-fluid px-lg-5">
            <div class="row">
                <div class="col-md-12 py-5">
                    <div class="row">
                        {{-- <div class="col-md-4 mb-md-0 mb-4">
                            <h2 class="footer-heading">Sosial Media</h2>
                            <ul class="ftco-footer-social p-0">
                                <li class="ftco-animate"><a href="https://web.facebook.com/profile.php?id=61555746202582&locale=id_ID" data-toggle="tooltip"
                                        data-placement="top" title="Facebook"><span
                                            class="ion-logo-facebook"></span></a></li>
                                <li class="ftco-animate"><a href="https://www.instagram.com/alfanarapatikarya/" data-toggle="tooltip"
                                        data-placement="top" title="Instagram"><span
                                            class="ion-logo-instagram"></span></a></li>
                                <li class="ftco-animate"><a href="https://www.tiktok.com/@pt.alfa.narapati"
                                        data-toggle="tooltip" data-placement="top" title="Instagram"><span><i
                                                class="fa-brands fa-tiktok"></i></span></a></li>
                                <li class="ftco-animate"><a href="https://wa.me/6282143198418" data-toggle="tooltip"
                                        data-placement="top" title="Instagram"><span
                                            class="ion-logo-whatsapp"></span></a></li>
                            </ul>
                        </div> --}}
                        <div class="col-md-12">
                            <div class="row justify-content-center">
                                <div class="col-md-12 col-lg-10">
                                    <div class="row">
                                        <div class="col-md-3 mb-md-0 mb-3">
                                            <h2 class="footer-heading">Sosial Media</h2>
                                            <ul class="ftco-footer-social p-0">
                                                <li class="ftco-animate"><a href="https://web.facebook.com/profile.php?id=61555746202582&locale=id_ID" data-toggle="tooltip"
                                                        data-placement="top" title="Facebook"><span
                                                            class="ion-logo-facebook"></span></a></li>
                                                <li class="ftco-animate"><a href="https://www.instagram.com/alfanarapatikarya/" data-toggle="tooltip"
                                                        data-placement="top" title="Instagram"><span
                                                            class="ion-logo-instagram"></span></a></li>
                                                <li class="ftco-animate"><a href="https://www.tiktok.com/@pt.alfa.narapati"
                                                        data-toggle="tooltip" data-placement="top" title="Instagram"><span><i
                                                                class="fa-brands fa-tiktok"></i></span></a></li>
                                                <li class="ftco-animate"><a href="https://wa.me/6282143198418" data-toggle="tooltip"
                                                        data-placement="top" title="Instagram"><span
                                                            class="ion-logo-whatsapp"></span></a></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-3 mb-md-0 mb-3">
                                            <h2 class="footer-heading">Telepon/WA</h2>
                                            <a href="https://wa.me/6282143198418"><p>0821-4319-8418</p></a>
                                        </div>
                                        <div class="col-md-3 mb-md-0 mb-3">
                                            <h2 class="footer-heading">Email</h2>
                                            <a href="mailto:corporate@alfa-narapati.co.id"><p>corporate@alfa-narapati.co.id</p></a>
                                        </div>
                                        <div class="col-md-3 mb-md-0 mb-3">
                                            <h2 class="footer-heading">Alamat Kami</h2>
                                            <a href="https://maps.app.goo.gl/iRSwq8Y1nRPdSEi19"><p>Jalan Raya Tenaru RT 13 RW 03 Desa
                                                Mulung Kecamatan Driyorejo, Kabupaten
                                                Gresik Provinsi Jawa Timur</p></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-md-5 text-center">
                        <div class="col-md-12">
                            <p class="copyright">
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;
                                <script>
                                    document.write(new Date().getFullYear());
                                </script> PT ALFA NARAPATI KARYA
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4"
                stroke="#eeeeee" />
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4"
                stroke-miterlimit="10" stroke="#F96D00" />
        </svg></div>

    <script src="https://kit.fontawesome.com/2fddc46d67.js" crossorigin="anonymous"></script>
    <script src="{{ asset('fe') }}/js/jquery.min.js"></script>
    <script src="{{ asset('fe') }}/js/jquery-migrate-3.0.1.min.js"></script>
    <script src="{{ asset('fe') }}/js/popper.min.js"></script>
    <script src="{{ asset('fe') }}/js/bootstrap.min.js"></script>
    <script src="{{ asset('fe') }}/js/jquery.easing.1.3.js"></script>
    <script src="{{ asset('fe') }}/js/jquery.waypoints.min.js"></script>
    <script src="{{ asset('fe') }}/js/jquery.stellar.min.js"></script>
    <script src="{{ asset('fe') }}/js/jquery.animateNumber.min.js"></script>
    <script src="{{ asset('fe') }}/js/owl.carousel.min.js"></script>
    <script src="{{ asset('fe') }}/js/jquery.magnific-popup.min.js"></script>
    <script src="{{ asset('fe') }}/js/scrollax.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="{{ asset('fe') }}/js/google-map.js"></script>
    <script src="{{ asset('fe') }}/js/main.js"></script>
</body>

</html>
