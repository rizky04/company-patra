@extends('layouts.sneat_app')

@section('content')
    {{-- <div class="container">
        <div class="row justify-content-right">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Hai, Operator</div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif

                        {{ __('You are logged in!') }}
                    </div>
                </div>
            </div>
        </div>
    </div> --}}
    <div class="content-wrapper">
        <!-- Content -->
        <div class="container-xxl flex-grow-1 container-p-y">
            <div class="row">
                <div class="col-lg-12 mb-4 order-0">
                    <div class="card">
                        <div class="d-flex align-items-end row">
                            <div class="col-sm-7">
                                <div class="card-body">
                                    <h5 class="card-title text-primary">Hai, {{ Auth::user()->name }}! 🎉</h5>
                                    <p class="mb-4">
                                        Selamat <span class="fw-bold">beraktivitas</span> sehat selalu
                                    </p>

                                    {{-- <a href="javascript:;" class="btn btn-sm btn-outline-primary">View Badges</a> --}}
                                </div>
                            </div>
                            <div class="col-sm-5 text-center text-sm-left">
                                <div class="card-body pb-0 px-0 px-md-4">
                                    <img src="{{ asset('sneat') }}/assets/img/illustrations/man-with-laptop-light.png"
                                        height="140" alt="View Badge User"
                                        data-app-dark-img="{{ asset('sneat') }}illustrations/man-with-laptop-dark.png"
                                        data-app-light-img="{{ asset('sneat') }}illustrations/man-with-laptop-light.png" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-12 col-lg-12 order-3 order-md-2">
                <div class="row">
                  <div class="col-3 mb-4">
                    <div class="card">
                      <div class="card-body">
                        <div class="card-title d-flex align-items-start justify-content-between">
                          <div class="avatar flex-shrink-0">
                            <img src="{{ asset('sneat') }}/assets/img/icons/unicons/chart.png" alt="Credit Card" class="rounded" />
                          </div>
                        </div>
                        <span class="d-block mb-1">Data Project</span>
                        <h3 class="card-title text-nowrap mb-2">{{ $project }}</h3>
                      </div>
                    </div>
                  </div>
                  <div class="col-3 mb-4">
                    <div class="card">
                      <div class="card-body">
                        <div class="card-title d-flex align-items-start justify-content-between">
                          <div class="avatar flex-shrink-0">
                            <img src="{{ asset('sneat') }}/assets/img/icons/unicons/chart.png" alt="Credit Card" class="rounded" />
                          </div>
                        </div>
                        <span class="fw-semibold d-block mb-1">Data Berita</span>
                        <h3 class="card-title mb-2">{{ $blog }}</h3>
                      </div>
                    </div>
                  </div>
                   <div class="col-3 mb-4">
                    <div class="card">
                      <div class="card-body">
                        <div class="card-title d-flex align-items-start justify-content-between">
                          <div class="avatar flex-shrink-0">
                            <img src="{{ asset('sneat') }}/assets/img/icons/unicons/chart.png" alt="Credit Card" class="rounded" />
                          </div>
                        </div>
                        <span class="d-block mb-1">Data Team</span>
                        <h3 class="card-title text-nowrap mb-2">{{ $team }}</h3>
                      </div>
                    </div>
                  </div>
                  <div class="col-3 mb-4">
                    <div class="card">
                      <div class="card-body">
                        <div class="card-title d-flex align-items-start justify-content-between">
                          <div class="avatar flex-shrink-0">
                            <img src="{{ asset('sneat') }}/assets/img/icons/unicons/chart.png" alt="Credit Card" class="rounded" />
                          </div>
                        </div>
                        <span class="fw-semibold d-block mb-1">Data Pesan Masuk</span>
                        <h3 class="card-title mb-2">{{ $pesan }}</h3>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            <footer class="content-footer footer bg-footer-theme">
                <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                    <div class="mb-2 mb-md-0">
                        ©
                        <script>
                            document.write(new Date().getFullYear());
                        </script>
                        {{-- , made with ❤️ ICT --}}
                        <a href="https://satona.co.id/" target="_blank" class="footer-link fw-bolder">Copyright © 2024
                            PT ALFA NARAPATI KARYA</a>
                    </div>

                </div>
            </footer>
        </div>
    </div>
@endsection
