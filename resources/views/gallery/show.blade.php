@extends('layouts.app')

@section('content')
<div class="container py-5">
    <h1 class="text-center fw-bold mb-5" style="color: #895159;">{{ $gallery->title }}</h1>

    <div class="row g-4">
        @forelse($gallery->photos as $photo)
            <div class="col-md-4">
                <div class="card shadow-lg border-0 h-100 hover-zoom">
                    <img src="{{ $photo->image_url }}" 
                         class="card-img-top rounded-top img-fluid" 
                         alt="{{ $photo->title }}" 
                         style="object-fit: cover; height: 250px;">
                    <div class="card-body text-center d-flex flex-column">
                        <h5 class="card-title fw-bold mb-2" style="color: #895159;">{{ $photo->title }}</h5>
                        <p class="text-muted small">{{ $photo->description ?? 'No description available.' }}</p>
                        <a href="{{ route('photos.show', $photo->id) }}" 
                           class="btn btn-primary mt-auto w-75 mx-auto shadow">View Photo</a>
                    </div>
                </div>
            </div>
        @empty
            <div class="col-12 text-center">
                <p class="text-muted fs-4">No photos available in this gallery.</p>
            </div>
        @endforelse
    </div>
</div>

{{-- Animasi Hover dan Efek Gaya --}}
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
