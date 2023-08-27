<!DOCTYPE html>
<html lang="en">
@include('layouts.admin.header')
<style>
    .navbar.bg-light {
        background-color: #f3e2b3 !important;
    }

    .navbar.bg-light .form-control {
        border-radius: 4.25rem;
    }

    .pac-man {
        border-radius: 50%;
        margin: 0 auto;
        margin-top: 8em;
        border-radius: 100em 100em 0 0;
        background: #f00;
        transform-origin: bottom;
        animation: eating-top .5s infinite;
    }

    .pac-man,
    .pac-man::before {
        width: 70px;
        height: calc(35px);
        background: #fed75a;
    }

    .pac-man::before {
        content: '';
        display: block;
        margin-top: calc(35px);
        position: absolute;
        transform-origin: top;
        border-radius: 0 0 100em 100em;
        transform: rotate(80deg);
        animation: eating-bottom .5s infinite;
    }

    .pac-man::after {
        position: absolute;
        border-radius: 100em;
        content: '';
        display: block;
        height: 20px;
        width: 20px;
        margin-top: calc(25px);
        margin-left: calc(25px);
        transform-origin: center;
        animation: center .5s infinite, ball .5s -0.33s infinite linear;
    }

    @keyframes eating-top {
        0% {
            transform: rotate(-40deg);
        }

        50% {
            transform: rotate(0deg);
        }

        100% {
            transform: rotate(-40deg);
        }
    }

    @keyframes eating-bottom {
        0% {
            transform: rotate(80deg);
        }

        50% {
            transform: rotate(0deg);
        }

        100% {
            transform: rotate(80deg);
        }
    }

    @keyframes center {
        0% {
            transform: rotate(40deg);
        }

        50% {
            transform: rotate(0deg);
        }

        100% {
            transform: rotate(40deg);
        }
    }

    @keyframes ball {
        0% {
            opacity: .7;
            box-shadow: 70px 0 0 0 #fed75a, 120px 0 0 0 #fed75a, 170px 0 0 0 #fed75a, 220px 0 0 0 #fed75a;
        }

        100% {
            box-shadow: 20px 0 0 0 #fed75a, 70px 0 0 0 #fed75a, 120px 0 0 0 #fed75a, 170px 0 0 0 #fed75a;
        }
    }
</style>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="{{ url('administrative-url') }}">
        <span><strong class="text-danger"> Quiz360 Admin Panel</strong></span>
    </a>
    {{-- <form class="form-inline  ">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">

        </form> --}}
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    {{-- <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="mr-auto"></div>
            <ul class="navbar-nav my-2 my-lg-0">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                        data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Profile
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg-right" aria-labelledby="navbarDropdown">
                        <h6 class="dropdown-header">Dropdown header</h6>
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                    </div>

                </li>

            </ul>

        </div> --}}
</nav>
<div class="wrapper">
    <!--<div class="wrapper sidebar_minimize">-->
    {{-- @include('layouts.admin.common.main_header')
        @include('layouts.admin.common.sidebar') --}}


    <div class="main-panel">
        @yield('content')
        @include('layouts.admin.footer')
    </div>

</div>
@include('layouts.admin.footerlink')

</body>

</html>
