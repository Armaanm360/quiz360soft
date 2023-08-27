@extends('admin.master')
@section('content')
    @inject('customfunct', 'App\Models\UserForm')
    @inject('calculation', 'App\Models\Calculation')
    @inject('bnNumber', 'Rakibhstu\Banglanumber\NumberToBangla')

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Answers</title>

        <link rel="stylesheet" href="{{ asset('public') }}/assets/css/bootstrap.min.css">

        <style>
            @font-face {
                src: url('public/admin_asset/fonts/hind/Hind_Siliguri_Light-Regular.ttf');
                font-family: hindis;
            }

            @font-face {
                src: url('public/admin_asset/fonts/hind/Hind_Siliguri-Bold.ttf');
                font-family: hindis_bold;
            }

            body {
                font-family: hindis !important;
                overflow-x: hidden;


            }


.cardcomb {
    padding: 5px;
    background: #181a19;
    color: cornsilk;
    border-radius: 6px;
    border: 1px solid #00000059;
}

            .info {
                margin-right: 10px;
                font-weight: bolder;
            }

            .mark-img {
                width: 30px;
                height: 30px;
                border-radius: 50%;
                max-width: fit-content;
            }

            .mark-box {
                padding: 15px 20px;
                border: 1px solid #1de6f1;
                border-radius: 11px;
            }

            @media screen and (max-width: 540px) {
                .question-title {
                    font-size: 0.8rem;
                }

                .question-description {
                    font-size: 0.8rem;
                    text-align: justify;
                }
            }


            .mark-box {
                padding: 15px 20px;
                border: 1px solid #1de6f1;
                border-radius: 11px;
                margin-bottom: 2rem;
            }
        </style>
    </head>

    <body>

        <link rel="stylesheet" href="{{ asset('public/admin_asset') }}/css/dashboard.css">
        <div class="content @if (CurrSessionMode() == 'dark') dark-mode @endif">
            <div class="panel-header @if (CurrSessionMode() == 'dark') dark-mode @else bg-white @endif">
                <div class="page-inner">
                    <div class="row bootstrap snippets bootdeys">
                        <div class="col-sm-6 col-xs-12 col-md-offset-2">
                            <div class="panel" id="messge">
                                <div class="panel-heading">
                                    <h3 class="panel-title"></h3>
                                </div>
                                <div class="panel-body">
                                    <ul class="list-group list-group-full">

                                        <div class="media">
                                            <div class="media-left">

                                                @if (Auth::user()->image)
                                                    <img src="{{ asset('public/user_images/') . '/' . Auth::user()->image }}"
                                                        alt="" style="height: 48px;width: 48px;border-radius: 50%;">
                                                @else
                                                    <img src="{{ asset('public/admin_asset') }}/img/profile.png"
                                                        alt="" style="height: 48px;width: 48px;border-radius: 50%;">
                                                @endif


                                            </div>
                                            <div class="media-body">
                                                <h3 class="list-group-item-heading">Hi,
                                                    <small class="pull-right">
                                                        @if (Auth::user()->phone == null)
                                                            <a href="{{ 'users/' . Auth::user()->id . '/' . 'edit' }}"
                                                                class="btn btn-xs btn-info">Verify Profile</a>
                                                        @endif
                                                    </small>
                                                    <span class="text-info">{{ Auth::user()->name }} </span>
                                                    @if (Auth::user()->phone != null)
                                                        {{-- <span style="font-size:15px;margin-left:5px"><i
                                                            class="fa-solid fa-certificate text-primary"></i></span> --}}

                                                        <img width="32px" height="32px"
                                                            src="https://icon2.cleanpng.com/20180727/vag/kisspng-social-media-check-mark-symbol-computer-icons-user-blue-tic-5b5b96fb417831.9762382515327290832682.jpg"alt="">
                                                    @endif

                                                </h3>
                                                <p class="list-group-item-text" style="font-size: 13px">Welcome To Quiz360
                                                </p>
                                            </div>
                                        </div>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>



                </div>
            </div>

            {{-- <div class="cssload-preloader">
                <div class="cssload-preloader-box">
                    <div>Q</div>
                    <div>u</div>
                    <div>i</div>
                    <div>z</div>
                    <div>3</div>
                    <div>6</div>
                    <div>0</div>
                </div>
            </div> --}}




            <div class="container">
                <div class="answers-section mt-5">



                    <div class="card">
                        <div class="card-header text-center">
                            <ul class="list-group">
                                {{-- <li class="list-group-item list-group-item-info">
                            <h2>{{ $quiz_name }}</h2>
                        </li>
                        <li class="list-group-item list-group-item-dark"><span class="info">বিভাগ-
                                {{ $division }} <span class="info">বিষয়-
                                    {{ $subject_name }}</span>
                        </li> --}}
                                <h2>Result - <span>{{ $subject->subjective_quiz_name }}</span></h2>
                                <br>
                                <h3><span>Subject : {{ $customfunct->subjectName($subject->subjective_sub_id) }}</span>|
                                    <span>Code : {{ $subject->quiz_code }} </span>|
                                    <span>Type : {{ $subject->quiz_type }} </span>|
                                    <span>Number : {{ $subject->quiz_number }} </span>|
                                    <span>Time : {{ $subject->quiz_time }} Mins</span>|
                                </h3>


                            </ul>
                        </div>


                    </div>








                </div>


            </div>
            <div class="container">

                <div class="cardcomb mt-2 mb-3 bg-dark">
                    <div class="row text-white">
                        <div class="col-1 mt-2">
                        </div>
                        <div class="col-2 mt-2">
                            <span class="text-info">Position</span>
                        </div>
                        <div class="col-2 mt-2">
                            <span class="text-info">User Avater</span>
                        </div>
                        <div class="col-2 mt-2">
                            <span class="text-info">User Name</span>
                        </div>
                        <div class="col-2 mt-2">
                            <span class="text-info">Taken Time</span>
                        </div>
                        <div class="col-2 mt-2">
                            <span class="text-info">Numbers</span>
                        </div>
                    </div>
                </div>

            </div>
            <div class="container" style="margin-bottom:10rem">
                @foreach ($users_get as $usersss_get)
                    <div class="cardcomb mt-2 mb-3">
                        <div class="row">
                            <div class="col-2 mt-2">
                                <h1>{{ $loop->index + 1 }}</h1>
                            </div>
                            <div class="col-2">
                                <img src="{{ asset('public/user_images/') . '/' . $customfunct->getUserImage($usersss_get->answerd_by) }}"
                                    alt="" width="48px" height="48px" style="border-radius: 50%">
                            </div>
                            <div class="col-4 mt-3">
                                <h2>{{ $customfunct->getUserName($usersss_get->answerd_by) }}</h2>
                            </div>
                            <div class="col-2 mt-2">
                                <h2>{{ number_format($usersss_get->takentime / 60, 2, '.', '.') }}</h2>
                            </div>
                            <div class="col-2 mt-2">
                                <h2>{{ $usersss_get->total_marks }}</h2>
                            </div>
                        </div>
                    </div>
                @endforeach

            </div>


        </div>


        <script src="{{ asset('public/admin_asset') }}/js/core/bootstrap.min.js"></script>
    </body>

    </html>
@endsection
