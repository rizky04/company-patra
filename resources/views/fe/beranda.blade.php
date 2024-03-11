@extends('layouts.fe')
@section('content')
<div class="hero-wrap">
    <div class="home-slider owl-carousel">
        @foreach ($slide as $item)
        <div class="slider-item" style="background-image:url({{ \Storage::url($item->photo) }});">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-center">
                    <div class="col-md-12 ftco-animate">
                        <div class="text w-100 text-center">
                            <h1>{{ $item->judul }}</h1>
                            <h2>{{ $item->quote }}</h2>
                            <br>
                            <a href="https://wa.me/{{ $item->wa }}" type="button" class="btn btn-success"><span class="fa fa-whatsapp"><i
                                        class="sr-only"></i></span> Hubungi Kami</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @endforeach


        {{-- <div class="slider-item" style="background-image:url({{asset('fe')}}/images/kontraktor/3.jpeg);">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-center">
                    <div class="col-md-12 ftco-animate">
                        <div class="text w-100 text-center">
                            <h1>PT ALFA NARAPATI KARYA</h1>
                            <h2>WUJUDKAN BANGUNAN IMPIAN ANDA BERSAMA KAMI</h2>
                            <br>
                            <a href="https://wa.me/6282143198418" type="button" class="btn btn-success"><span class="fa fa-whatsapp"><i
                                        class="sr-only"></i></span> Hubungi Kami</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="slider-item" style="background-image:url({{asset('fe')}}/images/kontraktor/15.jpeg);">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-center">
                    <div class="col-md-12 ftco-animate">
                        <div class="text w-100 text-center">
                            <h1>PT ALFA NARAPATI KARYA</h1>
                            <h2>WUJUDKAN BANGUNAN IMPIAN ANDA BERSAMA KAMI</h2>
                            <br>
                            <a href="https://wa.me/6282143198418" type="button" class="btn btn-success"><span class="fa fa-whatsapp"><i
                                        class="sr-only"></i></span> Hubungi Kami</a>
                        </div>
                    </div>
                </div>
            </div>
        </div> --}}
    </div>
</div>

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

