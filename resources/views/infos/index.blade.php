@extends('layouts.app')

@section('content')
<div class="container py-5">
    <!-- Judul Halaman -->
    <h1 class="text-center fw-bold mb-5" style="color: #895159;">Informasi</h1>

    @if ($infos->isEmpty())
        <p class="text-center text-muted fs-5">Belum ada informasi yang tersedia.</p>
    @else
        <div class="row g-4">
            @foreach ($infos as $info)
                <div class="col-md-6">
                    <div class="card shadow-sm h-100 border-0 hover-zoom">
                        <div class="card-body">
                            <h5 class="card-title fw-bold mb-3" style="color: #895159;">
                                {{ $info->title }}
                            </h5>
                            <p class="text-muted">{{ Str::limit($info->content, 150, '...') }}</p>
                            <a href="{{ route('info.show', $info->id) }}" 
                               class="btn btn-outline-primary mt-3" style="border-color: #895159; color: #895159;">
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
