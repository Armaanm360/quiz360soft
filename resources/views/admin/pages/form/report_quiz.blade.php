<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quizo HTML Template - V.5</title>
    <!-- FontAwesome-cdn include -->
    <link rel="stylesheet" href="{{ asset('public') }}/assets/css/all.min.css">
    <!-- Google fonts include -->
    <link
        href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700;800&family=Sen:wght@400;700;800&display=swap"
        rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet">


    <!-- Bootstrap-css include -->
    <link rel="stylesheet" href="{{ asset('public') }}/assets/css/bootstrap.min.css">
    <!-- Animate-css include -->
    <link rel="stylesheet" href="{{ asset('public') }}/assets/css/animate.min.css">
    <!-- Main-StyleSheet include -->
    <style>
        @font-face {
            src: url('public/admin_asset/fonts/hind/Hind_Siliguri_Light-Regular.ttf');
            font-family: hindis;
        }

        @font-face {
            src: url('public/admin_asset/fonts/hind/Hind_Siliguri-Bold.ttf');
            font-family: hindis_bold;
        }

        @media (min-width: 300px) {
            html {
                font-size: .60rem;
            }

            section#first-section {
                margin: 0px !important;
            }
        }

        @media (min-width: 500px) {
            html {
                font-size: .60rem;
            }

            section#first-section {
                margin: 0;
            }
        }


        @media (min-width: 591px) {
            html {
                font-size: .80rem;
            }

            section#first-section {
                margin: 0;
            }
        }

        @media (min-width: 768px) {
            html {
                font-size: 1rem;
            }
        }

        @media (min-width: 992px) {
            html {
                font-size: .70rem;
            }
        }

        @media (min-width: 1200px) {
            html {
                font-size: .90rem;
            }
        }

        @media (min-width: 1306px) {
            html {
                font-size: 1rem;
            }
        }

        * {
            margin: 0;
            padding: 0;
        }

        body {
            font-family: hindis;
            background-color: rgb(11 17 32) !important;
            overflow-x: hidden;


        }

        .report {
            font-family: hindis_bold
        }

        nav.navbar.fixed-top.navbar-expand-lg.navbar-light.bg-light {
            background-color: rgb(12 22 46 / 52%) !important;
            border-bottom: 1px solid #ccd1e12e;
        }

        a.navbar-brand {
            margin-left: 10%;
            font-family: hindis_bold;

        }

        div#navbarScroll {
            margin-left: 40%;
        }



        a.nav-link {
            color: #fff !important;
            border: 1px solid;
            margin-right: 15px;
            border-radius: 18px;
            font-size: 11px;
            letter-spacing: 0px;
        }

        section#first-section {
            padding-top: 5rem;
        }





        /* profile card */

        .card.user-card {
            border-top: none;
            -webkit-box-shadow: 0 0 1px 2px rgba(0, 0, 0, 0.05), 0 -2px 1px -2px rgba(0, 0, 0, 0.04), 0 0 0 -1px rgba(0, 0, 0, 0.05);
            box-shadow: 0 0 1px 2px rgba(255, 255, 255, 0.05), 0 -2px 1px -2px rgba(255, 255, 255, 0.04), 0 0 0 -1px rgba(0, 0, 0, 0.05);
            -webkit-transition: all 150ms linear;
            transition: all 150ms linear;
            background-color: rgb(11 17 32);
        }

        .card {
            border-radius: 5px;
            -webkit-box-shadow: 0 1px 2.94px 0.06px rgba(4, 26, 55, 0.16);
            box-shadow: 0 1px 2.94px 0.06px rgba(4, 26, 55, 0.16);
            border: none;
            margin-bottom: 30px;
            -webkit-transition: all 0.3s ease-in-out;
            transition: all 0.3s ease-in-out;
        }

        .card .card-header {
            background-color: transparent;
            border-bottom: none;
            padding: 25px;
        }

        .card .card-header h5 {
            margin-bottom: 0;
            color: #222;
            font-size: 14px;
            font-weight: 600;
            display: inline-block;
            margin-right: 10px;
            line-height: 1.4;
        }

        .card .card-header+.card-block,
        .card .card-header+.card-block-big {
            padding-top: 0;
        }

        .user-card .card-block {
            text-align: center;
        }

        .card .card-block {
            padding: 25px;
        }

        .user-card .card-block .user-image {
            position: relative;
            margin: 0 auto;
            display: inline-block;
            padding: 5px;
            width: 110px;
            height: 110px;
        }

        .user-image-right {
            position: relative;
            margin: 0 auto;
            display: inline-block;


        }

        .user-card .card-block .user-image img {
            z-index: 20;
            position: absolute;
            top: 5px;
            left: 5px;
            width: 100px;
            height: 100px;
        }

        .img-radius {
            border-radius: 50%;
        }

        .f-w-600 {
            font-weight: 600;
        }

        .m-b-10 {
            margin-bottom: 10px;
        }

        .m-t-25 {
            margin-top: 25px;
        }

        .m-t-15 {
            margin-top: 15px;
        }

        .card .card-block p {
            line-height: 1.4;
        }

        .text-muted {
            color: #919aa3 !important;
        }

        .user-card .card-block .activity-leval li.active {
            background-color: #2ed8b6;
        }

        .user-card .card-block .activity-leval li {
            display: inline-block;
            width: 15%;
            height: 4px;
            margin: 0 3px;
            background-color: #ccc;
        }

        .user-card .card-block .counter-block {
            color: #fff;
        }

        .bg-c-blue {
            background: linear-gradient(45deg, #4099ff, #73b4ff);
        }

        .bg-c-green {
            background: linear-gradient(45deg, #2ed8b6, #59e0c5);
        }

        .bg-c-yellow {
            background: linear-gradient(45deg, #FFB64D, #ffcb80);
        }

        .bg-c-pink {
            background: linear-gradient(45deg, #FF5370, #ff869a);
        }

        .m-t-10 {
            margin-top: 10px;
        }

        .p-20 {
            padding: 20px;
        }

        .user-card .card-block .user-social-link i {
            font-size: 30px;
        }

        .text-facebook {
            color: #3B5997;
        }

        .text-twitter {
            color: #42C0FB;
        }

        .text-dribbble {
            color: #EC4A89;
        }

        .user-card .card-block .user-image:before {
            bottom: 0;
            border-bottom-left-radius: 50px;
            border-bottom-right-radius: 50px;
        }

        .user-card .card-block .user-image:after,
        .user-card .card-block .user-image:before {
            content: "";
            width: 100%;
            height: 48%;
            border: 2px solid #4099ff;
            position: absolute;
            left: 0;
            z-index: 10;
        }

        .user-card .card-block .user-image:after {
            top: 0;
            border-top-left-radius: 50px;
            border-top-right-radius: 50px;
        }

        .user-card .card-block .user-image:after,
        .user-card .card-block .user-image:before {
            content: "";
            width: 100%;
            height: 48%;
            border: 2px solid #4099ff;
            position: absolute;
            left: 0;
            z-index: 10;
        }

        section#first-section {
            margin: 8rem;
        }

        button.list-group-item {
            margin-top: 8px;
        }

        i.checking_i {
            margin-left: 10px;
        }
    </style>
</head>

<body>
    <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#"><i class="fa-brands fa-quinscape text-white"></i></i> <span
                    class="text-white">কুই</span><span class="text-danger">জিন</span></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarScroll"
                aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarScroll">
                <ul class="navbar-nav mr-auto my-2 my-lg-0 navbar-nav-scroll" style="max-height: 100px;">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">হোম<span class="sr-only">(current)</span></a>

                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">বিষয়সমূহ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">লিডারবোর্ড</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link disabled">জয়েন</a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>
    <section id="first-section">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                    <div class="container">
                        <div class="row">
                            <div class="card user-card">
                                <div class="card-header">
                                    <h4 class="text-white text-center">প্রোফাইল</h4>
                                </div>
                                <div class="card-block">
                                    <div class="user-image">
                                        <img src="https://webarmaan.com/public/media/work/1001bbda16daea98328f800f611de793.jpg"
                                            class="img-radius" alt="User-Profile-Image">
                                    </div>
                                    <h6 class="f-w-600 m-t-25 m-b-10 text-white">{{ Auth::user()->name }}</h6>
                                    <p class="text-white">স্কুল / কলেজ : <span class="text-info">মতিঝিল মডেল স্কুল এন্ড
                                            কলেজ
                                        </span></p>
                                    <p class="text-muted">একটিভ | Male | জন্ম : <span
                                            class="text-warning">23.05.1992</span>
                                    </p>
                                    <hr class="text-white">
                                    <h4 class="text-white m-t-15">অগ্রগতির স্তর : 87%</h4>
                                    <ul class="list-unstyled activity-leval">
                                        <li class="active"></li>
                                        <li class="active"></li>
                                        <li class="active"></li>
                                        <li></li>
                                        <li></li>
                                    </ul>
                                    <div class="bg-c-blue counter-block m-t-10 p-20">
                                        <div class="row">
                                            <div class="col-4">
                                                <span style="font-size:10px;font-weight:900;color:#4b4447">সর্বমোট
                                                    সমাধানকৃত
                                                    বিষয়</span>
                                                <br>
                                                <p>1256</p>
                                            </div>
                                            <div class="col-4">
                                                <span style="font-size:10px;font-weight:900;color:#4b4447">অংশগ্রহকৃত
                                                    ইভেন্ট </span>
                                                <p>8562</p>
                                            </div>
                                            <div class="col-4">
                                                <span style="font-size:10px;font-weight:900;color:#4b4447">সর্বোচ্চ
                                                    নম্বর
                                                </span>
                                                <p>189</p>
                                            </div>
                                        </div>
                                    </div>
                                    {{-- <p class="m-t-15 text-muted">Lorem Ipsum is simply dummy text of the printing and
                                    typesetting industry.</p> --}}
                                    <hr>
                                    <div class="row justify-content-center user-social-link">
                                        <div class="col-auto"><i class="fa-solid fa-fire text-danger"></i></div>
                                        <div class="col-auto"><i class="fa-brands fa-airbnb text-success"></i>
                                        </div>
                                        <div class="col-auto"><i class="fa-brands fa-gitlab text-info"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>



                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                    <div class="container">
                        <div class="row">
                            <div class="card user-card bg-white">
                                <div class="card-header">
                                    <h4 class="text-dark text-center">ফলাফল</h4>
                                </div>
                                <div class="card-block">
                                    <div class="user-image-right">
                                        <lottie-player src="https://assets9.lottiefiles.com/packages/lf20_gvofx8ha.json"
                                            background="transparent" speed="1" style="width: 100px; height: 100px;"
                                            loop autoplay></lottie-player>
                                    </div>

                                    <hr>

                                    <ul class="list-group report">
                                        <li class="list-group-item">নাম : {{ Auth::user()->name }}</li>
                                        <li class="list-group-item">বিষয় : <span class="text-info">Mathematics</span>
                                        </li>
                                        <li class="list-group-item">কুইজ নং : <span class="text-secondary">01</span>
                                        </li>
                                        <li class="list-group-item">সর্বমোট নম্বর : <span
                                                class="text-danger">{{ $ques_count * 20 }}</span>
                                        </li>
                                        <li class="list-group-item">সঠিক উত্তর : <span
                                                class="text-info">{{ $user_info[0]->right_ans }}</span></li>
                                        <li class="list-group-item">ভুল উত্তর : <span
                                                class="text-info">{{ $user_info[0]->wrong_ans }}</span></li>
                                        <li class="list-group-item">অর্জিত নম্বর : <span
                                                class="text-success">{{ $user_info[0]->right_ans * 20 }}</span>
                                        </li>
                                        <li class="list-group-item">স্টেটাস : <button type="button"
                                                class="btn btn-outline-success" disabled>Passed</button>
                                        </li>
                                        <li class="list-group-item">পজিশন : <span class="text-info">250</span></li>

                                    </ul>
                                </div>
                            </div>



                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="first-section m-5">
            <div class="row ml-0 mt-5">
                <p>
                    <a class="btn btn-primary " data-toggle="collapse" href="#collapseExample" role="button"
                        aria-expanded="false" aria-controls="collapseExample">
                        উত্তরসমূহ দেখুন
                    </a>
                </p>
                <div class="collapse" id="collapseExample">
                    <div class="card card-body m-3">
                        @foreach ($all_answers as $all_answers)
                            <div class="card text-center">
                                <div class="card-header">

                                </div>
                                <div class="card-body">
                                    <h5 class="card-title text-info">{{ $all_answers->question }}</h5>
                                    <div class="row">
                                        @if ($all_answers->answer == $all_answers->option_1)
                                            <button type="button"
                                                class="list-group-item list-group-item-action bg-success text-white">{{ $all_answers->option_1 }}<i
                                                    class="fa-solid fa-check checking_i"></i></button>
                                        @else
                                            <button type="button"
                                                class="list-group-item list-group-item-action">{{ $all_answers->option_1 }}</button>
                                        @endif
                                        @if ($all_answers->answer == $all_answers->option_2)
                                            <button type="button"
                                                class="list-group-item list-group-item-action bg-success text-white">{{ $all_answers->option_2 }}<i
                                                    class="fa-solid fa-check checking_i"></i></button>
                                        @else
                                            <button type="button"
                                                class="list-group-item list-group-item-action">{{ $all_answers->option_2 }}</button>
                                        @endif
                                        @if ($all_answers->answer == $all_answers->option_3)
                                            <button type="button"
                                                class="list-group-item list-group-item-action bg-success text-white">{{ $all_answers->option_3 }}<i
                                                    class="fa-solid fa-check checking_i"></i></button>
                                        @else
                                            <button type="button"
                                                class="list-group-item list-group-item-action">{{ $all_answers->option_3 }}</button>
                                        @endif
                                        @if ($all_answers->answer == $all_answers->option_4)
                                            <button type="button"
                                                class="list-group-item list-group-item-action bg-success text-white">{{ $all_answers->option_4 }}<i
                                                    class="fa-solid fa-check checking_i"></i></button>
                                        @else
                                            <button type="button"
                                                class="list-group-item list-group-item-action">{{ $all_answers->option_4 }}</button>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>


        </div>

    </section>
    <!-- jQuery-js include -->
    <script src="{{ asset('public') }}/assets/js/jquery-3.6.0.min.js"></script>
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    <!-- jquery-count-down include -->
    <script src="{{ asset('public') }}/assets/js/countdown.js"></script>
    <!-- Bootstrap-js include -->
    <script src="{{ asset('public') }}/assets/js/bootstrap.min.js"></script>
    {{-- <!-- jQuery-validate-js include -->
    <script src="{{ asset('public') }}/assets/js/jquery.validate.min.js"></script>
    <!-- Custom-js include -->
    <script src="{{ asset('public') }}/assets/js/script.js"></script> --}}
    <!-- <script type="text/javascript">
        $('#getting-started').countdown('2020/07/25', function(event) {
            $(this).html(event.strftime('%w weeks %d days %H:%M:%S'));
        });
    </script> -->
</body>

<script src="{{ asset('public') }}/assets/js/jquery-3.6.0.min.js"></script>
{{-- <!-- jquery-count-down include -->
<script src="{{ asset('public') }}/assets/js/countdown.js"></script> --}}


<script src="{{ asset('public/admin_asset') }}/js/core/popper.min.js"></script>
<script src="{{ asset('public/admin_asset') }}/js/core/bootstrap.min.js"></script>
{{-- <!-- jQuery-validate-js include -->
    <script src="{{ asset('public') }}/assets/js/jquery.validate.min.js"></script>
    <!-- Custom-js include -->
    <script src="{{ asset('public') }}/assets/js/script.js"></script> --}}
<!-- <script type="text/javascript">
    $('#getting-started').countdown('2020/07/25', function(event) {
        $(this).html(event.strftime('%w weeks %d days %H:%M:%S'));
    });
</script> -->

</html>
