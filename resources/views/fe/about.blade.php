@extends('layouts.fe')
@section('content')

<section class="hero-wrap hero-wrap-2" style="background-image: url('{{ asset('fe') }}/images/kontraktor/1.jpeg');"
data-stellar-background-ratio="0.5">
<div class="overlay"></div>
<div class="container">
    <div class="row no-gutters slider-text align-items-end">
        <div class="col-md-9 ftco-animate pb-5">
            <p class="breadcrumbs mb-2"><span class="mr-2"><a href="{{ route('/') }}">Beranda <i
                            class="ion-ios-arrow-forward"></i></a></span> <span>{{ $title }}<i
                        class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-0 bread">{{ $title }}</h1>
        </div>
    </div>
</div>
</section>

<section class="ftco-section ftco-no-pt ftco-no-pb">
<div class="container">
    <div class="row d-flex no-gutters">
        <div class="col-md-6 d-flex">
            <div class="img img-video d-flex align-self-stretch align-items-center justify-content-center justify-content-md-end"
                style="background-image:url({{ asset('fe') }}/images/about.jpg);">
                {{-- <a href="https://vimeo.com/45830194"
                    class="icon-video popup-vimeo d-flex justify-content-center align-items-center">
                    <span class="icon-play"></span>
                </a> --}}
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
                        <br>
                        Company Profile ini dibuat sebagai dasar pertimbangan dan penawaran kerja sama
                        untuk memberikan informasi jasa yang dapat dikerjakan oleh perusahaan kami.
                        Perusahaan kami memiliki pengalaman dan kompeten dalam pembangunan di sektor
                        perkantoran, hunian, dan gedung industri.
                        <br>
                        Demikian Company Profile perusahaan kami sampaikan sebagai bagian dari langkah
                        awal kerjasama yang akan kami tawarkan kepada perusahaan bapak/ibu pimpin. Besar
                        harapan kami untuk menjalin kerjasama dengan perusahaan bapak/ibu pimpin, atas
                        perhatian dan doanya kami ucapkan terima kasih.
                    </p>
                    <div class="tabulation-2 mt-4">
                        <ul class="nav nav-pills nav-fill d-md-flex d-block">
                            <li class="nav-item mb-md-0 mb-2">
                                <a class="nav-link active py-2" data-toggle="tab" href="#home1">Visi</a>
                            </li>
                            <li class="nav-item px-lg-2 mb-md-0 mb-2">
                                <a class="nav-link py-2" data-toggle="tab" href="#home2">Misi</a>
                            </li>
                            <!-- <li class="nav-item">
                                <a class="nav-link py-2 mb-md-0 mb-2" data-toggle="tab" href="#home3">Our
                                    Value</a>
                            </li> -->
                        </ul>
                        <div class="tab-content bg-light rounded mt-2">
                            <div class="tab-pane container p-0 active" id="home1">
                                <p>
                                    <ol>
                                        <li>Menjadi perusahaan jasa konstruksi dan sipil yang
                                            unggul dan berkualitas di Indonesia
                                        </li>
                                        <li>Menciptakan kondisi kerja yang nyaman dan aman
                                        </li>
                                        <li>Mengedepankan keselamatan dan kesehatan kerja
                                            untuk meningkatkan produktivitas kerja</li>
                                        <li>Menciptakan kondisi lapangan kerja dengan
                                            mengedepankan tenaga kerja yang handal dan
                                            berkemampuan pada bidangnya</li>
                                        <li>Menjadi perusahaan sipil dan konstruksi yang
                                            tangguh dan terpercaya
                                            </li>
                                    </ol>
                                </p>
                            </div>
                            <div class="tab-pane container p-0 fade" id="home2">
                                <p><ol>
                                    <li>Mewujudkan kepuasan dan kepercayaan konsumen akan jasa
                                        onstruksi dan sipil yang berkualitas melalui keunggulan sistem
                                        manajemen dan sumber daya manusia yang handal
                                    </li>
                                    <li>Menjadi mitra pembangunan nasional dan sekaligus meningkatkan
                                        kesejahteraan masyarakat melalui penyediaan lapangan kerja
                                    </li>
                                    <li>Memenuhi kebutuhan masyarakat dan institusi akan hunian, gedung
                                        dan jasa pembangunan lainnya
                                        </li>
                                </ol></p>
                            </div>
                            <!-- <div class="tab-pane container p-0 fade" id="home3">
                                <p>Far far away, behind the word mountains, far from the countries Vokalia and
                                    Consonantia, there live the blind texts. Separated they live in
                                    Bookmarksgrove right at the coast of the Semantics, a large language ocean.
                                    Separated they live in Bookmarksgrove right at the coast of the Semantics, a
                                    large language ocean.</p>
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
@endsection
