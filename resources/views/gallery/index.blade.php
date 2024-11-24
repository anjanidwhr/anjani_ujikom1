@extends('layouts.app')

@section('content')
<div class="container py-5">
    <h1 class="text-center mb-5 fw-bold" style="color: #895159;">Our Gallery</h1>

    <div class="row g-4">
        @forelse($galleries as $gallery)
            <div class="col-md-4">
                <div class="card shadow-lg h-100 border-0 hover-zoom">
                    {{-- Cek apakah galeri memiliki foto --}}
                    @if ($gallery->photos->isNotEmpty())
                        <img src="{{ $gallery->photos->first()->image_url }}" 
                             class="card-img-top rounded-top img-fluid" 
                             alt="{{ $gallery->title }}" 
                             style="object-fit: cover; height: 250px;">
                    @else
                        <img src="https://via.placeholder.com/300x200" 
                             class="card-img-top rounded-top img-fluid" 
                             alt="No Image Available" 
                             style="object-fit: cover; height: 250px;">
                    @endif

                    <div class="card-body d-flex flex-column text-center">
                        <h5 class="card-title fw-bold mb-2">{{ $gallery->title }}</h5>
                        {{-- Arahkan ke route show user --}}
                        <a href="{{ route('gallery.show', ['gallery' => $gallery->id]) }}" 
                           class="btn btn-primary mt-auto w-75 mx-auto shadow">View Gallery</a>
                    </div>
                </div>
            </div>
        @empty
            <div class="col-12 text-center">
                <p class="text-muted fs-4">No galleries available at the moment.</p>
            </div>
        @endforelse
    </div>
</div>

{{-- Tambahkan Animasi Hover pada Kartu --}}
<style>
    .hover-zoom {
        transition: transform 0.3s ease-in-out;
    }

    .hover-zoom:hover {
        transform: scale(1.05);
    }

    .card-title {
        color: #895159;
    }

    .btn-primary {
        background-color: #895159;
        border-color: #895159;
    }

    .btn-primary:hover {
        background-color: #b68a8a;
        border-color: #b68a8a;
    }
</style>
@endsection
