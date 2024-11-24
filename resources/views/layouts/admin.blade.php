<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Admin Dashboard</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Bundle with Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Font Awesome for Icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

    <style>
        body {
            font-family: 'Poppins', sans-serif;
        }

        .sidebar {
            height: 100vh;
            position: fixed;
            background-color: #343a40;
        }

        .sidebar .nav-link {
            color: #c0c0c0;
        }

        .sidebar .nav-link.active, 
        .sidebar .nav-link:hover {
            color: white;
            background-color: #495057;
            border-radius: 5px;
        }

        .navbar {
            background-color: #212529;
        }

        .navbar-brand {
            font-weight: bold;
        }

        .main-content {
            margin-left: 220px;
        }

        .logout-button {
            color: white;
            text-decoration: none;
        }

        .logout-button:hover {
            color: #b68a8a;
        }

        .sidebar .nav-link i {
            margin-right: 10px;
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="{{ route('dashboard.index') }}">
                Admin Dashboard
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <form action="{{ route('logout') }}" method="POST">
                            @csrf
                            <button class="btn btn-link logout-button">Logout <i class="fas fa-sign-out-alt"></i></button>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Sidebar -->
    <div class="sidebar d-flex flex-column p-3">
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link {{ request()->routeIs('dashboard.index') ? 'active' : '' }}" 
                   href="{{ route('dashboard.index') }}">
                    <i class="fas fa-tachometer-alt"></i> Dashboard
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{ route('home') }}">
                    <i class="fas fa-home"></i> Home
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{ route('users.index') }}">
                    <i class="fas fa-users"></i> Manage Users
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ request()->routeIs('dashboard.galleries.*') ? 'active' : '' }}" 
                   href="{{ route('dashboard.galleries.index') }}">
                    <i class="fas fa-images"></i> Manage Galleries
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{ route('dashboard.infos.index') }}">
                    <i class="fas fa-info-circle"></i> Manage Info
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{ route('dashboard.agendas.index') }}">
                    <i class="fas fa-calendar-alt"></i> Manage Agendas
                </a>
            </li>
        </ul>
    </div>

    <!-- Main Content -->
    <main class="main-content px-md-4 py-4">
        <div class="container-fluid">
            @yield('content')
        </div>
    </main>
</body>

</html>
