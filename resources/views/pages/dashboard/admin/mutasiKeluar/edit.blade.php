@extends('layouts/admin')

@section('content')
<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Edit Mutasi Keluar</h1>
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
            <form action="{{ route('dashboard.outmutation.update', $outmutation->id) }}"
                class="w-full" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="form-group row">
                    <div class="col-sm-6 mb-3">
                        <label for="" class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">No
                            Ijazah</label>
                        <input type="text"
                            value="{{ old('reference') ?? $outmutation->reference }}"
                            name="reference" class="form-control form-control-user" placeholder="No Ijazah" id="">
                    </div>
                    <div class="col-sm-6 mb-3">
                        <label for="" class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">Tanggal
                            Lulus</label>
                        <input type="text"
                            value="{{ old('school') ?? $outmutation->school }}"
                            name="school" class="form-control form-control-user" placeholder="Tanggal Lulus" id="">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-6 mb-3">
                        <label for="" class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">Tanggal
                            Lulus</label>
                        <input type="text"
                            value="{{ old('reason') ?? $outmutation->reason }}"
                            name="reason" class="form-control form-control-user" placeholder="Tanggal Lulus" id="">
                    </div>
                    <div class="col-sm-6 mb-3">
                        <label for="" class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">Tanggal
                            Lulus</label>
                        <input type="date" value="{{ old('out') ?? $outmutation->out }}"
                            name="out" class="form-control form-control-user" placeholder="Tanggal Lulus" id="">
                    </div>

                </div>
                <div class="form-group row">
                    <div class="col-sm-12 mb-3">
                        <label for=""
                            class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">NISN</label>
                        <input type="hidden" name="student_id"
                            value="{{ old(' $outmutation->student->id') ?? $outmutation->student->id }}"
                            readonly>
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
