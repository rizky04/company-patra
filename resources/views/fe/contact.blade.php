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

    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="wrapper">
                        <div class="row no-gutters mb-5">
                            <div class="col-md-7">
                                <div class="contact-wrap w-100 p-md-5 p-4">
                                    <h3 class="mb-4">Kontak Kami</h3>
                                    <div id="form-message-warning" class="mb-4"></div>
                                    <form method="POST" action="{{ route('pesans') }}" id="contactForm" name="contactForm" class="contactForm">
                                       @csrf
                                       @method('POST')
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="label" for="nama">Nama</label>
                                                    <input type="text" class="form-control" name="nama" id="nama"
                                                        placeholder="Nama">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="label" for="email">Email</label>
                                                    <input type="email" class="form-control" name="email" id="email"
                                                        placeholder="Email">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="label" for="notelp">Nomor Telpon</label>
                                                    <input type="text" class="form-control" name="notelp" id="notelp"
                                                        placeholder="Nomor Telpon">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="label" for="subject">Subject</label>
                                                    <input type="text" class="form-control" name="subject" id="subject"
                                                        placeholder="Subject">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="label" for="pesan">Pesan</label>
                                                    <textarea name="pesan" class="form-control" id="pesan" cols="30" rows="4" placeholder="Pesan Anda"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <input type="submit" value="Send Message" class="btn btn-primary">
                                                    <div class="submitting"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-5 d-flex align-items-stretch">
                                <div>
                                    <iframe
                                        src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15828.235176062406!2d112.6292603!3d-7.3472951!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd7fd000fdb90db%3A0x3388d79fd89da1dd!2sPT%20Alfa%20Narapati%20Karya!5e0!3m2!1sid!2sid!4v1710124358903!5m2!1sid!2sid"
                                        width="600" height="100%" style="border:0;" allowfullscreen="" loading="lazy"
                                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="dbox w-100 text-center">
                                    <div class="icon d-flex align-items-center justify-content-center">
                                        <span class="fa fa-map-marker"></span>
                                    </div>
                                    <div class="text">
                                        <p><span>Alamat:</span> <a
                                                href="https://maps.app.goo.gl/iRSwq8Y1nRPdSEi19"><br>Jalan Raya Tenaru RT 13
                                                RW 03 Desa Mulung Kecamatan Driyorejo, Kabupaten Gresik Provinsi Jawa
                                                Timur</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="dbox w-100 text-center">
                                    <div class="icon d-flex align-items-center justify-content-center">
                                        <span class="fa fa-phone"></span>
                                    </div>
                                    <div class="text">
                                        <p><span>Phone:</span> <a href="https://wa.me/6282143198418"><br>0821-4319-8418</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="dbox w-100 text-center">
                                    <div class="icon d-flex align-items-center justify-content-center">
                                        <span class="fa fa-paper-plane"></span>
                                    </div>
                                    <div class="text">
                                        <p><span>Email:</span> <a
                                                href="mailto:corporate@alfa-narapati.co.id"><br>corporate@alfa-narapati.co.id</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="dbox w-100 text-center">
                                    <div class="icon d-flex align-items-center justify-content-center">
                                        <span class="fa fa-globe"></span>
                                    </div>
                                    <div class="text">
                                        <p><span>Website</span> <a href="alfa-narapati.co.id"><br>alfa-narapati.co.id</a>
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
