<?php
$user = Auth::user();
// @inject('getrole', 'App\Models\UserForm');
//echo '<pre>';
//print_r($user);die;
?>
@inject('department', 'App\Models\UserForm')
<style>
    .rel-26 {
        margin-top: 50px;
        margin-bottom: 50px;
    }

    .avatar-sm.float-left.mr-2.sidebarprofile {
        width: 80px;
        height: 80px;
    }

    span.sub-item {
        color: cadetblue;
        font-family: app_med;
        font-size: 19px;
    }

    @font-face {
        src: url('public/admin_asset/fonts/apple/JosefinSans-Bold.ttf');
        font-family: app_bold;
    }

    @font-face {
        src: url('public/admin_asset/fonts/apple/JosefinSans-Light.ttf');
        font-family: app_light;
    }

    @font-face {
        src: url('public/admin_asset/fonts/apple/JosefinSans-Medium.ttf');
        font-family: app_med;
    }

    @font-face {
        src: url('public/admin_asset/fonts/apple/JosefinSans-Regular.ttf');
        font-family: app_regular;
    }

    #sidebar {
        font-family: app_regular !important;
    }

    .student_id {
        font-size: 15px;
        color: darkcyan;
        font-family
    }

    @media only screen and (max-width: 600px) {
        .student_id {
            font-size: 10px;
            color: darkcyan;
            font-family
        }
    }
