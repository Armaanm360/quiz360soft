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
        /* common */
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





        div#navbarScroll {
            margin-left: 40%;
        }


        nav.navbar.fixed-top.navbar-expand-lg.navbar-light.bg-light {
            background-color: rgb(12 22 46 / 52%) !important;
            border-bottom: 1px solid #ccd1e12e;
        }

        a.navbar-brand {
            font-family: hindis_bold;

        }

        .report {
            font-family: hindis_bold
        }

        a.nav-link {
            color: #fff !important;
            border: 1px solid;
            margin-right: 15px;
            border-radius: 18px;
            font-size: 11px;
            letter-spacing: 0px;
        }


        /* common */



        .line-1 {
            position: relative;
            top: 50%;
            width: 24em;
            margin: 0 auto;
            border-right: 2px solid rgba(255, 255, 255, .75);
            font-size: 180%;
            text-align: center;
            white-space: nowrap;
            overflow: hidden;
            transform: translateY(-50%);
        }

        /* Animation */
        .anim-typewriter {
            animation: typewriter 4s steps(44) 1s 1 normal both,
                blinkTextCursor 500ms steps(44) infinite normal;
        }

        @keyframes typewriter {
            from {
                width: 0;
            }

            to {
                width: 24em;
            }
        }

        @keyframes blinkTextCursor {
            from {
                border-right-color: rgba(255, 255, 255, .75);
            }

            to {
                border-right-color: transparent;
            }
        }

        section#services {
            padding-top: 15rem;
            padding-bottom: 25rem;
            height: 100vh;
        }



        li {
            padding-bottom: 10px;
            padding-top: 0px;
        }


        section#portfolio {
            background: rgb(37 38 40 / 12%);
            box-shadow: 1px 2px 14px 0px;
        }

        section#review {
            background: rgb(18 26 46);
        }

        .card {
            background: rgb(8 19 46);
            color: antiquewhite
        }

        .card-header {
            background: #0000004d;
        }

        .card-footer {
            background: #0000004d;
        }


        /* typewrite */


        .typing-demo {
            width: 22ch;
            animation: typing 5s steps(22), blink .5s step-end infinite alternate;
            white-space: nowrap;
            overflow: hidden;
            border-right: 3px solid;
            font-family: monospace;
            font-size: 2em;
        }

        @keyframes typing {
            from {
                width: 0
            }
        }

        @keyframes blink {
            50% {
                border-color: transparent
            }
        }

        .row.first-special {
            margin-top: 50px;
            margin-bottom: 50px;
        }

        .row.second-special {
            margin-top: 50px;
            margin-bottom: 50px;
        }

        .row.third-special {
            margin-top: 50px;
            margin-bottom: 50px;
        }

        .result {
            background: rgb(0 0 0 / 20%);
            border-radius: 16px;
            box-shadow: 0 4px 30px rgb(0 0 0 / 10%);
            backdrop-filter: blur(7px);
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        a {
            text-decoration: none;
            color: #fff;
        }

        a:hover {
            color: #fff;


        }
    </style>






<body id="page-top">
    <!-- Navigation-->
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
                        <a class="nav-link" href="#portfolio">বিষয়সমূহ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#about">লিডারবোর্ড</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#review">রিভিউ </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link disabled">জয়েন</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ url('/home') }}">Admin Panel</a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>

    <!-- Services-->
    <section class="page-section" id="services">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">

                    <ul style="list-style:none;padding-left:0%">
                        <li>
                            <h1><i class="fa-brands fa-hive text-info"></i></h1>

                        </li>

                        <li>
                            <h5 style="font-weight:600;color:#caa8ff">বাঙলায় মাধ্যমিক স্তর কুইজ প্রতিযোগিতা</h5>
                        </li>
                        <h1 style="font-family:hindis_bold" class="text-info typing-demo">প্রতিযোগিতামূলক <span
                                class="text-danger">কুইজ</span> গেম
                        </h1>
                        <li>
                            <h5 class="text-white animate__animated animate__fadeInDown">৬ষ্ঠ-১০ম শ্রেণীর পাঠ্য
                                পুস্তকের
                                আলোকে </h5>
                        </li>

                        <li>
                            <p class="text-secondary animate__animated animate__fadeInUp" style="font-weight: 900">
                                প্রতিযোগিতা মূলক কুইজ গেম,
                                নিজেকে যাচাই করার দারুন সুযোগ.
                                সাথে রয়েছে বিশেষজ্ঞদের বাখ্যা
                                পরীক্ষার পূর্ববর্তী রিভাইস এবং অলিম্পিয়াড এর মতো বড়
                                ইভেন্ট এর জন্য নিজেকে প্রস্তুত করা
                            </p>
                        </li>

                        <li><button class="btn btn-outline-info text-white"> <a href="#portfolio">শুরু করা
                                    যাক!</a> </button>
                        </li>

                    </ul>

                </div>


                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                    <lottie-player src="https://assets9.lottiefiles.com/packages/lf20_oojuetow.json"
                        background="transparent" speed="1" style="width: 400px; height: 400px;" loop autoplay>
                    </lottie-player>
                </div>

            </div>
        </div>


    </section>
    <!-- Portfolio Grid-->
    <section class="page-section p-5 portfolio" id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="text-center">
                        <h1 style="font-family:hindis_bold" class="text-info">কুইজের <span
                                class="text-warning">বিষয়</span> সমূহ</h1>
                        <h6 class="text-white">একনজরে পাঠ্য পুস্তকের নির্বাচিত বিষয় সমূহ
                            এখানে
                        </h6>
                    </div>

                    <div class="quiz_items">
                        <div class="container">
                            <div class="row">
                                <div
                                    class="col-md-4 col-lg-4 col-xs-12 col-sm-12 pt-5 pb-5 math animate_animated animate__fadeInRight">
                                    <div class="card ">
                                        <div class="card-header">
                                            <h4 class="text-center text-danger">
                                                ম্যাথমেটিক্স</h4>
                                        </div>
                                        <lottie-player src="https://assets5.lottiefiles.com/packages/lf20_hk63stcp.json"
                                            background="transparent" speed="1" style="width: 300px; height: 150px;"
                                            loop autoplay></lottie-player>
                                        </lottie-player>
                                        <div class="card-body">
                                            <p>জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে অসম্পূর্ণ হয়ে সে
                                                জন্মগ্রহণ করে। বাঘ ভালুক তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে
                                                প্রকৃতির মালখানা থেকে। জীবরঙ্গভূমিতে মানুষ এসে দেখা দেয় দুই শূন্য হাতে
                                                মুঠো বেঁধে।

                                                মানুষ আসবার পূর্বেই জীবসৃষ্টিযজ্ঞে প্রকৃতির ভূরিব্যয়ের পালা শেষ হয়ে
                                                এসেছে। বিপুল মাংস</p>
                                        </div>

                                        <div class="card-footer text-center">
                                            <button class="btn btn-outline-danger text-white">

                                                @if (Auth::user())
                                                    <a href="{{ url('quiz') }}">শুরু করুন</a>
                                                @else
                                                    <a href="{{ url('register') }}">শুরু করুন</a>
                                                @endif


                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div
                                    class="col-md-4 col-lg-4 col-xs-12 col-sm-12 pt-5 pb-5 gk animate_animated animate__fadeInRight">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="text-center text-warning">
                                                সাধারণ জ্ঞান</h4>
                                        </div>
                                        <lottie-player
                                            src="https://assets2.lottiefiles.com/packages/lf20_gyydvfuw.json"
                                            background="transparent" speed="1"
                                            style="width: 350px; height: 150px;" loop autoplay></lottie-player>
                                        <div class="card-body">
                                            <p>জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে অসম্পূর্ণ হয়ে সে
                                                জন্মগ্রহণ করে। বাঘ ভালুক তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে
                                                প্রকৃতির মালখানা থেকে। জীবরঙ্গভূমিতে মানুষ এসে দেখা দেয় দুই শূন্য হাতে
                                                মুঠো বেঁধে।

                                                মানুষ আসবার পূর্বেই জীবসৃষ্টিযজ্ঞে প্রকৃতির ভূরিব্যয়ের পালা শেষ হয়ে
                                                এসেছে। বিপুল মাংস</p>
                                        </div>
                                        <div class="card-footer text-center">
                                            <button class="btn btn-outline-warning text-white">শুরু করুন</button>
                                        </div>
                                    </div>
                                </div>
                                <div
                                    class="col-md-4 col-lg-4 col-xs-12 col-sm-12 pt-5 pb-5 sc animate_animated animate__fadeInRight">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="text-center text-primary">
                                                বিজ্ঞান ও প্রযুক্তি </h4>
                                        </div>
                                        <lottie-player
                                            src="https://assets5.lottiefiles.com/packages/lf20_au98facn.json"
                                            background="transparent" speed="1"
                                            style="width: 300px; height: 150px;" loop autoplay></lottie-player>

                                        <div class="card-body">
                                            <p>জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে অসম্পূর্ণ হয়ে সে
                                                জন্মগ্রহণ করে। বাঘ ভালুক তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে
                                                প্রকৃতির মালখানা থেকে। জীবরঙ্গভূমিতে মানুষ এসে দেখা দেয় দুই শূন্য হাতে
                                                মুঠো বেঁধে।

                                                মানুষ আসবার পূর্বেই জীবসৃষ্টিযজ্ঞে প্রকৃতির ভূরিব্যয়ের পালা শেষ হয়ে
                                                এসেছে। বিপুল মাংস</p>
                                        </div>
                                        <div class="card-footer text-center">
                                            <button class="btn btn-outline-primary text-white">শুরু করুন</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>


                </div>
            </div>
        </div>
    </section>
    <!-- About-->
    <section class="page-section about" id="about">
        <div class="container">
            <div class="text-center p-5">
                <h1 class="section-heading text-uppercase text-white" style="font-family: hindis_bold"><i
                        class="fa-brands fa-quinscape text-white"></i></i> <span class="text-white">কুই</span><span
                        class="text-danger">জিন</span> এর বিশেষত্ব</h1>
                <h3 class="section-subheading text-muted">নিজেকে যাচাই করার দারুন সুযোগ. সাথে রয়েছে বিশেষজ্ঞদের বাখ্যা
                </h3>
            </div>

            <div class="row first-special" style="font-family: hindis_bold">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <h1 class="text-warning">[ <span class="text-white">ইন্টারেক্টিভ</span> ] পরীক্ষা ব্যবস্থা</h1>
                    <p class="text-white" style="font-family:hindis">জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু
                        সবচেয়ে
                        অসম্পূর্ণ হয়ে সে
                        জন্মগ্রহণ করে। বাঘ ভালুক
                        তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে প্রকৃতির মালখানা থেকে। জীবরঙ্গভূমিতে মানুষ এসে দেখা
                        দেয় দুই শূন্য হাতে মুঠো বেঁধে। মানুষ আসবার পূর্বেই জীবসৃষ্টিযজ্ঞে প্রকৃতির ভূরিব্যয়ের পালা শেষ
                        হয়ে এসেছে। বিপুল মাংস</p>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <lottie-player src="https://assets4.lottiefiles.com/packages/lf20_crwpngvr.json"
                        background="transparent" speed="1" style="width: 300px; height: 300px;" loop autoplay>
                    </lottie-player>
                </div>
            </div>

            <div class="row second-special" style="font-family: hindis_bold">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <lottie-player src="https://assets3.lottiefiles.com/packages/lf20_fq7pwzey.json"
                        background="transparent" speed="1" style="width: 300px; height: 300px;" loop autoplay>
                    </lottie-player>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <h1 class="text-primary">[ <span class="text-white">বাখ্যা</span> ] ভিত্তিক কুইজ </h1>
                    <p class="text-white" style="font-family:hindis">জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু
                        সবচেয়ে
                        অসম্পূর্ণ হয়ে সে
                        জন্মগ্রহণ করে। বাঘ ভালুক
                        তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে প্রকৃতির মালখানা থেকে। জীবরঙ্গভূমিতে মানুষ এসে দেখা
                        দেয় দুই শূন্য হাতে মুঠো বেঁধে। মানুষ আসবার পূর্বেই জীবসৃষ্টিযজ্ঞে প্রকৃতির ভূরিব্যয়ের পালা শেষ
                        হয়ে এসেছে। বিপুল মাংস</p>
                </div>
            </div>




            <div class="row third-special" style="font-family: hindis_bold">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <h1 class="text-success" style="color: #4e4ce7 !important">[ <span
                            class="text-white">ফলাফল</span> ] এবং
                        সাপ্তাহিক লিডারবোর্ড </h1>
                    <p class="text-white" style="font-family:hindis">জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু
                        সবচেয়ে
                        অসম্পূর্ণ হয়ে সে
                        জন্মগ্রহণ করে। বাঘ ভালুক
                        তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে প্রকৃতির মালখানা থেকে। জীবরঙ্গভূমিতে মানুষ এসে দেখা
                        দেয় দুই শূন্য হাতে মুঠো বেঁধে। মানুষ আসবার পূর্বেই জীবসৃষ্টিযজ্ঞে প্রকৃতির ভূরিব্যয়ের পালা শেষ
                        হয়ে এসেছে। বিপুল মাংস</p>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <lottie-player src="https://assets5.lottiefiles.com/packages/lf20_zry9oqoi.json"
                        background="transparent" speed="1" style="width: 300px; height: 300px;" loop autoplay>
                    </lottie-player>
                </div>

            </div>

        </div>
    </section>



    <section class="page-section p-5 portfolio" id="review">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="text-center">
                        <h1 style="font-family:hindis_bold" class="text-info">ফলাফল ও <span
                                class="text-warning">রিভিউ</span> রিভিউ ব্যবস্থা </h1>
                        <h6 class="text-white">একনজরে পাঠ্য পুস্তকের নির্বাচিত বিষয় সমূহ
                            এখানে
                        </h6>
                    </div>

                    <div class="quiz_items">
                        <div class="container">
                            <div class="row">
                                <div
                                    class="col-md-4 col-lg-4 col-xs-12 col-sm-12 pt-5 pb-5 math animate_animated animate__fadeInRight">
                                    <div class="card text-center result">
                                        <h2 class="m-3 text-info"><i class="fa-solid fa-paperclip"></i></h2>
                                        <h4 class="text-center text-info">
                                            ম্যাথমেটিক্স</h4>

                                        <div class="card-body">
                                            <p class="lead">জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে
                                                অসম্পূর্ণ হয়ে সে
                                                জন্মগ্রহণ করে। বাঘ ভালুক তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে
                                                প্রকৃতির মালখানা থেকে। </p>


                                            <button class="btn btn-outline-info"><i class="fa-solid fa-heart"></i>
                                                Click Here
                                            </button>
                                        </div>


                                    </div>
                                </div>
                                <div
                                    class="col-md-4 col-lg-4 col-xs-12 col-sm-12 pt-5 pb-5 gk animate_animated animate__fadeInRight">
                                    <div class="card text-center result">
                                        <h2 class="m-3 text-info"><i class="fa-brands fa-slack"></i></h2>
                                        <h4 class="text-center text-info">
                                            সাধারণ জ্ঞান</h4>

                                        <div class="card-body">
                                            <p class="lead">জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে
                                                অসম্পূর্ণ হয়ে সে
                                                জন্মগ্রহণ করে। বাঘ ভালুক তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে
                                                প্রকৃতির মালখানা থেকে। </p>


                                            <button class="btn btn-outline-info"><i class="fa-solid fa-heart"></i>
                                                Click Here
                                            </button>
                                        </div>


                                    </div>
                                </div>
                                <div
                                    class="col-md-4 col-lg-4 col-xs-12 col-sm-12 pt-5 pb-5 sc animate_animated animate__fadeInRight">
                                    <div class="card text-center result">
                                        <h2 class="m-3 text-info"><i class="fa-solid fa-leaf"></i></h2>
                                        <h4 class="text-center text-info">
                                            বিজ্ঞান ও প্রযুক্তি</h4>

                                        <div class="card-body">
                                            <p class="lead">জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে
                                                অসম্পূর্ণ হয়ে সে
                                                জন্মগ্রহণ করে। বাঘ ভালুক তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে
                                                প্রকৃতির মালখানা থেকে। </p>


                                            <button class="btn btn-outline-info"><i class="fa-solid fa-heart"></i>
                                                Click Here
                                            </button>
                                        </div>


                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>


                </div>
            </div>
        </div>
    </section>
    <!-- Team-->

    <!-- Clients-->
    {{--  --}}
    <section class="page-section p-5 showcase" id="review">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="text-center">
                        <h1 style="font-family:hindis_bold" class="text-info">Show ও <span
                                class="text-warning">Case</span></h1>
                        <h6 class="text-white">একনজরে পাঠ্য পুস্তকের নির্বাচিত বিষয় সমূহ
                            এখানে
                        </h6>
                    </div>

                    <div class="quiz_items">
                        <div class="container">
                            <div class="row">

                                @foreach ($subject_card as $subject_card)
                                    <div
                                        class="col-md-4 col-lg-4 col-xs-12 col-sm-12 pt-5 pb-5 math animate_animated animate__fadeInRight">
                                        <div class="card text-center result">
                                            <h2 class="m-3 text-info">{{ $subject_card->college_subject_name }}
                                            </h2>
                                            <h4 class="text-center text-info">

                                                {{ $subject_card->college_subject_code }}</h4>

                                            <div class="card-body">
                                                <p class="lead">{{ $subject_card->college_subject_desc }}</p>


                                                <a class="btn btn-outline-info"
                                                    href="{{ url('create-subjective-quiz/' . $subject_card->college_sub_id) }}"><i
                                                        class="fa-solid fa-heart"></i>
                                                    Click Here
                                                </a>
                                            </div>


                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>

                    </div>


                </div>
            </div>
        </div>
    </section>

    <!-- Footer-->
    <footer class="footer py-4">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-4 text-lg-start">Copyright &copy; <a href="https://m360ict.com/" class="text-info"
                        target="blank">m360ict</a></div>
                <div class="col-lg-4 my-3 my-lg-0">
                    <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Twitter"><i
                            class="fab fa-twitter"></i></a>
                    <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Facebook"><i
                            class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="LinkedIn"><i
                            class="fab fa-linkedin-in"></i></a>
                </div>
                <div class="col-lg-4 text-lg-end">
                    {{-- <a class="link-dark text-decoration-none me-3" href="#!">Privacy Policy</a>
                    <a class="link-dark text-decoration-none" href="#!">Terms of Use</a> --}}
                    <span class="text-primary">Developed By Team m360ict</span>
                </div>
            </div>
        </div>
    </footer>
    <!-- Portfolio Modals-->
    <!-- Portfolio item 1 modal popup-->

    <script src="{{ asset('public') }}/assets/js/jquery-3.6.0.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    {{-- <!-- jquery-count-down include -->
<script src="{{ asset('public') }}/assets/js/countdown.js"></script> --}}
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    <script src="https://unpkg.com/scrollreveal@4"></script>

    <script type="text/javascript">
        ScrollReveal({
            reset: true
        });
        // ScrollReveal().reveal('.portfolio');
        // ScrollReveal().reveal('.about');
        // ScrollReveal().reveal('.team');
        // ScrollReveal().reveal('.contact');


        ScrollReveal().reveal('.portfolio', {
            delay: 500
        });
        ScrollReveal().reveal('.math', {
            delay: 800
        });
        ScrollReveal().reveal('.gk', {
            delay: 1000
        });
        ScrollReveal().reveal('.sc', {
            delay: 1200
        });
        ScrollReveal().reveal('.about', {
            delay: 500
        });

        ScrollReveal().reveal('.team', {
            delay: 2000
        });
        ScrollReveal().reveal('.contact', {
            delay: 2500
        });


        ScrollReveal().reveal('.first-special', {
            delay: 800
        });
        ScrollReveal().reveal('.second-special', {
            delay: 1000
        });
        ScrollReveal().reveal('.third-special', {
            delay: 1200
        });
    </script>

    <script src="{{ asset('public/admin_asset') }}/js/core/popper.min.js"></script>
    <script src="{{ asset('public/admin_asset') }}/js/core/bootstrap.min.js"></script>


</body>


</html>
