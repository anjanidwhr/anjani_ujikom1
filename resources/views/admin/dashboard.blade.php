@extends('layouts.admin')

@section('content')
<div class="container">
    <h1 class="mb-4">Admin Dashboard</h1>

    <div class="row g-4">
        <!-- Card Jumlah Users -->
        <div class="col-md-3">
            <div class="card shadow-lg border-0">
                <div class="card-body text-center">
                    <h5 class="card-title">Users</h5>
                    <p class="display-6">{{ $userCount }}</p>
                    <i class="fas fa-users fa-3x" style="color: #343a40;"></i>
                </div>
                <div class="card-footer text-center">
                    <a href="{{ route('users.index') }}" class="btn btn-outline-primary rounded-pill" 
                       style="border-color: #343a40; color: #343a40;">
                        Manage Users
                    </a>
                </div>
            </div>
        </div>

        <!-- Card Jumlah Galleries -->
        <div class="col-md-3">
            <div class="card shadow-lg border-0">
                <div class="card-body text-center">
                    <h5 class="card-title">Galleries</h5>
                    <p class="display-6">{{ $galleryCount }}</p>
                    <i class="fas fa-images fa-3x" style="color: #343a40;"></i>
                </div>
                <div class="card-footer text-center">
                    <a href="{{ route('dashboard.galleries.index') }}" class="btn btn-outline-primary rounded-pill" 
                       style="border-color: #343a40; color: #343a40;">
                        Manage Galleries
                    </a>
                </div>
            </div>
        </div>

        <!-- Card Jumlah Infos -->
        <div class="col-md-3">
            <div class="card shadow-lg border-0">
                <div class="card-body text-center">
                    <h5 class="card-title">Infos</h5>
                    <p class="display-6">{{ $infoCount }}</p>
                    <i class="fas fa-info-circle fa-3x" style="color: #343a40;"></i>
                </div>
                <div class="card-footer text-center">
                    <a href="{{ route('dashboard.infos.index') }}" class="btn btn-outline-primary rounded-pill" 
                       style="border-color: #343a40; color: #343a40;">
                        Manage Infos
                    </a>
                </div>
            </div>
        </div>

        <!-- Card Jumlah Agendas -->
        <div class="col-md-3">
            <div class="card shadow-lg border-0">
                <div class="card-body text-center">
                    <h5 class="card-title">Agendas</h5>
                    <p class="display-6">{{ $agendaCount }}</p>
                    <i class="fas fa-calendar-alt fa-3x" style="color: #343a40;"></i>
                </div>
                <div class="card-footer text-center">
                    <a href="{{ route('dashboard.agendas.index') }}" class="btn btn-outline-primary rounded-pill" 
                       style="border-color: #343a40; color: #343a40;">
                        Manage Agendas
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Font Awesome -->
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
@endsection
