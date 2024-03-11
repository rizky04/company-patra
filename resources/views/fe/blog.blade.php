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
    <div class="container">
      <div class="row d-flex">
        @foreach ($data as $item)
            <div class="col-md-4 d-flex ftco-animate">
                <div class="blog-entry align-self-stretch">
                    <div style="background-image: url('{{ \Storage::url($item->photo) }}');">
                    <a href="blog-single.html" class="block-20 rounded"></a>
                </div>
                    <div class="text mt-3 text-center">
                        <div class="meta mb-2">
                            <div><a href="{{ route('singe-blog', $item->id) }}">{{ $item->created_at }}</a></div>
                            <div><a href="{{ route('singe-blog', $item->id) }}">Admin</a></div>
                            <div><a href="{{ route('singe-blog', $item->id) }}">PT ALFA NARAPATI KARYA</a></div>
                        </div>
                        <h3 class="heading"><a href="{{ route('singe-blog', $item->id) }}">{{ $item->nama }}</a></h3>
                    </div>
                </div>
            </div>
            @endforeach
      </div>
    </div>
  </section>

@endsection
