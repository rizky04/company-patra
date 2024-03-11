@extends('layouts.fe')

@section('content')
    <section class="hero-wrap hero-wrap-2" style="background-image: url('{{ asset('fe') }}/images/kontraktor/1.jpeg');"
        data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end">
                <div class="col-md-9 ftco-animate pb-5">
                    <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html">Beranda <i
                                    class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a
                                href="blog.html">Berita <i class="ion-ios-arrow-forward"></i></a></span> <span>{{ $title }}<i
                                class="ion-ios-arrow-forward"></i></span></p>
                    <h1 class="mb-0 bread">{{ $title }}</h1>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section ftco-degree-bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 ftco-animate">
                    <p>
                        <img src="{{ \Storage::url($data->photo) }}" alt="" class="img-fluid">
                    </p>
                    <h2 class="mb-3">{{ $data->nama }}</h2>
                    <p>{{ $data->keterangan }}</p>
                </div> <!-- .col-md-8 -->
            </div>
        </div>
    </section> <!-- .section -->
@endsection
