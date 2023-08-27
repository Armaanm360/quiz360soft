<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>{{ __('Quiz360') }}</title>
    <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="icon" href="{{ asset('public') }}/32.png" />

    <!-- Fonts and icons -->
    <script src="{{ asset('public/admin_asset') }}/js/plugin/webfont/webfont.min.js"></script>
    <script>
        WebFont.load({
            google: {
                "families": ["Lato:300,400,700,900"]
            },
            custom: {
                "families": ["Flaticon", "Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands",
                    "simple-line-icons"
                ],
                urls: ['{{ asset('public/admin_asset') }}/css/fonts.min.css']
            },
            active: function() {
                sessionStorage.fonts = true;
            }
        });
    </script>

    <!-- CSS Files -->
    <link href="{{ asset('public/admin_asset') }}/css/loader.css" rel="stylesheet" type="text/css" />
    <link href="{{ asset('public/admin_asset') }}/select2/select2.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="{{ asset('public/admin_asset') }}/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{ asset('public/admin_asset') }}/css/atlantis.min.css">
    <link rel="stylesheet" href="{{ asset('public/admin_asset') }}/owlcarousel/owl.carousel.min.css">
    <link rel="stylesheet" href="{{ asset('public/admin_asset') }}/owlcarousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="{{ asset('public/admin_asset') }}/css/atlantis.min.css">
    {{-- dashboard css --}}
    <link rel="stylesheet" href="{{ asset('public/admin_asset') }}/css/dashboard.css">
    <!-- Add the slick-theme.css if you want default styling -->


    <!-- CSS Just for demo purpose, don't include it in your project -->
    <!--<link rel="stylesheet" href="{{ asset('public/admin_asset') }}/css/demo.css">-->
    <script src="{{ asset('public/admin_asset') }}/js/core/jquery.3.2.1.min.js"></script>

    <!-- Datatables -->
    <script src="{{ asset('public/admin_asset') }}/js/plugin/datatables/datatables.min.js"></script>


    <script src="{{ asset('public/admin_asset') }}/owlcarousel/owl.carousel.min.js"></script>

    <!-- Atlantis JS -->
    <script src="{{ asset('public/admin_asset') }}/js/atlantis.min.js"></script>
    <link href="{{ asset('') }}public/admin_asset/calender/dncalendar-skin.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">

    <style>
    
        table#myTable {
            overflow-x: scroll;
            display: inline-block;
            white-space: nowrap;
        }

        .select2-container {
            width: 100%;
        }

        .form-control.error {
            animation: shake 0.2s ease-in-out 0s 2;
            box-shadow: 0 0 0.5em red;
        }

        @keyframes shake {
            0% {
                margin-left: 0rem;
            }

            25% {
                margin-left: 0.5rem;
            }

            75% {
                margin-left: -0.5rem;
            }

            100% {
                margin-left: 0rem;
            }
        }

        body>.skiptranslate {
            display: none;
        }

        body {
            top: 0px !important;
        }

        .zoom {
            transition: transform .2s;
            margin: 0 auto;
        }

        .zoom:hover {
            -ms-transform: scale(1.5);
            /* IE 9 */
            -webkit-transform: scale(1.5);
            /* Safari 3-8 */
            transform: scale(1.5);
        }


        /*Line Break*/

        .line-block {
            width: 0px;
            height: 307px;
            position: relative;
        }

        .line-block:before {
            content: "";
            width: 1px;
            height: 100%;
            display: block;
            left: 50%;
            position: absolute;
            background-image: -webkit-linear-gradient(top, #fff, #000, #fff);
            background-image: -moz-linear-gradient(top, #fff, #000, #fff);
            background-image: -ms-linear-gradient(top, #fff, #000, #fff);
            background-image: -o-linear-gradient(top, #fff, #000, #fff);
            background-image: linear-gradient(top, #fff, #000, #fff);
        }


        .cssload-preloader {
            position: absolute;
            top: 0px;
            left: 0px;
            right: 0px;
            bottom: 0px;
            z-index: 10;
            background: #ffffffe3;
        }

        .cssload-preloader>.cssload-preloader-box {
            position: absolute;
            height: 29px;
            top: 50%;
            left: 50%;
            margin: -15px 0 0 -146px;
            perspective: 195px;
            -o-perspective: 195px;
            -ms-perspective: 195px;
            -webkit-perspective: 195px;
            -moz-perspective: 195px;
        }

        .cssload-preloader .cssload-preloader-box>div {
            position: relative;
            width: 29px;
            height: 29px;
            background: rgb(204, 204, 204);
            float: left;
            text-align: center;
            line-height: 29px;
            font-family: Verdana;
            font-size: 19px;
            color: rgb(255, 255, 255);
        }

        .cssload-preloader .cssload-preloader-box>div:nth-child(1) {
            background: rgb(51, 102, 255);
            margin-right: 15px;
            animation: cssload-movement 690ms ease 0ms infinite alternate;
            -o-animation: cssload-movement 690ms ease 0ms infinite alternate;
            -ms-animation: cssload-movement 690ms ease 0ms infinite alternate;
            -webkit-animation: cssload-movement 690ms ease 0ms infinite alternate;
            -moz-animation: cssload-movement 690ms ease 0ms infinite alternate;
        }

        .cssload-preloader .cssload-preloader-box>div:nth-child(2) {
            background: rgb(51, 102, 255);
            margin-right: 15px;
            animation: cssload-movement 690ms ease 86.25ms infinite alternate;
            -o-animation: cssload-movement 690ms ease 86.25ms infinite alternate;
            -ms-animation: cssload-movement 690ms ease 86.25ms infinite alternate;
            -webkit-animation: cssload-movement 690ms ease 86.25ms infinite alternate;
            -moz-animation: cssload-movement 690ms ease 86.25ms infinite alternate;
        }

        .cssload-preloader .cssload-preloader-box>div:nth-child(3) {
            background: rgb(51, 102, 255);
            margin-right: 15px;
            animation: cssload-movement 690ms ease 172.5ms infinite alternate;
            -o-animation: cssload-movement 690ms ease 172.5ms infinite alternate;
            -ms-animation: cssload-movement 690ms ease 172.5ms infinite alternate;
            -webkit-animation: cssload-movement 690ms ease 172.5ms infinite alternate;
            -moz-animation: cssload-movement 690ms ease 172.5ms infinite alternate;
        }

        .cssload-preloader .cssload-preloader-box>div:nth-child(4) {
            background: rgb(51, 102, 255);
            margin-right: 15px;
            animation: cssload-movement 690ms ease 258.75ms infinite alternate;
            -o-animation: cssload-movement 690ms ease 258.75ms infinite alternate;
            -ms-animation: cssload-movement 690ms ease 258.75ms infinite alternate;
            -webkit-animation: cssload-movement 690ms ease 258.75ms infinite alternate;
            -moz-animation: cssload-movement 690ms ease 258.75ms infinite alternate;
        }

        .cssload-preloader .cssload-preloader-box>div:nth-child(5) {
            background: rgb(51, 102, 255);
            margin-right: 15px;
            animation: cssload-movement 690ms ease 345ms infinite alternate;
            -o-animation: cssload-movement 690ms ease 345ms infinite alternate;
            -ms-animation: cssload-movement 690ms ease 345ms infinite alternate;
            -webkit-animation: cssload-movement 690ms ease 345ms infinite alternate;
            -moz-animation: cssload-movement 690ms ease 345ms infinite alternate;
        }

        .cssload-preloader .cssload-preloader-box>div:nth-child(6) {
            background: rgb(51, 102, 255);
            margin-right: 15px;
            animation: cssload-movement 690ms ease 431.25ms infinite alternate;
            -o-animation: cssload-movement 690ms ease 431.25ms infinite alternate;
            -ms-animation: cssload-movement 690ms ease 431.25ms infinite alternate;
            -webkit-animation: cssload-movement 690ms ease 431.25ms infinite alternate;
            -moz-animation: cssload-movement 690ms ease 431.25ms infinite alternate;
        }

        .cssload-preloader .cssload-preloader-box>div:nth-child(7) {
            background: rgb(51, 102, 255);
            margin-right: 15px;
            animation: cssload-movement 690ms ease 517.5ms infinite alternate;
            -o-animation: cssload-movement 690ms ease 517.5ms infinite alternate;
            -ms-animation: cssload-movement 690ms ease 517.5ms infinite alternate;
            -webkit-animation: cssload-movement 690ms ease 517.5ms infinite alternate;
            -moz-animation: cssload-movement 690ms ease 517.5ms infinite alternate;
        }

        @keyframes cssload-movement {
            from {
                transform: scale(1) translateY(0px) rotateX(0deg);
                box-shadow: 0 0 0 rgba(0, 0, 0, 0);
            }

            to {
                transform: scale(1.5) translateY(-24px) rotateX(45deg);
                box-shadow: 0 24px 39px rgb(51, 102, 255);
                background: rgb(51, 102, 255);
            }
        }

        @-o-keyframes cssload-movement {
            from {
                -o-transform: scale(1) translateY(0px) rotateX(0deg);
                box-shadow: 0 0 0 rgba(0, 0, 0, 0);
            }

            to {
                -o-transform: scale(1.5) translateY(-24px) rotateX(45deg);
                box-shadow: 0 24px 39px rgb(51, 102, 255);
                background: rgb(51, 102, 255);
            }
        }

        @-ms-keyframes cssload-movement {
            from {
                -ms-transform: scale(1) translateY(0px) rotateX(0deg);
                box-shadow: 0 0 0 rgba(0, 0, 0, 0);
            }

            to {
                -ms-transform: scale(1.5) translateY(-24px) rotateX(45deg);
                box-shadow: 0 24px 39px rgb(51, 102, 255);
                background: rgb(51, 102, 255);
            }
        }

        @-webkit-keyframes cssload-movement {
            from {
                -webkit-transform: scale(1) translateY(0px) rotateX(0deg);
                box-shadow: 0 0 0 rgba(0, 0, 0, 0);
            }

            to {
                -webkit-transform: scale(1.5) translateY(-24px) rotateX(45deg);
                box-shadow: 0 24px 39px rgb(51, 102, 255);
                background: rgb(51, 102, 255);
            }
        }

        @-moz-keyframes cssload-movement {
            from {
                -moz-transform: scale(1) translateY(0px) rotateX(0deg);
                box-shadow: 0 0 0 rgba(0, 0, 0, 0);
            }

            to {
                -moz-transform: scale(1.5) translateY(-24px) rotateX(45deg);
                box-shadow: 0 24px 39px rgb(51, 102, 255);
                background: rgb(51, 102, 255);
            }
        }
    </style>
    @yield('usercdn')
</head>
