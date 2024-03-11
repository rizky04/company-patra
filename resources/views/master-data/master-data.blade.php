@extends('layouts.sneat_app')

@section('content')
    <div class="content-wrapper">
        <!-- Content -->

        <div class="container-xxl flex-grow-1 container-p-y">
            <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"></span></h4>


            <!-- Text alignment -->
            <h5 class="pb-1 mb-4"></h5>
            <div class="row mb-5">
                    <div class="col-md-6 col-lg-4">
                        <a href="{{ route('user.index') }}">
                            <div class="card icon-card cursor-pointer text-center mb-4 mx-2">
                                <div class="card-body">
                                    <i class="bx bxs-user-circle mb-2" style="font-size: 7em;"></i>
                                    <p class="icon-name text-capitalize text-truncate mb-0">Data Pengguna</p>
                                </div>
                            </div>
                        </a>
                    </div>
                <div class="col-md-6 col-lg-4">
                    <a href="{{ route('product-anper.index') }}">
                        <div class="card icon-card cursor-pointer text-center mb-4 mx-2">
                            <div class="card-body">
                                <i class="bx bxs-vial mb-2" style="font-size: 7em;"></i>
                                <p class="icon-name text-capitalize text-truncate mb-0">Data Produk</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-6 col-lg-4">
                    <a href="{{ route('customer-anper.index') }}">
                        <div class="card icon-card cursor-pointer text-center mb-4 mx-2">
                            <div class="card-body">
                                <i class="bx bxs-user-detail mb-2" style="font-size: 7em;"></i>
                                <p class="icon-name text-capitalize text-truncate mb-0">Data Rekanan</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
                <div class="row mb-5">
                    <div class="col-md-6 col-lg-4">
                        <a href="{{ route('product.index') }}">
                            <div class="card icon-card cursor-pointer text-center mb-4 mx-2">
                                <div class="card-body">
                                    <i class="bx bxs-vial mb-2" style="font-size: 7em;"></i>
                                    <p class="icon-name text-capitalize text-truncate mb-0">Data Produk <br> holding dan
                                        anper
                                    </p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <a href="{{ route('customer.index') }}">
                            <div class="card icon-card cursor-pointer text-center mb-4 mx-2">
                                <div class="card-body">
                                    <i class="bx bxs-user-detail  mb-2" style="font-size: 7em;"></i>
                                    <p class="icon-name text-capitalize text-truncate mb-0">Data Rekanan <br> holding dan
                                        anper</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <a href="{{ route('pt.index') }}">
                            <div class="card icon-card cursor-pointer text-center mb-4 mx-2">
                                <div class="card-body">
                                    <i class="bx bxs-building mb-2" style="font-size: 7em;"></i>
                                    <p class="icon-name text-capitalize text-truncate mb-0">Data <br> Perusahaan</p>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            <div class="row mb-5">
                <div class="col-md-6 col-lg-3">
                    <a href="{{ route('mproduct.index') }}">
                        <div class="card icon-card cursor-pointer text-center mb-4 mx-2">
                            <div class="card-body">
                                <i class="bx bxs-building-house mb-2" style="font-size: 7em;"></i>
                                <p class="icon-name text-capitalize text-truncate mb-0">Data Master Barang</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <!--/ Text alignment -->


        </div>
        <!-- / Content -->

        <!-- Footer -->
        <footer class="content-footer footer bg-footer-theme">
            <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                <div class="mb-2 mb-md-0">
                    ©
                    <script>
                        document.write(new Date().getFullYear());
                    </script>
                    {{-- , made with ❤️ ICT --}}
                    <a href="https://satona.co.id/" target="_blank" class="footer-link fw-bolder">V.1 SATONA GROUP</a>
                </div>
                <div>
                    <a href="https://www.instagram.com/satonaofficial/" class="footer-link me-4" target="_blank"><i
                            class='bx bxl-instagram'></i>satonaofficial</a>
                    <a href="https://www.facebook.com/profile.php?id=100068275282183" target="_blank"
                        class="footer-link me-4"><i class='bx bxl-facebook-circle'></i>Adm Satona (PT Satona)</a>

                    <a href="https://satona.co.id/" target="_blank" class="footer-link me-4"><i
                            class='bx bx-world'></i>satona.co.id</a>

                    {{-- <a href="https://github.com/themeselection/sneat-html-admin-template-free/issues" target="_blank"
                        class="footer-link me-4">Support</a> --}}
                </div>
            </div>
        </footer>
        <!-- / Footer -->

        <div class="content-backdrop fade"></div>
    </div>
    <!-- Content wrapper -->
@endsection
