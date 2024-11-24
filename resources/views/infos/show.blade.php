@extends('layouts.app')

@section('content')
<div class="container py-5">
    <!-- Judul Informasi -->
    <h1 class="fw-bold mb-4 text-center animate__animated animate__fadeInDown" style="color: #895159;">
        {{ $info->title }}
    </h1>

    <!-- Konten Informasi -->
    <div class="card shadow-lg border-0 mb-5 animate__animated animate__fadeInUp">
        <div class="card-body">
            <p class="text-muted fs-5">{{ $info->content }}</p>
        </div>
    </div>

    <!-- Tombol Kembali -->
    <div class="text-center">
        <a href="{{ route('info.index') }}" 
           class="btn btn-outline-primary rounded-pill shadow-sm" 
           style="border-color: #895159; color: #895159;">
            Kembali ke Daftar Informasi
        </a>
    </div>
</div>

<!-- Gaya CSS -->
<style>
    .btn-outline-primary:hover {
        background-color: #af787f;
        border-color: #895159;
        color: white;
    }
</style>
@endsection