<section class="ftco-section ftco-no-pt ftco-no-pb mt-5">
    <div class="container">
        <div class="row justify-content-center mb-2">
            <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                <h2 class="mb-2">Tentang Kami</h2>
            </div>
        </div>
        <div class="row d-flex no-gutters">
            <div class="col-md-6 d-flex">
                <div class="img img-video d-flex align-self-stretch align-items-center justify-content-center justify-content-md-end"
                    style="background-image:url({{asset('fe')}}/images/about.jpg);">
                    <!-- <a href="https://vimeo.com/45830194"
                        class="icon-video popup-vimeo d-flex justify-content-center align-items-center">
                        <span class="icon-play"></span>
                    </a> -->
                </div>
            </div>
            <div class="col-md-6 pl-md-5">
                <div class="row justify-content-start py-5">
                    <div class="col-md-12 heading-section ftco-animate pl-md-4 py-md-4">
                        <h2 class="mb-4">PT ALFA NARAPATI KARYA</h2>
                        <p>Merupakan salah satu perusahaan yang didirikan oleh
                            direktur kami ANDRIAN BAGUS PRANATA. PT ALFA NARAPATI KARYA berdiri sebagai
                            perusahaan jasa dalam bidang konstruksi dan sipil meliputi konstruksi gedung,
                            pengerjaan instalasi, finishing gedung dan lain-lain.
                        </p>
                        <p>
                            Company Profile ini dibuat sebagai dasar pertimbangan dan penawaran kerja sama
                            untuk memberikan informasi jasa yang dapat dikerjakan oleh perusahaan kami.
                            Perusahaan kami memiliki pengalaman dan kompeten dalam pembangunan di sektor
                            perkantoran, hunian, dan gedung industri.
                        </p>
                        <p>
                            Demikian Company Profile perusahaan kami sampaikan sebagai bagian dari langkah
                            awal kerjasama yang akan kami tawarkan kepada perusahaan bapak/ibu pimpin. Besar
                            harapan kami untuk menjalin kerjasama dengan perusahaan bapak/ibu pimpin, atas
                            perhatian dan doanya kami ucapkan terima kasih.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-no-pt ftco-no-pb mt-5">
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                <h2 class="mb-2">Visi Dan Misi</h2>
            </div>
        </div>
        <div class="row no-gutters">
            <!-- <div class="col-md-12 col-lg-4 services-2 p-4 py-5 d-flex ftco-animate">
                <div class="py-3 d-flex">
                    <div class="icon">
                        <span class="flaticon-engineer-1"></span>
                    </div>
                    <div class="text">
                        <h3>Expert &amp; Professional</h3>
                        <p class="mb-0">Separated they live in. A small river named Duden flows</p>
                    </div>
                </div>
            </div> -->
            <div class="col-md-12 col-lg-6 services-2 p-2 py-6 d-flex ftco-animate">
                <div class="py-3 d-flex">
                    <div class="icon">
                        <span class="flaticon-engineer"></span>
                    </div>
                    <div class="text">
                        <h3>Visi</h3>
                        <p class="mb-0">
                            <ol>
                                <li>
                                    Menjadi perusahaan jasa konstruksi dan sipil yang
                                    unggul dan berkualitas di Indonesia
                                </li>
                                <li>
                                    Menciptakan kondisi kerja yang nyaman dan aman
                                </li>
                                <li>
                                    Mengedepankan keselamatan dan kesehatan kerja
                                    untuk meningkatkan produktivitas kerja
                                </li>
                                <li>
                                    Menciptakan kondisi lapangan kerja dengan
                                    mengedepankan tenaga kerja yang handal dan
                                    berkemampuan pada bidangnya
                                </li>
                                <li>
                                    Menjadi perusahaan sipil dan konstruksi yang
                                    tangguh dan terpercaya
                                </li>
                            </ol>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-12 col-lg-6 services-2 p-2 py-6 d-flex ftco-animate">
                <div class="py-3 d-flex">
                    <div class="icon">
                        <span class="flaticon-engineer-2"></span>
                    </div>
                    <div class="text">
                        <h3>Misi</h3>
                        <p class="mb-0">
                            <ol>
                                <li>Mewujudkan kepuasan dan kepercayaan konsumen akan jasa
                                    onstruksi dan sipil yang berkualitas melalui keunggulan sistem
                                    manajemen dan sumber daya manusia yang handal</li>
                                <li>
                                    Menjadi mitra pembangunan nasional dan sekaligus meningkatkan
                                    kesejahteraan masyarakat melalui penyediaan lapangan kerja

                                </li>
                                <li>
                                    Memenuhi kebutuhan masyarakat dan institusi akan hunian, gedung
                                    dan jasa pembangunan lainnya

                                </li>
                            </ol>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-no-pt ftco-no-pb mt-3">
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
                                    <a class="nav-link active py-2" data-toggle="tab"
                                        href="#home1">PROFESIONALITAS</a>
                                </li>
                                <li class="nav-item px-lg-2 mb-md-0 mb-2">
                                    <a class="nav-link py-2" data-toggle="tab" href="#home2">EFISIENSI</a>
                                </li>
                                <li class="nav-item px-lg-2 mb-md-0 mb-2">
                                    <a class="nav-link py-2 mb-md-0 mb-2" data-toggle="tab" href="#home3">MUTU</a>
                                </li>
                                <li class="nav-item px-lg-2 mb-md-0 mb-2">
                                    <a class="nav-link py-2 mb-md-0 mb-2" data-toggle="tab"
                                        href="#home4">INOVASI</a>
                                </li>
                                <li class="nav-item px-lg-2 mb-md-0 mb-2">
                                    <a class="nav-link py-2 mb-md-0 mb-2" data-toggle="tab" href="#home5">RAMAH
                                        LINGKUNGAN</a>
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
<section class="ftco-counter" id="section-counter">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-lg-6 d-flex justify-content-center counter-wrap ftco-animate">
                <div class="block-18 d-flex">
                    <div class="text d-flex align-items-center">
                        <strong class="number">Project</strong>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-6 d-flex justify-content-center counter-wrap ftco-animate">
                <div class="block-18 d-flex">
                    <div class="text d-flex align-items-center">
                        <strong class="number">Kami</strong>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="ftco-section ftco-no-pt ftco-no-pb">
    <div class="container-fluid px-md-0">
        <div class="row no-gutters">
            @foreach ($project as $item)
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
<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
            <div class="col-md-7 heading-section text-center ftco-animate">
                <span class="subheading">Berita dan Kegiatan</span>
                <h2>Berita Terbaru</h2>
            </div>
        </div>
        <div class="row d-flex">
            @foreach ($blog as $item)
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
