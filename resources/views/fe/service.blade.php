@extends('layouts.fe')
@section('content')
<section class="hero-wrap hero-wrap-2" style="background-image: url('{{ asset('fe') }}/images/kontraktor/1.jpeg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
      <div class="row no-gutters slider-text align-items-end">
        <div class="col-md-9 ftco-animate pb-5">
            <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html">Beranda <i class="ion-ios-arrow-forward"></i></a></span> <span>{{ $title }} <i class="ion-ios-arrow-forward"></i></span></p>
          <h1 class="mb-0 bread">{{ $title }}</h1>
        </div>
      </div>
    </div>
  </section>

  <section class="ftco-section ftco-no-pt ftco-no-pb mt-5">
      <div class="container">
          <div class="row justify-content-center mb-2">
              <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                  <h2 class="mb-2">Layanan Kami</h2>
              </div>
          </div>
          <div class="row">
              <div class="col-md-2 d-flex services align-self-stretch p-6 py-md-5 ftco-animate">
                  <div class="media block-6 d-block text-center pt-md-4">
                      <div class="icon d-flex justify-content-center align-items-center">
                          <span class="flaticon-hook"></span>
                      </div>
                      <div class="media-body p-2 mt-1">
                          <!-- <h3 class="heading">JASA KONSTRUKSI
                              GEDUNG</h3> -->
                          <p style="font-weight: bold;">JASA KONSTRUKSI
                              GEDUNG
                          </p>
                      </div>
                  </div>
              </div>
              <div class="col-md-2 d-flex services align-self-stretch p-6 py-md-5 ftco-animate">
                  <div class="media block-6 d-block text-center pt-md-4">
                      <div class="icon d-flex justify-content-center align-items-center">
                          <span class="flaticon-skyline"></span>
                      </div>
                      <div class="media-body p-2 mt-1">
                          <!-- <h3 class="heading">House Renovation</h3> -->
                          <p style="font-weight: bold;">JASA KONSTRUKSI
                              PRAPABRIKASI BANGUNAN
                              GEDUNG DAN SIPIL</p>
                      </div>
                  </div>
              </div>
              <div class="col-md-2 d-flex services align-self-stretch p-6 py-md-5 ftco-animate">
                  <div class="media block-6 d-block text-center pt-md-4">
                      <div class="icon d-flex justify-content-center align-items-center">
                          <span class="flaticon-stairs"></span>
                      </div>
                      <div class="media-body p-2 mt-1">
                          <!-- <h3 class="heading">Painting</h3> -->
                          <p style="font-weight: bold;">FINISHING GEDUNG</p>
                      </div>
                  </div>
              </div>
              <div class="col-md-2 d-flex services align-self-stretch p-6 py-md-5 ftco-animate">
                  <div class="media block-6 d-block text-center pt-md-4">
                      <div class="icon d-flex justify-content-center align-items-center">
                          <span class="flaticon-engineer-1"></span>
                      </div>
                      <div class="media-body p-2 mt-1">
                          <!-- <h3 class="heading">Painting</h3> -->
                          <p style="font-weight: bold;">JASA PENGERJAAN
                              INSTALASI
                              </p>
                      </div>
                  </div>
              </div>
              <div class="col-md-2 d-flex services align-self-stretch p-6 py-md-5 ftco-animate">
                  <div class="media block-6 d-block text-center pt-md-4">
                      <div class="icon d-flex justify-content-center align-items-center">
                          <span class="flaticon-engineer"></span>
                      </div>
                      <div class="media-body p-2 mt-1">
                          <!-- <h3 class="heading">Painting</h3> -->
                          <p style="font-weight: bold;">JASA PENGERJAAN LANTAI,
                              DINDING, KACA,
                              ALUMINIUM, PERALATAN
                              SANITER DAN PLAFON</p>
                      </div>
                  </div>
              </div>
              <div class="col-md-2 d-flex services align-self-stretch p-6 py-md-5 ftco-animate">
                  <div class="media block-6 d-block text-center pt-md-4">
                      <div class="icon d-flex justify-content-center align-items-center">
                          <span class="flaticon-home"></span>
                      </div>
                      <div class="media-body p-2 mt-1">
                          <!-- <h3 class="heading">Painting</h3> -->
                          <p style="font-weight: bold;">JASA PEMASANGAN
                              PONDASI, TIANG
                              PANCANG, RANGKA, ATAP,
                              DAN BAJA
                              </p>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </section>

  <section class="ftco-section ftco-no-pt ftco-no-pb">
      <div class="container">
          <div class="row justify-content-center mb-2">
              <div class="col-md-2 text-center heading-section heading-section-white ftco-animate">
                  <h2 class="mb-1">KOMITMEN</h2>
              </div>
          </div>
          <div class="row d-flex no-gutters">
              <div class="col-md-12 pl-md-5">
                  <div class="row justify-content-start py-5">
                      <div class="col-md-12 heading-section ftco-animate pl-md-4 py-md-4">
                          <div class="tabulation-2">
                              <ul class="nav nav-pills nav-fill d-md-flex d-block">
                                  <li class="nav-item px-lg-2 mb-md-0 mb-2">
                                      <a class="nav-link active py-2" data-toggle="tab" href="#home1">PROFESIONALITAS</a>
                                  </li>
                                  <li class="nav-item px-lg-2 mb-md-0 mb-2">
                                      <a class="nav-link py-2" data-toggle="tab" href="#home2">EFISIENSI</a>
                                  </li>
                                  <li class="nav-item px-lg-2 mb-md-0 mb-2">
                                      <a class="nav-link py-2 mb-md-0 mb-2" data-toggle="tab" href="#home3">MUTU</a>
                                  </li>
                                  <li class="nav-item px-lg-2 mb-md-0 mb-2">
                                      <a class="nav-link py-2 mb-md-0 mb-2" data-toggle="tab" href="#home4">INOVASI</a>
                                  </li>
                                  <li class="nav-item px-lg-2 mb-md-0 mb-2">
                                      <a class="nav-link py-2 mb-md-0 mb-2" data-toggle="tab" href="#home5">RAMAH LINGKUNGAN</a>
                                  </li>
                              </ul>
                              <div class="tab-content bg-light rounded mt-2">
                                  <div class="tab-pane container p-0 active" id="home1">
                                      <p>
                                          Profesionalitas dalam kerja sebagai jaminan bagi integritas
perusahaan
                                      </p>
                                  </div>
                                  <div class="tab-pane container p-0 fade" id="home2">
                                      <p>Menerapkan manajemen mutu serta pengendalian waktu dan biaya
                                          secara efisien</p>
                                  </div>
                                  <div class="tab-pane container p-0 fade" id="home3">
                                      <p>Menempatkan jaminan mutu dalam setiap karya dan kepuasan klien
                                          sebagai orientasi utama</p>
                                  </div>
                                  <div class="tab-pane container p-0 fade" id="home4">
                                      <p>Terus berinovasi dengan kreatifitas & teknologi demi karya yang sesuai
                                          dengan tuntutan zaman
                                          </p>
                                  </div>
                                  <div class="tab-pane container p-0 fade" id="home4">
                                      <p>embangun tanpa mengabaikan orientasi bagi keramahan
                                          lingkungan demi masa depan generasi mendatang
                                          </p>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </section>
@endsection
