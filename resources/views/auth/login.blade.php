@extends('layouts.app')

@section('content')
<div class="container d-flex justify-content-center align-items-center" style="min-height: 100vh;">
    <div class="card shadow-lg border-0" style="max-width: 400px; width: 100%; animation: fadeIn 0.8s;">
        <div class="card-body">
            <h2 class="text-center mb-4" style="color: #895159;">Login</h2>
            <form method="POST" action="{{ route('login.store') }}">
                @csrf
                <div class="mb-3 position-relative">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" name="email" id="email" class="form-control ps-5" placeholder="Masukkan Email" required>
                    <i class="fas fa-envelope position-absolute" style="left: 15px; top: 38px; color: #895159;"></i>
                </div>
                <div class="mb-3 position-relative">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" name="password" id="password" class="form-control ps-5" placeholder="Masukkan Password" required>
                    <i class="fas fa-lock position-absolute" style="left: 15px; top: 38px; color: #895159;"></i>
                </div>
                <button type="submit" class="btn btn-primary w-100 mb-3" style="background-color: #895159; border-color: #895159;">
                    Login
                </button>
                <p class="text-center">
                    Belum punya akun? <a href="{{ route('register') }}" style="color: #895159;">Daftar Sekarang</a>
                </p>
            </form>
        </div>
    </div>
</div>

<!-- Font Awesome -->
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

<style>
    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>
@endsection
