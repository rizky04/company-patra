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

  <section class="ftco-section">
      <div class="container-fluid px-md-5">
      <div class="row">
        @foreach ($data as $item)
        <div class="col-lg-3 col-sm-6">
            <div class="block-2 ftco-animate">
            <div class="flipper">
              <div class="front" style="background-image: url({{ \Storage::url($item->photo) }});">
                <div class="box">
                  <h2>{{ $item->nama }}</h2>
                  <p>{{ $item->posisi }}</p>
                </div>
              </div>
              <div class="back">
                <!-- back content -->
                <blockquote>
                  <p>&ldquo;{{ $item->keterangan }} &rdquo;</p>
                </blockquote>
                <div class="author d-flex">
                  <div class="image align-self-center">
                    <img src="images/team-1.jpg" alt="">
                  </div>
                  <div class="name align-self-center ml-3">{{ $item->nama }} <span class="position">{{ $item->posisi }}</span></div>
                </div>
              </div>
            </div>
          </div>
        </div>
        @endforeach
      </div>
      </div>
  </section>

@endsection
