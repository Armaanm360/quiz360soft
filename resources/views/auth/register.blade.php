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


        @media (min-width: 500px) {
            html {
                font-size: .60rem;
            }
        }

        @media (min-width: 591px) {
            html {
                font-size: .80rem;
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

        .card {
            border-radius: 27px;
            background: #0b1120;
            box-shadow: 10px -10px 15px #070b15,
                -10px 10px 15px #0f172b;
        }
    </style>

    <div class="container">
        <div class="row">
            <div class="sectionist m-5`">
                <div class="col-md-6 col-lg-6 col-xl-6 col-sm-12 col-xm-12">
                    <div class="card">
                        <div class="card-header">{{ __('Register') }}</div>
                        <div class="card-body">
                            <form method="POST" action="{{ route('register') }}">@csrf <div class="form-group row">
                                    <label for="name"
                                        class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>
                                    <div class="col-md-6"><input id="name" type="text"
                                            class="form-control @error('name') is-invalid @enderror" name="name"
                                            value="{{ old('name') }}" required autocomplete="name" autofocus>
                                        @error('name')
                                            <span class="invalid-feedback"
                                                role="alert"><strong>{{ $message }}</strong></span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="form-group row"><label for="email"
                                        class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>
                                    <div class="col-md-6"><input id="email" type="email"
                                            class="form-control @error('email') is-invalid @enderror" name="email"
                                            value="{{ old('email') }}" required autocomplete="email">
                                        @error('email')
                                            <span class="invalid-feedback"
                                                role="alert"><strong>{{ $message }}</strong></span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="form-group row"><label for="password"
                                        class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>
                                    <div class="col-md-6"><input id="password" type="password"
                                            class="form-control @error('password') is-invalid @enderror" name="password"
                                            required autocomplete="new-password">
                                        @error('password')
                                            <span class="invalid-feedback"
                                                role="alert"><strong>{{ $message }}</strong></span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="form-group row"><label for="password-confirm"
                                        class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>
                                    <div class="col-md-6"><input id="password-confirm" type="password"
                                            class="form-control" name="password_confirmation" required
                                            autocomplete="new-password"></div>
                                </div>
                                <div class="form-group row mb-0">
                                    <div class="col-md-6 offset-md-4"><button type="submit"
                                            class="btn btn-primary">{{ __('Register') }} </button></div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-xl-6 col-sm-12 col-xm-12">

                </div>
            </div>
        </div>
    </div>









    <!-- jQuery-js include -->
    <script src="{{ asset('public') }}/assets/js/jquery-3.6.0.min.js"></script>
    <!-- jquery-count-down include -->
    <script src="{{ asset('public') }}/assets/js/countdown.js"></script>
    <!-- Bootstrap-js include -->
    <script src="{{ asset('public/admin_asset') }}/js/core/bootstrap.min.js"></script>
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    </body>

</html>
