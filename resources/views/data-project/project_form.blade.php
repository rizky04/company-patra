@extends('layouts.sneat_app')

@section('content')
    <div class="content-wrapper">
        <!-- Content -->

        <div class="container-xxl flex-grow-1 container-p-y">
            <ul class="nav nav-pills flex-column flex-md-row mb-3">
                <li class="nav-item">
                    <a class="nav-link active" href="{{ route('projects.index') }}">
                        <i class='bx bxs-user-rectangle'></i>
                        Data Project</a>
                </li>
            </ul>

            <div class="row">
                <div class="card">
                    <h5 class="card-header"> {{ $title }}</h5>
                    <div class="card-body">
                        {!! Form::model($model, ['route' => $route, 'method' => $method, 'files' => 'true']) !!}
                        <div class="form-group">
                            <label for="nama">Nama Project</label>
                            {!! Form::text('nama', null, ['class' => 'form-control', 'autofocus']) !!}
                            <span class="text-danger">{{ $errors->first('nama') }}</span>
                        </div>
                        <div class="form-group mt-3">
                            <label for="keterangan">Keterangan</label>
                            {!! Form::text('keterangan', null, ['class' => 'form-control']) !!}
                            <span class="text-danger">{{ $errors->first('keterangan') }}</span>
                        </div>
                        @if ($model->photo)
                        <div class="form-group mt-3">
                            <img src="{{ \Storage::url($model->photo) }}" alt="user-avatar" class="d-block rounded"
                                height="100" width="100" id="uploadedAvatar" />
                        </div>
                    @endif
                    <div class="form-group mt-3">
                        <label for="photo">Foto (Format: jpg, jpeg, png, Ukuran Maks: 5MB)</label>
                        {!! Form::file('photo', ['class' => 'form-control', 'accept' => 'image/*']) !!}
                        <span class="text-danger">{{ $errors->first('photo') }}</span>
                    </div>
                        {!! Form::submit($button, ['class' => 'btn btn-primary mt-3']) !!}
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
            <!--/ Basic Bootstrap Table -->
        </div>
        <!-- / Content -->


        <div class="content-backdrop fade"></div>
    </div>
@endsection
