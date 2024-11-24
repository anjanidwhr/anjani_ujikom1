@extends('layouts.app')

@section('content')
<div class="container py-5">
    <!-- Hero Section -->
    <div class="text-center mb-5">
        <h1 class="fw-bold animate__animated animate__fadeInDown" style="color: #895159;">Selamat Datang di Website Kami!</h1>
        <p class="lead text-muted animate__animated animate__fadeInUp mb-4">
            {{ $welcomeMessage }}
        </p>

        <div class="d-flex justify-content-center gap-3">
            @auth
            <form action="{{ route('logout') }}" method="POST">
                @csrf
                <button type="submit" class="btn btn-primary rounded-pill px-4 py-2 shadow-sm animate__animated animate__fadeInUp" 
                        style="background-color: #895159; border-color: #895159;">
                    Logout
                </button>
            </form>
            @else
            <a href="{{ route('login') }}" class="btn btn-primary rounded-pill px-4 py-2 shadow-sm animate__animated animate__fadeInUp" 
               style="background-color: #895159; border-color: #895159;">
                Login
            </a>
            <a href="{{ route('register') }}" class="btn btn-outline-primary rounded-pill px-4 py-2 shadow-sm animate__animated animate__fadeInUp" 
               style="border-color: #895159; color: #895159;">
                Register
            </a>
            @endauth
        </div>
    </div>

    <!-- Informasi Utama -->
    <div id="fitur" class="row g-4">
        <div class="col-md-4">
            <div class="card shadow-lg border-0 h-100 hover-zoom">
                <img src="https://i.ytimg.com/vi/33lLn44_AfM/maxresdefault_live.jpg" class="card-img-top" alt="Galeri">
                <div class="card-body text-center">
                    <h5 class="card-title fw-bold mb-3" style="color: #895159;">Galeri</h5>
                    <p class="text-muted">Lihat koleksi foto dan momen terbaik kami.</p>
                    <a href="{{ route('gallery.index') }}" 
                       class="btn btn-outline-primary mt-3 rounded-pill" 
                       style="border-color: #895159; color: #895159;">
                        Kunjungi Galeri
                    </a>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow-lg border-0 h-100 hover-zoom">
                <img src="https://i.ytimg.com/vi/PUkodmusvC8/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-CYAC0AWKAgwIABABGGUgZShlMA8=&rs=AOn4CLBd6ZUWbvRPJKM-2UlIPY9B1LT6kQ" class="card-img-top" alt="Agenda">
                <div class="card-body text-center">
                    <h5 class="card-title fw-bold mb-3" style="color: #895159;">Agenda</h5>
                    <p class="text-muted">Jadwal acara dan kegiatan terbaru kami.</p>
                    <a href="{{ route('agenda.index') }}" 
                       class="btn btn-outline-primary mt-3 rounded-pill" 
                       style="border-color: #895159; color: #895159;">
                        Lihat Agenda
                    </a>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow-lg border-0 h-100 hover-zoom">
                <img src="https://i.ytimg.com/vi/UmFTAcr6lAc/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-CYAC0AWKAgwIABABGGUgYihWMA8=&rs=AOn4CLD9bAze80zRb88EDXbbFp2F38tROA" class="card-img-top" alt="Informasi">
                <div class="card-body text-center">
                    <h5 class="card-title fw-bold mb-3" style="color: #895159;">Informasi</h5>
                    <p class="text-muted">Berita dan informasi terkini.</p>
                    <a href="{{ route('info.index') }}" 
                       class="btn btn-outline-primary mt-3 rounded-pill" 
                       style="border-color: #895159; color: #895159;">
                        Baca Informasi
                    </a>
                </div>
            </div>
        </div>
    </div>

    <!-- Google Maps -->
    <div class="mt-5">
        <h3 class="text-center fw-bold mb-4" style="color: #895159;">Lokasi Kami</h3>
        <div class="ratio ratio-4x3 mx-auto" style="max-width: 600px;">
            <iframe 
                src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d31704.398742240563!2d106.824694!3d-6.640733000000001!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69c8b16ee07ef5%3A0x14ab253dd267de49!2sSMK%20Negeri%204%20Bogor%20(Nebrazka)!5e0!3m2!1sid!2sid!4v1729908328874!5m2!1sid!2sid" 
                style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
            </iframe>
        </div>
    </div>

    <!-- Gaya CSS -->
    <style>
        .hover-zoom {
            transition: transform 0.3s ease-in-out;
        }

        .hover-zoom:hover {
            transform: scale(1.07);
        }

        .btn-outline-primary:hover {
            background-color: #af787f;
            border-color: #895159;
            color: white;
        }

        .btn-primary:hover {
            background-color: #b68a8a;
            border-color: #895159;
        }
    </style>
@endsection
