@extends('layouts/admin')

@section('content')
<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Tambah Guru</h1>
    </div>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <form action="{{ route('dashboard.teacher.store') }}" class="w-full" method="POST"
                enctype="multipart/form-data">
                @csrf
                <div class="form-group row">
                    <div class="col-sm-12 mb-3">
                        <label for=""
                            class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">Nama</label>
                        <input type="text" value="{{ old('name') }}" name="name"
                            class="form-control form-control-user" placeholder="Nama" id="">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-6 mb-3">
                        <label for=""
                            class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">NIP</label>
                        <input type="text" value="{{ old('nip') }}" name="nip"
                            class="form-control form-control-user" placeholder="NIP" id="">
                    </div>
                    <div class="col-sm-6 mb-3">
                        <label for="" class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">Bidang
                            Pelajaran</label>
                        <input type="text" value="{{ old('study') }}" name="study"
                            class="form-control form-control-user" placeholder="Bidang Pelajaran" id="">
                    </div>
                    <div class="col-lg-12">
                        <button class="au-btn au-btn-icon au-btn--blue au-btn--small">
                            <i class="fa fa-save"></i>Save Data
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>

</div>



@endsection
