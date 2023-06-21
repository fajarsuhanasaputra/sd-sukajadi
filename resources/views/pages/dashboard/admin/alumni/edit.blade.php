@extends('layouts/admin')

@section('content')
<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Edit Alumni</h1>
    </div>


    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            @if($errors->any())
                <div class="mb-5" roles="alert">
                    <div class="bg-red-500 text-white font-bold rounded-t px-4 py-2">
                        There's something wrong!
                    </div>
                    <div class="border border-t-0 border-red-400 rounded-b bg-red-100 px-4 py-3 text-red-700">
                        <p>
                            <ul>
                                @foreach($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </p>
                    </div>
                </div>
            @endif
            <form action="{{ route('dashboard.alumni.update', $alumni->id) }}" class="w-full"
                method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="form-group row">
                    <div class="col-sm-6 mb-3">
                        <label for="" class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">No
                            Ijazah</label>
                        <input type="text"
                            value="{{ old('no_ijazah') ?? $alumni->no_ijazah }}"
                            name="no_ijazah" class="form-control form-control-user" placeholder="No Ijazah" id="">
                    </div>
                    <div class="col-sm-6 mb-3">
                        <label for="" class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">Tanggal
                            Lulus</label>
                        <input type="date"
                            value="{{ old('graduate') ?? $alumni->graduate }}"
                            name="graduate" class="form-control form-control-user" placeholder="Tanggal Lulus" id="">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-6 mb-3">
                        <label for=""
                            class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">NISN</label>
                        <input type="text" name="nisn"
                            value="{{ old('nisn') ?? $alumni->nisn }}"
                            class="form-control form-control-user">
                    </div>
                    <div class="col-sm-6 mb-3">
                        <label for=""
                            class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">Nama</label>
                        <input type="text" name="name"
                            value="{{ old('name') ?? $alumni->name }}"
                            class="form-control form-control-user">
                    </div>
                    <div class="col-sm-6 mb-3">
                        <input type="hidden" value="secret" name="invisible" class="form-control form-control-user"
                            placeholder="Tanggal Lahir" id="">
                    </div>
                    <div class="col-lg-12">
                        <button type="submit" class="btn btn-primary">
                            Save Class
                        </button>
                    </div>
            </form>
        </div>
    </div>

</div>




@endsection