</style>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet">
<!-- Sidebar -->
<div id="sidebar" class="sidebar sidebar-style-2 @if (CurrSessionMode() == 'dark') dark-mode-modal @endif bg-white">
    <div class="sidebar-wrapper scrollbar scrollbar-inner">
        <div class="sidebar-content">
            <div class="user">
                <div class="avatar-sm float-left mr-2 sidebarprofile">
                    @if ($user->image)
                        <img src="{{ asset('public/user_images/') . '/' . $user->image }}" alt="..."
                            class="avatar-img rounded-circle">
                    @else
                        <img src="{{ asset('public/admin_asset') }}/img/profile.png" alt="..."
                            class="avatar-img rounded-circle">
                    @endif
                </div>
                <div class="info">
                    <a data-toggle="collapse" href="#collapseExample" aria-expanded="true">
                        <span>
                            <span
                                style="font-size:15px; color: rgb(13, 15, 15);font-family":app_bold">{{ Auth::user()->name }}</span>
                            <span class="student_id">ID
                                : {{ Auth::user()->user_id }}</span>
                            <span style="font-size:15px; color: darkcyan;font-family":app_bold">(Student)</span>

                            {{-- {{ $user->name }} --}}
                            @if (Auth::user()->user_type == 'AUTHORIZE_USER')
                                <span class="user-level">
                                    {{ userData()->roles[0]->name }}
                                </span>
                            @else
                                <span class="user-level">
                                    {{ Auth::user()->user_type }}
                                </span>
                            @endif

                            <span class="caret"></span>
                        </span>
                    </a>
                    <div class="clearfix"></div>

                    <div class="collapse in" id="collapseExample">
                        <ul class="nav">
                            <li>
                                <a href="{{ url('users/' . $user->id) }}">
                                    <span class="link-collapse"
                                        style="font-size:18px; color: darkcyan;font-family":app_bold"><i
                                            class="far fa-user-circle"></i><span
                                            style="font-size:15px; color: darkcyan;"></span>{{ __('My Profile') }}</span>
                                </a>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
            <ul class="nav nav-primary">
                <li class="nav-item @if (menu_class($url) == '' || menu_class($url) === 'dashboard') active @endif" style="padding: 0px 7px 0px 7px">
                    <a href="{{ url('/') }}" class="collapsed">

                        <i class="fa fa-home" style="font-size: 26px; color:cadetblue"></i>
                        <p style="font-size:19px; color: darkcyan;">{{ __('Dashboard') }}</p>
                        <!--<span class="caret"></span>-->
                    </a>

                </li>
                <li class="nav-section">
                    <span class="sidebar-mini-icon">
                        <i class="fa fa-ellipsis-h"></i>
                    </span>
                    {{-- <h4 class="text-section">{{ __('Components') }}</h4> --}}
                </li>
                {{-- @if ($user->can('view-user'))
                    @if (Auth::user()->user_type == 'AUTHORIZE_USER')
                        <li class="nav-item @if (menu_class($url) === '/users' || menu_class($url) === 'users') active @endif" style="padding: 0px 7px 0px 7px">
                            <a data-toggle="collapse" href="#forms">
                                <i class="fas fa-user" style="font-size:15px; color: black;"></i>
                                <p>{{ __('User') }}</p>
                                <span class="caret"></span>
                            </a>
                            <div class="collapse" id="forms">
                                <ul class="nav nav-collapse">
                                    @if ($user->can('add-user'))
                                        <li>
                                            <a href="{{ url('users/create') }}">
                                                <span class="sub-item">{{ __('Add User') }}</span>
                                            </a>
                                        </li>
                                    @endif
                                    @if ($user->can('view-user'))
                                        <li>
                                            <a href="{{ url('users') }}">
                                                <span class="sub-item">{{ __('List of User') }}</span>
                                            </a>
                                        </li>
                                    @endif
                                </ul>
                            </div>
                        </li>
                    @endif
                @endif --}}

                @if (Auth::user()->hasRole('admin'))
                    <li class="nav-item @if (menu_class($url) === '/users' || menu_class($url) === 'users') active @endif"
                        style="padding: 0px 7px 0px 7px">
                        <a data-toggle="collapse" href="#forms">
                            <i class="far fa-user" style="font-size:15px; color: darkcyan;"></i>
                            <p style="font-size:19px; color: cadetblue;">{{ __('User') }}</p>
                            <span class="caret"></span>
                        </a>
                        <div class="collapse" id="forms">
                            <ul class="nav nav-collapse">

                                <li>
                                    <a href="{{ url('users/create') }}">
                                        <span class="sub-item">{{ __('Add User') }}</span>
                                    </a>
                                </li>


                                <li>
                                    <a href="{{ url('users') }}">
                                        <span class="sub-item">{{ __('List of User') }}</span>
                                    </a>
                                </li>

                            </ul>
                        </div>
                    </li>
                @endif
                {{-- @if ($user->can('subject-second'))
                    <li class="nav-item" style="padding: 0px 7px 0px 7px">
                        <a href="{{ url('/subject') }}">
                            <i class="far fa-copy" style="font-size:15px; color: darkcyan;"></i><span
                                class="sub-item">{{ __('Subject') }}</span>
                        </a>
                    </li>
                @endif
                @if ($user->can('subject-student'))
                    <li class="nav-item" style="padding: 0px 7px 0px 7px">
                        <a href="{{ url('/subject') }}">
                            <i class="far fa-copy" style="font-size:15px; color: darkcyan;"></i><span
                                class="sub-item">{{ __('Subject Info') }}</span>


                        </a>
                    </li>
                @endif

                @if ($user->can('divisions'))
                    <li class="nav-item" style="padding: 0px 7px 0px 7px">
                        <a href="{{ url('/subject') }}">
                            <i class="far fa-file" style="font-size:15px; color: darkcyan;"></i><span
                                class="sub-item">{{ __('Divisions') }}</span>
                        </a>
                    </li>
                @endif
                @if ($user->can('classes'))
                    <li class="nav-item" style="padding: 0px 7px 0px 7px">
                        <a href="{{ url('/subject') }}">
                            <i class="fab fa-atlassian" style="font-size:15px; color: darkcyan;"></i><span
                                class="sub-item">{{ __('Classes') }}</span>
                        </a>
                    </li>
                @endif


                @if ($user->can('studentsinfo'))
                    <li class="nav-item" style="padding: 0px 7px 0px 7px">
                        <a href="{{ url('/subject') }}">
                            <i class="fas fa-user-astronaut" style="font-size:15px; color: darkcyan;"></i><span
                                class="sub-item">{{ __('Students') }}</span>
                        </a>
                    </li>
                @endif --}}


                @if ($user->can('examentry'))
                    <li class="nav-item" style="padding: 0px 7px 0px 7px">
                        <a href="{{ url('/exams') }}">
                            <i class="fab fa-leanpub" style="font-size:15px; color: darkcyan;"></i><span
                                class="sub-item">{{ __('Examinations') }}</span>
                        </a>
                    </li>
                @endif

                {{-- <li class="nav-item" style="padding: 0px 7px 0px 7px">
                    <a href="{{ url('/student-model-test') }}">
                        <i class="fa-solid fa-folder-tree" style="font-size:15px; color: darkcyan;"></i><span
                            class="sub-item">{{ __('Model Test') }}</span>
                    </a>
                </li> --}}

                <li class="nav-item" style="padding: 0px 7px 0px 7px">
                    <a href="{{ url('/subject') }}">
                        <i class="far fa-bell" style="font-size:15px; color: darkcyan;"></i><span
                            class="sub-item">{{ __('Notice') }}</span>
                    </a>
                </li>
                @if ($user->can('enrolledsub'))
                    <li class="nav-item" style="padding: 0px 7px 0px 7px">
                        <a href="{{ url('/subject') }}">
                            <i class="far fa-newspaper" style="font-size:15px; color: darkcyan;"></i><span
                                class="sub-item">{{ __('Enrolled Subjects') }}</span>
                        </a>
                    </li>
                @endif

                {{-- <li class="nav-item" style="padding: 0px 7px 0px 7px">
                    <a href="{{ url('/subject') }}">
                        <i class="fab fa-innosoft" style="font-size:15px; color: darkcyan;"></i><span
                            class="sub-item">{{ __('College Info') }}</span>
                    </a>
                </li> --}}


                <li class="nav-item" style="padding: 0px 7px 0px 7px">
                    <a href="{{ url('/') }}">
                        <i class="fa-solid fa-book-open-reader" style="font-size:15px; color: darkcyan;"></i><span
                            class="sub-item">{{ __('Books Corner') }}</span>
                    </a>
                </li>
                <li class="nav-item" style="padding: 0px 7px 0px 7px">
                    <a href="{{ url('/') }}">
                        <i class="fa-solid fa-diagram-predecessor" style="font-size:15px; color: darkcyan;"></i><span
                            class="sub-item">{{ __('Enrolled Courses') }}</span>
                    </a>
                </li>
                <li class="nav-item" style="padding: 0px 7px 0px 7px">
                    <a href="{{ url('/') }}">
                        <i class="fa-solid fa-square-rss" style="font-size:15px; color: darkcyan;"></i><span
                            class="sub-item">{{ __('Forum Discussion') }}</span>
                    </a>
                </li>
                <li class="nav-item" style="padding: 0px 7px 0px 7px">
                    <a href="{{ url('/') }}">
                        <i class="fa-solid fa-headset" style="font-size:15px; color: darkcyan;"></i><span
                            class="sub-item">{{ __('Contact Us') }}</span>
                    </a>
                </li>
                <li class="nav-item" style="padding: 0px 7px 0px 7px">
                    <a href="{{ url('/') }}">
                        <i class="fa-solid fa-play" style="font-size:15px; color: darkcyan;"></i><span
                            class="sub-item">{{ __('Tutorials') }}</span>
                    </a>
                </li>
                <li class="nav-item" style="padding: 0px 7px 0px 7px">
                    <a href="{{ url('/') }}">
                        <i class="fa-solid fa-lock" style="font-size:15px; color: darkcyan;"></i><span
                            class="sub-item">{{ __('Terms & Privacy') }}</span>
                    </a>
                </li>
                <li class="nav-item" style="padding: 0px 7px 0px 7px">
                    <a href="{{ url('/') }}">
                        <i class="fa-solid fa-certificate" style="font-size:15px; color: darkcyan;"></i><span
                            class="sub-item">{{ __('Certificate') }}</span>
                    </a>
                </li>

                @if ($user->can('SMTP'))
                    <li class="nav-item" style="padding: 0px 7px 0px 7px">
                        <a href="{{ url('/') }}">
                            <i class="far fa-envelope" style="font-size:15px; color: darkcyan;"></i><span
                                class="sub-item">{{ __('SMTP') }}</span>
                        </a>
                    </li>
                @endif

                <!--<a class="btn btn-outline-info" href="{{ url('reset') }}">Reset</a>-->


                @if (Auth::user()->hasRole('super-admin'))

                    <li class="nav-item @if (menu_class($url) === '/roles' || menu_class($url) === 'roles') active @endif"
                        style="padding: 0px 7px 0px 7px">
                        <a data-toggle="collapse" href="#role-user">
                            <i class="fas fa-user-secret fa-7x" style="font-size:15px; color: darkcyan;"></i>
                            <p>{{ __('Role') }}</p>
                            <span class="caret"></span>
                        </a>
                        <div class="collapse" id="role-user">
                            <ul class="nav nav-collapse">
                                @if ($user->can('add-role'))
                                    <li>
                                        <a href="{{ url('roles/create') }}">
                                            <span class="sub-item">{{ __('Add Role') }}</span>
                                        </a>
                                    </li>
                                @endif
                                @if ($user->can('view-role'))
                                    <li>

                                        <a href="{{ url('roles') }}">
                                            <span class="sub-item">{{ __('List of Role') }}</span>
                                        </a>
                                    </li>
                                @endif
                            </ul>
                        </div>
                    </li>
                @endif


                @if (Auth::user()->hasRole('super-admin'))
                    <li class="nav-item @if (menu_class($url) === '/permissions' || menu_class($url) === 'permissions') active @endif"
                        style="padding: 0px 7px 0px 7px">
                        <a data-toggle="collapse" href="#permission">
                            <i class="fas fa-key" style="font-size:15px; color: black;"></i>
                            <p>{{ __('Permission') }}</p>
                            <span class="caret"></span>
                        </a>
                        <div class="collapse" id="permission">
                            <ul class="nav nav-collapse">
                                @if ($user->can('add-permission'))
                                    <li>
                                        <a href="{{ url('permissions/create') }}">
                                            <span class="sub-item">{{ __('Add Permission') }}</span>
                                        </a>
                                    </li>
                                @endif
                                @if ($user->can('view-permission'))
                                    <li>
                                        <a href="{{ url('permissions') }}">
                                            <span class="sub-item">{{ __('List of Permission') }}</span>
                                        </a>
                                    </li>
                                @endif
                            </ul>
                        </div>
                    </li>
                @endif








                {{-- @endif --}}
                <li class="nav-item">
                    <a href="{{ route('logout') }}" class="nav-link"
                        onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();">
                        <i class="nav-icon fas fa-sign-out-alt" style="font-size:15px; color: darkcyan;"></i>
                        <p style="font-size:18px; color: cadetblue;">
                            {{ __('Logout') }}
                        </p>
                    </a>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>
                </li>

            </ul>
        </div>
    </div>
</div>
<!-- End Sidebar -->
