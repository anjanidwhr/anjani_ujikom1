@extends('layouts.app')

@section('content')
<div class="container py-5">
    <!-- Judul Halaman -->
    <h1 class="text-center fw-bold mb-5" style="color: #895159;">Daftar Agenda</h1>

    @if ($agendas->isEmpty())
        <p class="text-center text-muted fs-5">Belum ada agenda yang tersedia.</p>
    @else
        <div class="row g-4">
            @foreach ($agendas as $agenda)
                <div class="col-md-6">
                    <div class="card shadow-sm border-0 h-100 hover-zoom">
                        <div class="card-body d-flex flex-column">
                            <h5 class="card-title fw-bold" style="color: #895159;">
                                {{ $agenda->title }}
                            </h5>
                            <p class="text-muted mb-2">{{ Str::limit($agenda->description, 100, '...') }}</p>
                            <p class="text-muted small">
                                <i class="far fa-calendar-alt"></i> 
                                {{ \Carbon\Carbon::parse($agenda->event_date)->format('d M Y') }}
                            </p>
                            <a href="{{ route('agenda.show', $agenda->id) }}" 
                               class="btn btn-outline-primary mt-auto" 
                               style="border-color: #895159; color: #895159;">
                                Baca Selengkapnya
                            </a>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    @endif
</div>

<!-- Gaya CSS -->
<style>
    .hover-zoom {
        transition: transform 0.3s ease-in-out;
    }

    .hover-zoom:hover {
        transform: scale(1.05);
    }

    .btn-outline-primary:hover {
        background-color: #af787f;
        border-color: #895159;
        color: white;
    }
</style>
@endsection
