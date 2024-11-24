@extends('layouts.app')

@section('content')
<div class="container py-5">
    <!-- Judul Agenda -->
    <h1 class="fw-bold mb-4 text-center animate__animated animate__fadeInDown" style="color: #895159;">
        {{ $agenda->title }}
    </h1>

    <!-- Informasi Tanggal dan Konten -->
    <div class="card shadow-lg border-0 mb-5 animate__animated animate__fadeInUp">
        <div class="card-body">
            <p class="text-muted mb-3 text-center">
                <i class="far fa-calendar-alt"></i> 
                {{ \Carbon\Carbon::parse($agenda->event_date)->format('d M Y') }}
            </p>
            <p class="fs-5 text-justify">{{ $agenda->description }}</p>
        </div>
    </div>

    <!-- Tombol Kembali -->
    <div class="text-center">
        <a href="{{ route('agenda.index') }}" 
           class="btn btn-outline-primary rounded-pill shadow-sm" 
           style="border-color: #895159; color: #895159;">
            Kembali ke Daftar Agenda
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
