@extends('layouts.fe')
@section('content')
    <section class="hero-wrap hero-wrap-2" style="background-image: url('{{ asset('fe') }}/images/kontraktor/1.jpeg');"
        data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end">
                <div class="col-md-9 ftco-animate pb-5">
                    <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html">Beranda <i
                                    class="ion-ios-arrow-forward"></i></a></span> <span>{{ $title }} <i
                                class="ion-ios-arrow-forward"></i></span></p>
                    <h1 class="mb-0 bread">{{ $title }}</h1>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section ftco-no-pt ftco-no-pb">
        <div class="container-fluid px-md-0">
            <div class="row no-gutters">
                @foreach ($data as $item)
                <div class="col-md-4 ftco-animate">
                    <div class="work img d-flex align-items-end" style="background-image: url({{ \Storage::url($item->photo) }});">
                        <a href="{{ \Storage::url($item->photo) }}"
                            class="icon image-popup d-flex justify-content-center align-items-center">
                            <span class="icon-expand"></span>
                        </a>
                        <div class="desc w-100 px-4">
                            <div class="text w-100 mb-3">
                                <span>{{ $item->nama }}</span>
                                <h2><a href="work-single.html">{{ $item->keterangan }}</a></h2>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
@endsection
