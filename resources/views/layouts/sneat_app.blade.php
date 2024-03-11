<!DOCTYPE html>

<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
 -->
<!-- beautify ignore:start -->
<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="{{ asset('sneat') }}/assets/"
  data-template="vertical-menu-template-free"
>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>{{ config('app.name', 'Laravel') }}</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="{{ asset('sneat') }}/assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="{{ asset('sneat') }}/assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="{{ asset('sneat') }}/assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="{{ asset('sneat') }}/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="{{ asset('sneat') }}/assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="{{ asset('sneat') }}/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <link rel="stylesheet" href="{{ asset('sneat') }}/assets/vendor/libs/apex-charts/apex-charts.css" />
    {{-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"> --}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="{{ asset('sneat') }}/assets/vendor/js/helpers.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="{{ asset('sneat') }}/assets/js/config.js"></script>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="index.html" class="app-brand-link">
              <span class="app-brand-logo demo">
                <img src="{{asset('fe')}}/images/logo.png" alt class="w-px-40" />
              </span>
              <span class="app-brand-text demo menu-text fw-bolder ms-2"></span>
            </a>
            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
              <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
          </div>

          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
            <li class="menu-item {{ \Route::is('beranda') ? 'active' : '' }}">
                <a href="{{ route('beranda') }}" class="menu-link">
                  <i class='menu-icon tf-icons bx bx-book-content'></i>
                  <div data-i18n="bsic">Dashboard</div>
                </a>
              </li>

               <li class="menu-header small text-uppercase">
                <span class="menu-header-text">Menu Utama</span>
              </li>
              <li class="menu-item {{ ((\Route::is('user.*') ? 'active' : '' ))}} ">
                <a href="{{ route('user.index') }}" class="menu-link">
                    <i class='menu-icon tf-icons bx bxs-user-circle' ></i>
                  <div data-i18n="Basic">Data Pengguna</div>
                </a>
              </li>
              <li class="menu-item {{ ((\Route::is('projects.*') ? 'active' : '' ))}} ">
                <a href="{{ route('projects.index') }}" class="menu-link">
                    <i class='menu-icon tf-icons bx bxs-building' ></i>
                  <div data-i18n="Basic">Data Project</div>
                </a>
              </li>
              <li class="menu-item {{ ((\Route::is('blogs.*') ? 'active' : '' ))}} ">
                <a href="{{ route('blogs.index') }}" class="menu-link">
                    <i class='menu-icon tf-icons bx bxs-building' ></i>
                  <div data-i18n="Basic">Data Berita</div>
                </a>
              </li>
              <li class="menu-item {{ ((\Route::is('teams.*') ? 'active' : '' ))}} ">
                <a href="{{ route('teams.index') }}" class="menu-link">
                    <i class='menu-icon tf-icons bx bxs-user-circle' ></i>
                  <div data-i18n="Basic">Data Team</div>
                </a>
              </li>
              <li class="menu-item {{ ((\Route::is('pesan.*') ? 'active' : '' ))}} ">
                <a href="{{ route('pesan.index') }}" class="menu-link">
                    <i class='menu-icon tf-icons bx bxs-message' ></i>
                  <div data-i18n="Basic">Pesan Masuk</div>
                </a>
              </li>
              <li class="menu-item {{ ((\Route::is('slides.*') ? 'active' : '' ))}} ">
                <a href="{{ route('slides.index') }}" class="menu-link">
                    <i class='menu-icon tf-icons bx bxs-image-alt' ></i>
                  <div data-i18n="Basic">Data Slide</div>
                </a>
              </li>
          </ul>
        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->
          <nav
            class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
            id="layout-navbar"
          >
            <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
              <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                <i class="bx bx-menu bx-sm"></i>
              </a>
            </div>

            <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
              <!-- Search -->
              <div class="navbar-nav align-items-center">
                <div class="nav-item d-flex align-items-center">
                  {{-- <i class="bx bx-search fs-4 lh-0"></i> --}}
                  🎉
                  <input
                    type="text"
                    class="form-control border-0 shadow-none"
                    placeholder="Selamat Bekerja"
                    aria-label="Selamat Bekerja"
                  />
                </div>
              </div>
              <!-- /Search -->

              <ul class="navbar-nav flex-row align-items-center ms-auto">
                <!-- User -->
                <li class="nav-item navbar-dropdown dropdown-user dropdown">
                  <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                    <div class="avatar avatar-online">
                      {{-- <img src="{{ asset('sneat') }}/assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" /> --}}
                      <img src="{{ \Storage::url(Auth::user()->photo) }}" alt class="w-px-40 h-auto rounded-circle" />

                    </div>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end">
                    <li>
                      <a class="dropdown-item" href="#">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar avatar-online">
                                {{-- @if (Auth::user()->photo == null)
                                <img src="{{ asset('sneat') }}/assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                                @else --}}
                                <img src="{{ \Storage::url(Auth::user()->photo) }}" alt class="w-px-40 h-auto rounded-circle" />
                                {{-- @endif --}}

                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <span class="fw-semibold d-block">{{ Auth::user()->name }}</span>
                          </div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>


                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item"  href="{{ route('logout') }}">
                        <i class="bx bx-power-off me-2"></i>
                        <span class="align-middle">Log Out</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <!--/ User -->
              </ul>
            </div>
          </nav>

          <!-- / Navbar -->

          <!-- Content wrapper -->
          {{-- <div class="content-wrapper"> --}}
            <!-- Content -->
            {{-- <div class="container-xxl flex-grow-1 container-p-y"> --}}
                @if ($errors->any())
<div class="alert alert-danger" role="alert">
                    {{ implode('', $errors->all('data gagal ditambahkan!!')) }}
                </div>
@endif
              {{-- main menu --}}
              @include('flash::message')
              @yield('content')
{{-- main menu --}}
            {{-- </div> --}}
            <!-- / Content -->

            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">

              </div>
            </footer>
            <!-- / Footer -->

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->


    <script src="{{ asset('sneat') }}/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="{{ asset('sneat') }}/assets/vendor/libs/popper/popper.js"></script>
    <script src="{{ asset('sneat') }}/assets/vendor/js/bootstrap.js"></script>
    <script src="{{ asset('sneat') }}/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="{{ asset('sneat') }}/assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="{{ asset('sneat') }}/assets/vendor/libs/apex-charts/apexcharts.js"></script>

    <!-- Main JS -->
    <script src="{{ asset('sneat') }}/assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="{{ asset('sneat') }}/assets/js/dashboards-analytics.js"></script>
    <script src="{{ asset('sneat') }}/assets/vendor/js/dropdown-hover.js"></script>
    <script src="{{ asset('sneat') }}/assets/js/ui-modals.js"></script>
    <script src="{{ asset('sneat') }}/assets/js/ui-popover.js"></script>
    <script src="{{ asset('sneat') }}/assets/js/jquery.printPage.js"></script>
    {{-- <script src="{{ asset('sneat') }}/assets/ckeditor/ckeditor.js"></script> --}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js"
        integrity="sha512-pHVGpX7F/27yZ0ISY+VVjyULApbDlD0/X0rgGbTqCE7WFW5MezNTWG/dnhtbBuICzsd0WQPgpE4REBLv+UqChw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>



    <script type="text/javascript">
        $(document).ready(function() {
            $('.select2').select2();
            $('#select2').select2();
            $('#select3').select2();
            $('.rupiah').mask("#.##0", {
                reverse: true
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#btnPrint").printPage();
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#table_id').DataTable({
                lengthMenu: [
                    [50, 100, -1],
                    [50, 100, 'All'],
                ],
                dom: 'Bfrtip',
                buttons: [
                    // {
                    //     extend: 'copyHtml5',
                    //     text: '<i class="fa fa-files-o"></i>',
                    //     titleAttr: 'Copy'
                    // },
                    {
                        extend: 'excelHtml5',
                        text: '<i class="fa fa-file-excel-o"></i>',
                        titleAttr: 'Excel'
                    },
                    // {
                    //     extend: 'csvHtml5',
                    //     text: '<i class="fa fa-file-text-o"></i>',
                    //     titleAttr: 'CSV'
                    // },
                    {
                        extend: 'pdfHtml5',
                        text: '<i class="fa fa-file-pdf-o"></i>',
                        titleAttr: 'PDF'
                    },
                    {
                        extend: 'print',
                        text: '<i class="fa fa-print"></i>'
                    },
                    {
                        extend: 'pageLength',
                    }
                ],


            });
        });
    </script>


{{-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script> --}}
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.print.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.3.6/js/buttons.colVis.min.js"></script>
<script src="https://cdn.ckeditor.com/4.5.7/standard/ckeditor.js"></script>


    {{-- <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.css">
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.js"></script> --}}
    @stack('custom-scripts')
  </body>
</html>
