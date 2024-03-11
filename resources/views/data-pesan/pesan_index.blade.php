@extends('layouts.sneat_app')

@section('content')
    <div class="content-wrapper">
        <div class="container-xxl flex-grow-1 container-p-y">
            <ul class="nav nav-pills flex-column flex-md-row mb-3">
                <li class="nav-item">
                    <a class="nav-link active" href="{{ route('pesan.index') }}">
                        <i class='bx bxs-user-rectangle'></i>
                        Data Pesan</a>
                </li>
            </ul>
            <!-- Basic Bootstrap Table -->
            {{-- <a href="{{ route($routePrefix . '.create') }}" type="button" class="btn rounded-pill btn-info mb-4"><i
                class='bx bxs-plus-circle'></i>Tambah
                Data</a> --}}
            <div class="card">
                <h5 class="card-header">Data Pesan</h5>
                <div class="card-body">
                    <div class="table-responsive text-nowrap">
                        <table class="table" id="table_id">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>nama</th>
                                    <th>email</th>
                                    <th>No Telp</th>
                                    <th>Subject</th>
                                    <th>Pesan</th>
                                    <th>waktu</th>
                                    {{-- <th>Actions</th> --}}
                                </tr>
                            </thead>
                            <tbody class="table-border-bottom-0">
                                @forelse ($models as $item)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $item->nama }}</td>
                                        <td>{{ $item->email }}</td>
                                        <td>{{ $item->notelp }}</td>
                                        <td>{{ $item->subject }}</td>
                                        <td>{{ $item->pesan }}</td>
                                        <td>{{ $item->created_at }}</td>
                                        {{-- <td>
                                            <form action="{{ route($routePrefix . '.destroy', $item->id) }}"
                                                method="post">
                                                @csrf
                                                @method('DELETE')
                                                <div class="btn-group">
                                                    <button type="button"
                                                        class="btn btn-primary btn-icon rounded-pill dropdown-toggle hide-arrow"
                                                        data-bs-toggle="dropdown" aria-expanded="false">
                                                        <i class="bx bx-dots-vertical-rounded"></i>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a class="dropdown-item"
                                                                href="{{ route($routePrefix . '.edit', $item->id) }}">
                                                                <span class="badge rounded-pill bg-label-warning">
                                                                    <i class='bx bx-edit-alt'></i>Ubah
                                                                </span>
                                                            </a>
                                                        </li>
                                                        <hr class="dropdown-divider" />
                                                        </li>
                                                        <li>
                                                            <button type="submit" class="dropdown-item">
                                                                <span class="badge rounded-pill bg-label-danger">
                                                                    <i class='bx bx-trash'></i>hapus
                                                            </button>
                                                        </li>
                                                        </span>
                                                    </ul>
                                                </div>
                                            </form>
                                        </td> --}}
                                    </tr>
                                @empty
                                    <tr class="text-center">
                                        <td>Tidak ada data</td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                        {!! $models->links() !!}
                    </div>
                </div>
            </div>
            <!--/ Basic Bootstrap Table -->
        </div>
        <!-- / Content -->


        <div class="content-backdrop fade"></div>
    </div>
@endsection
