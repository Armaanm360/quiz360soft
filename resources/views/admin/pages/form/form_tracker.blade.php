@extends('admin.master')
@section('content')
    @inject('usessrname', 'App\Models\UserForm')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+Bengali:wght@100;200;300;500;600;800;900&display=swap"
        rel="stylesheet">
    <div class="content">

        <div class="page-inner">
            <div class="page-header">
                <h4 class="page-title">{{ __('Form') }}</h4>
                <ul class="breadcrumbs">
                    <li class="nav-home">
                        <a href="#">
                            <i class="flaticon-home"></i>
                        </a>
                    </li>
                    <li class="separator">
                        <i class="flaticon-right-arrow"></i>
                    </li>
                    <li class="nav-item">
                        <a href="#">{{ __('Form') }}</a>
                    </li>
                    <li class="separator">
                        <i class="flaticon-right-arrow"></i>
                    </li>
                    <li class="nav-item">
                        <a href="#">{{ __('List of Submitted Reports') }}</a>
                    </li>
                </ul>
            </div>
            <div class="row">
                <div class="col-md-12"> <span class="display-3" style="font-family:'Noto Sans Bengali', sans-serif">ফর্ম
                        ট্র্যাকার</span> <i class="fa-regular fa-border-center-h" style="font-size: 50px"></i></div>

            </div>
            <div class="row">
                <style>
                    @import url('https://fonts.googleapis.com/css?family=Raleway:200');



                    .progress {
                        padding: 0;
                        width: 90%;
                        height: 30px;
                        overflow: hidden;
                        background: #e5e5e5;
                        border-radius: 6px;

                    }

                    .bar {
                        position: relative;
                        float: left;
                        min-width: 1%;
                        height: 100%;
                        background: #cb3a06;
                    }

                    .percent {
                        position: absolute;
                        top: 50%;
                        left: 50%;
                        transform: translate(-50%, -50%);
                        margin: 0;
                        font-family: tahoma, arial, helvetica;
                        font-size: 12px;
                        color: white;
                    }


                    .gradient-border {
                        --borderWidth: 3px;
                        background: #fff;
                        position: relative;
                        border-radius: var(--borderWidth);
                    }

                    * {
                        margin: 0;
                        paddding: 0;
                        box-sizing: border-box font-family: 'Lato', sans-serif;
                        font-family: 'Montserrat', sans-serif;
                    }

                    .specific {
                        display: flex;
                        align-items: center;
                        justify-content: center;
                        background: #0000;
                    }

                    .upsale-button {
                        position: relative;
                        z-index: 0;
                        height: 40px;
                        overflow: hidden;
                        border: none !important;
                        padding: 0 !important;
                        background: #5D5DFF !important;
                        color: #656565;
                        background: white;
                        border-radius: 8px;
                        width: 150px;
                        text-align: center;
                        font-size: 14px;
                        font-weight: 400;
                        box-shadow: 0 4px 50px 0 rgb(0 0 0 / 7%);
                        transition: .2s all linear;
                        text-decoration: initial;
                    }

                    .upsale-button span {
                        position: relative;
                        z-index: 1;
                        height: calc(100% - 4px);
                        width: calc(100% - 4px);
                        top: 2px;
                        left: 2px;
                        align-items: center;
                        display: flex;
                        justify-content: center;
                        border-radius: 8px;
                        color: white;
                        background: #5D5DFF;
                    }

                    .upsale-button:after {
                        content: "";
                        position: absolute;
                        z-index: -2;
                        left: -50%;
                        top: -50%;
                        width: 200%;
                        height: 200%;
                        background-color: transparent;
                        background-repeat: no-repeat;
                        background-size: 50% 50%, 50% 50%;
                        background-position: 0 0, 100% 0, 100% 100%, 0 100%;
                        background-image: linear-gradient(90deg, rgba(255, 255, 255, 0) 0%, rgba(255, 255, 255, 1) 50%, rgba(255, 255, 255, 0) 100%);
                        -webkit-animation: rotate 2s linear infinite;
                        animation: rotate 2s linear infinite;
                    }


                    @-webkit-keyframes rotate {
                        100% {
                            transform: rotate(360deg);
                        }
                    }

                    @keyframes rotate {
                        100% {
                            transform: rotate(360deg);
                        }
                    }
                </style>

                @foreach ($users_get_form as $item)
                    <div class="col-md-3" style="font-family: Noto Sans Bengali;!important">
                        <div class="card shadow gradient-border bg-mute" id="box">
                            <div class="card-header">
                                <div class="text-center">
                                    @if (isset($item->role_name) == 'ICT CELL')
                                        <i class="fa-brands fa-instalod f display-4"></i>
                                    @elseif (isset($item->role_name) == 'Ministry Deparment')
                                        <i class="fa-brands fa-firstdraft display-4"></i>
                                    @elseif (isset($item->role_name) == 'All Regulatory')
                                        <i class="fa-brands fa-canadian-maple-leaf display-4"></i>
                                    @elseif (isset($item->role_name) == 'All Organization Head')
                                        <i class="fa-brands fa-centercode display-4"></i>
                                    @elseif (isset($item->role_name) == 'Organization User')
                                        <i class="fa-brands fa-docker display-4"></i>
                                    @elseif (isset($item->role_name) == 'Branch User')
                                        <i class="fa-brands fa-hive display-4"></i>
                                    @endif

                                </div>
                            </div>
                            <div class="card-body">
                                <span class="card-title mb-2 text-muted font-weight-light">Division</span>
                                <h3 class="card-subtitle font-weight-bold">
                                    {{ $usessrname->getRoleByUser($item->sender_id) }}<i class="fas fa-acorn"></i>
                                </h3>



                                <div class="shadow p-3 mb-0 bg-white rounded mt-3">
                                    <span class="font-weight-bold">Received By:</span> <span
                                        class="text-info font-weight-bold">{{ $usessrname->getDepartmentUser($item->sender_id) }}</span>

                                </div>
                                <div class="shadow p-3 mb-2 bg-light rounded mt-3">
                                    <div class="input-group mt-2">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">Deadline</span>
                                        </div>
                                        <input type="text" aria-label="First name" class="form-control text-danger"
                                            value="8/29/2022" readonly>
                                    </div>
                                </div>


                                <div class="shadow p-4 mb-2 bg-white rounded mt-3">
                                    <div class="row align-center">
                                        <span class="badge badge-pill badge-secondary">recived</span>
                                        <span class="badge badge-pill badge-info">Filled</span>
                                        <span class="badge badge-pill badge-success">Approved</span>
                                        <span class="badge badge-pill badge-danger">Declined</span>
                                    </div>



                                </div>
                                <div class="shadow p-3 mb-0 bg-white rounded mt-3">
                                    <span class="text-info font-weight-bold">Progress Rate</span>
                                    <div class="progress mt-2">
                                        <div class="bar" style="width:50%">
                                            <p class="percent">50%</p>
                                        </div>
                                    </div>
                                </div>



                                <br>

                                {{-- <div class="shadow p-3 mb-2 bg-white  mt-2 text-center">
                                    <span>Status</span>
                                    <span class="badge badge-dark">Received</span>
                                </div> --}}




                            </div>
                            <div class="card-footer specific">
                                {{-- <button type="button" class="btn btn-outline-info btn-lg btn-block"
                                    disabled>Approved</button> --}}


                                <span class="upsale-button">
                                    <span class="lead">Approved</span>
                                </span>

                            </div>
                        </div>
                    </div>
                @endforeach

            </div>
        </div>
    </div>
@endsection
