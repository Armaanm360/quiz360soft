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
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap4.min.css">


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

        body {
            font-family: hindis;
            background-color: rgb(11 17 32) !important;
            overflow-x: hidden;


        }

        div#navbarScroll {
            margin-left: 40%;
        }


        nav.navbar.fixed-top.navbar-expand-lg.navbar-light.bg-light {
            background-color: rgb(12 22 46 / 52%) !important;
            border-bottom: 1px solid #ccd1e12e;
        }

        a.navbar-brand {
            margin-left: 10%;
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

        .card {
            background-color: rgb(11 17 32);
        }






        .card-container {
            background-color: rgb(5 13 34);
            border-radius: 5px;
            box-shadow: 0px 10px 20px -10px rgba(0, 0, 0, 0.75);
            color: #ffffff;
            padding-top: 30px;
            padding-bottom: 30px;
            position: relative;
            width: 350px;
            max-width: 100%;
            text-align: center;
            margin-bottom: 30px;
        }

        .card-container .pro {
            color: #231E39;
            background-color: #FEBB0B;
            border-radius: 3px;
            font-size: 14px;
            font-weight: bold;
            padding: 3px 7px;
            position: absolute;
            top: 30px;
            left: 30px;

        }

        .card-container .round {
            border: 1px solid #03BFCB;
            border-radius: 50%;
            padding: 7px;
        }


        table.table.table-dark {
            --bs-table-bg: rgb(11 17 32) !important;
        }

        table.table.table-dark {
            --bs-table-bg: rgb(11 17 32) !important;
        }

        tr.specialhead {
            border: 2px solid #fff;
            --bs-table-bg: #000 !important;
        }

        tr {
            border: 2px solid #fff;
        }




        /* profile card */
    </style>
</head>

<body>
    <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
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
            <div class="row mt-5">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 m-3">
                    <lottie-player src="https://assets5.lottiefiles.com/packages/lf20_kmjsqyye.json"
                        background="transparent" speed="1" style="width: 300px; height: 300px;" loop autoplay>
                    </lottie-player>


                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 mt-3">
                    <div class="card-container">
                        <span class="pro">প্রথম</span>
                        <img class="round" src="https://randomuser.me/api/portraits/women/79.jpg" alt="user" />
                        <h3>{{ $first[0]->name }}</h3>
                        <h6>Motijheel Model High School And College</h6>
                        <p>শ্রেণী : Seven </p>
                        <p>অর্জিত নম্বর: 1</p>

                        <p>পসিশন :</p>
                    </div>


                </div>

            </div>
        </div>




    </section>

    <section id="first-section">
        <div class="card">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 p-5">
                    <table class="table table-dark">
                        <thead>
                            <tr class="specialhead">
                                <th scope="col">Postion</th>
                                <th scope="col">Name</th>
                                <th scope="col">Roll</th>
                                <th scope="col">Number</th>
                            </tr>
                        </thead>
                        <tbody>

                            @foreach ($users_get as $users_get)
                                <tr>
                                    <th scope="row">{{ $loop->index + 1 }}</th>
                                    <td>{{ $users_get->name }}</td>
                                    <td>{{ $users_get->name }}</td>
                                    <td>{{ $users_get->total_marks * 20 }}</td>

                                </tr>
                            @endforeach

                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </section>
    <!-- jQuery-js include -->
    <script src="{{ asset('public') }}/assets/js/jquery-3.6.0.min.js"></script>
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap4.min.js"></script>
    <!-- jquery-count-down include -->
    <script src="{{ asset('public') }}/assets/js/countdown.js"></script>
    <!-- Bootstrap-js include -->
    <script src="{{ asset('public') }}/assets/js/bootstrap.min.js"></script>

</body>
<script src="{{ asset('public') }}/assets/js/jquery-3.6.0.min.js"></script>
<script src="{{ asset('public/admin_asset') }}/js/core/popper.min.js"></script>
<script src="{{ asset('public/admin_asset') }}/js/core/bootstrap.min.js"></script>
<script>
    $(document).ready(function() {
        $('#leaderboard').DataTable();
    });
</script>


</html>
