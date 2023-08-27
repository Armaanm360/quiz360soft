<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Quizo HTML Template - V.5</title>
  <!-- FontAwesome-cdn include -->
  <link rel="stylesheet" href="{{ asset('public') }}/assets/css/all.min.css">
  <!-- Google fonts include -->
  <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700;800&family=Sen:wght@400;700;800&display=swap" rel="stylesheet">
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
      font-family: hindis !important;
      background-color: rgb(11 17 32) !important;
      overflow-x: hidden;


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



    /*Background color*/
    /* #grad1 {
            background-color: : #9C27B0;
            background-image: linear-gradient(120deg, #FF4081, #81D4FA);
        } */

    /*form styles*/
    #msform {
      text-align: center;
      position: relative;
      margin-top: 20px;
    }

    #msform fieldset .form-card {
      background: rgb(11 17 32);
      border: 0 none;
      border-radius: 2rem;
      /* box-shadow: 0 2px 2px 2px rgba(0, 0, 0, 0.2); */
      padding: 20px 40px 30px 40px;
      box-sizing: border-box;
      width: 94%;
      margin: 50px 3% 20px 3%;
      /* box-shadow: 6px 6px 16px 0 rgba(0, 0, 0, .51), -6px -6px 16px 0 rgba(255, 255, 255, .05) !important; */
      box-shadow: inset 0px 0px 9px 0px #000000;
      position: relative;
    }

    #msform fieldset {
      background: rgb(11 17 32);
      border: 0 none;
      border-radius: 0.5rem;
      box-sizing: border-box;
      width: 100%;
      margin: 0;
      padding-bottom: 20px;
      box-shadow: 6px 6px 16px 0 rgba(0, 0, 0, .51), -6px -6px 16px 0 rgba(255, 255, 255, .05)
        /*stacking fieldsets above each other*/
        position: relative;
    }

    /*Hide all except first fieldset*/
    #msform fieldset:not(:first-of-type) {
      display: none;
    }

    #msform fieldset .form-card {
      text-align: left;
      color: #9E9E9E;
    }

    #msform input,
    #msform textarea {
      /* padding: 0px 8px 4px 8px;
    border: none;
    border-bottom: 1px solid #ccc;
    border-radius: 0px;
    margin-bottom: 25px;
    margin-top: 2px;
    width: 100%;
    box-sizing: border-box;
    font-family: montserrat;
    color: #2C3E50;
    font-size: 16px;
    letter-spacing: 1px; */
    }

    #msform input:focus,
    #msform textarea:focus {
      -moz-box-shadow: none !important;
      -webkit-box-shadow: none !important;
      box-shadow: none !important;
      border: none;
      font-weight: bold;
      border-bottom: 2px solid skyblue;
      outline-width: 0;
    }

    /*Blue Buttons*/
    #msform .action-button {
      width: 100px;
      background: #eceeef17;
      font-weight: bold;
      color: white;
      border: 0 none;
      border-radius: 20px;

      cursor: pointer;
      padding: 10px 5px;
      margin: 10px 5px;
    }



    #msform .action-button:hover,
    #msform .action-button:focus {
      box-shadow: 0 0 0 2px white, 0 0 0 3px skyblue;
    }

    /*Previous Buttons*/
    #msform .action-button-previous {
      width: 100px;
      background: #eceeef17;
      font-weight: bold;
      color: white;
      border: 0 none;
      border-radius: 20px;
      cursor: pointer;
      padding: 10px 5px;
      margin: 10px 5px;
    }

    #msform .action-button-previous:hover,
    #msform .action-button-previous:focus {
      box-shadow: 0 0 0 2px white, 0 0 0 3px #616161;
    }

    /*Dropdown List Exp Date*/
    select.list-dt {
      border: none;
      outline: 0;
      border-bottom: 1px solid #ccc;
      padding: 2px 5px 3px 5px;
      margin: 2px;
    }

    select.list-dt:focus {
      border-bottom: 2px solid skyblue;
    }

    /*The background card*/
    .card {
      z-index: 0;
      border: none;
      border-radius: 0.5rem;
      position: relative;
      background: rgb(11 17 32);
      /* box-shadow: 6px 6px 16px 0 rgba(0, 0, 0, .51), -6px -6px 16px 0 rgba(255, 255, 255, .05) !important; */
    }



    /*FieldSet headings*/
    .fs-title {
      font-size: 25px;
      color: #c2c5c9;
      margin-bottom: 10px;
      font-weight: bold;
      text-align: left;
    }

    /*progressbar*/
    #progressbar {
      margin-bottom: 30px;
      overflow: hidden;
      color: lightgrey;

    }

    #progressbar .active {
      color: #000000;
    }

    #progressbar li {
      list-style-type: none;
      font-size: 10px;
      width: 10%;
      float: left;
      position: relative;
    }

    /*Icons in the ProgressBar*/
    #progressbar #account:before {
      font-family: FontAwesome;
      content: "\f023";
    }

    #progressbar #personal:before {
      font-family: FontAwesome;
      content: "\f007";
    }

    #progressbar #payment:before {
      font-family: FontAwesome;
      content: "\f09d";
    }

    #progressbar #confirm:before {
      font-family: FontAwesome;
      content: "\f00c";
    }

    /*ProgressBar before any progress*/
    #progressbar li:before {
      width: 50px;
      height: 50px;
      line-height: 45px;
      display: block;
      font-size: 18px;
      color: #ffffff;
      background: lightgray;
      border-radius: 50%;
      margin: 0 auto 10px auto;
      padding: 2px;
    }

    /*ProgressBar connectors*/
    #progressbar li:after {
      content: '';
      width: 100%;
      height: 2px;
      background: lightgray;
      position: absolute;
      left: 0;
      top: 25px;
      z-index: -1;
    }

    /*Color number of the step and the connector before it*/
    #progressbar li.active:before,
    #progressbar li.active:after {
      background: skyblue;
    }

    #card {
      display: flex;
      justify-content: center;
      align-items: center;
      width: 400px;
      height: 300px;
      border-radius: 20px;
      box-shadow: -1px -1px 3px rgba(255, 255, 255, 0.1),
        2px 2px 6px rgba(0, 0, 0, 0.8);

    }

    .inputform {
      position: relative;
      display: flex;
      justify-content: center;
      align-items: right .;
      flex-direction: column;
    }

    .inputform p {
      color: #51987d;
      font-size: 20px;
      font-weight: 500;
      margin-bottom: 20px;
    }

    .inputform label {
      position: relative;
    }

    .inputform label input {
      appearance: none;
      -webkit-appearance: none;
      cursor: pointer;
    }

    .inputform label .fas {
      position: relative;
      width: 40px;
      height: 40px;
      background: #091921;
      line-height: 40px;
      text-align: center;
      margin: 0 4px;
      color: #ffffff;
      font-size: 16px;
      border-radius: 50%;
      cursor: pointer;
      box-shadow: -1px -1px 3px rgba(255, 255, 255, 0.1),
        2px 2px 6px rgba(0, 0, 0, 0.8);
    }

    .container label .fas:hover {
      box-shadow: -1px -1px 3px rgba(255, 255, 255, 0.1),
        2px 2px 6px rgba(0, 0, 0, 0.8),
        inset -2px -2px 10px rgba(255, 255, 255, 0.05),
        inset 2px 2px 10px rgba(0, 0, 0, 0.5);
    }

    input:checked~.fas {
      color: #08FACB;
      box-shadow: inset -1px -1px 3px rgba(255, 255, 255, 0.1),
        inset 2px 2px 6px rgba(0, 0, 0, 1);
      text-shadow: 0 0 5px #08FACB,
        0 0 20px #08FACB;
    }


    .imground {
      border-radius: 20%;
      width: 80%;
      margin-top: 10%;
    }

    #conic {
      position: relative;
      z-index: 0;
      width: 400px;
      height: 300px;
      margin: 20px;
      border-radius: 10px;
      overflow: hidden;
      padding: 2rem;
    }

    #conic::before {
      content: '';
      position: absolute;
      z-index: -2;
      left: -50%;
      top: -50%;
      width: 200%;
      height: 200%;
      background-color: #1a232a;
      background-repeat: no-repeat;
      background-position: 0 0;
      background-image: conic-gradient(transparent, rgba(168, 239, 255, 1), transparent 30%);
      animation: rotate 4s linear infinite;
    }

    #conic::after {
      content: '';
      position: absolute;
      z-index: -1;
      left: 6px;
      top: 6px;
      width: calc(100% - 12px);
      height: calc(100% - 12px);
      background: #000;
      border-radius: 5px;
    }


    #conic::before,
    #conic::after {
      box-sizing: border-box;
    }

    @keyframes rotate {
      100% {
        transform: rotate(1turn);
      }
    }

    @keyframes opacityChange {
      50% {
        opacity: .5;
      }

      100% {
        opacity: 1;
      }
    }

    .progress {
      display: flex;
      height: 1rem;
      overflow: hidden;
      font-size: .75rem;
      background-color: #1a1d20;
      border-radius: .25rem;
      margin: 0px 20px 20px;
    }

    .progress-bar {
      display: flex;
      flex-direction: column;
      justify-content: center;
      overflow: hidden;
      color: #161616;
      text-align: center;
      white-space: nowrap;
      background-color: #90c7ff;
      transition: width 1s ease;
    }
  </style>
</head>

<body>
  <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#"><i class="fa-brands fa-quinscape text-white"></i></i> <span class="text-white">কুই</span><span class="text-danger">জিন</span></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
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
  </nav>

  <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>



  <section>

    <div class="row p-5">

      <div class="col-sm-12 col-md-12 col-lg-6 p-0 mt-3 mb-2">
        {{-- <div id="conic">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur accusamus fuga nihil culpa
                        atque quaerat beatae, facilis ipsa doloremque unde.</p>
                </div> --}}

        <lottie-player src="https://assets4.lottiefiles.com/packages/lf20_inti4oxf.json" mode="bounce" background="transparent" speed="1" style="width: 600px; height: 600px;" loop autoplay>
        </lottie-player>
      </div>
      <div class="col-sm-12 col-md-12 col-lg-6 text-center p-0 mt-3 mb-2">
        <div class="card px-0 pt-4 pb-0 mt-3 mb-3">
          <h2><strong class="text-white" style="font-family:hindis_bold ">কুইজ <span class="text-info">ম্যাথমেটিক্স</span> </strong></h2>
          <p class="text-white">নিজেকে প্রস্তুত করো বুদ্ধিমূলক প্রশ্নের উত্তর
            দিয়ে</p>


          {{-- <div class="card px-0 pt-4 pb-0 mt-3 mb-3">
                        <div class="progress">
                            <div id="dynamic" class="progress-bar progress-bar-success progress-bar-striped active"
                                role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"
                                style="width: 0%">
                                <span id="current-progress"></span>
                            </div>
                        </div>

                    </div> --}}

          <div class="row">
            <div class="col-md-12 mx-0">
              <form id="msform" method="POST" action="{{ url('quiz-question') }}">
                @csrf
                <!-- progressbar -->
                {{-- <ul id="progressbar">
                                    @foreach ($question as $bar)
                                        <li class="" id="account"><strong>Quiz_{{ $bar->id }}</strong>
                </li>
                @endforeach
                </ul> --}}


                @foreach ($question as $question)
                <fieldset id="field_{{ $question->id }}">
                  <div class="form-card">
                    {{-- <div class="question_number text-center text-uppercase text-white">
                                                <span class="rounded-pill">Question {{ $question->id }} to 5</span>
                  </div> --}}
                  <h2 class="fs-title text-danger pt-3">{{ $question->question }}</h2>
                  <div class="inputform">

                    <ul class="ullist text-white" style="list-style: none">
                      <li class="mt-2">
                        <label>
                          <input class="" type="radio" name="quiz_{{ $question->id }}" id="exampleRadios1" value="{{ $question->option_1 }}"><i class="fas fa-check"></i>

                          {{ $question->option_1 }}</label>
                      </li>

                      <li class="mt-2">
                        <label>
                          <input class="" type="radio" name="quiz_{{ $question->id }}" id="exampleRadios1" value="{{ $question->option_2 }}"><i class="fas fa-check"></i>

                          {{ $question->option_2 }}</label>

                      </li>

                      <li class="mt-2">
                        <label>
                          <input class="" type="radio" name="quiz_{{ $question->id }}" id="exampleRadios1" value="{{ $question->option_3 }}"><i class="fas fa-check"></i>

                          {{ $question->option_3 }}</label>

                      </li>
                      <li class="mt-2">
                        <label>
                          <input class="" type="radio" name="quiz_{{ $question->id }}" id="exampleRadios1" value="{{ $question->option_4 }}"><i class="fas fa-check"></i>

                          {{ $question->option_4 }}</label>

                      </li>

                    </ul>

                  </div>

            </div>

            @if ($question_first->id != $question->id)
            <input type="button" name="previous" class="previous action-button-previous" value="Previous" />
            @endif

            @if ($question_last->id == $question->id)
            <input disabled type="submit" class="action-button" id="confirm" value="Confirm" />
            @else
            <input disabled type="button" name="next" id="nextid_{{ $question->id }}" class="next action-button" value="Next Step" />
            @endif
            </fieldset>
            @endforeach
            </form>
          </div>
        </div>
      </div>
    </div>

    </div>


  </section>






  <!-- jQuery-js include -->
  <script src="{{ asset('public') }}/assets/js/jquery-3.6.0.min.js"></script>
  <!-- jquery-count-down include -->
  <script src="{{ asset('public') }}/assets/js/countdown.js"></script>
  <!-- Bootstrap-js include -->
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
</body>
<script type="text/javascript">
  $(document).ready(function() {

    var current_fs, next_fs, previous_fs; //fieldsets
    var opacity;

    $(".next").click(function() {

      current_fs = $(this).parent();
      next_fs = $(this).parent().next();

      //Add Class Active
      $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");

      //show the next fieldset
      next_fs.show();
      //hide the current fieldset with style
      current_fs.animate({
        opacity: 0
      }, {
        step: function(now) {
          // for making fielset appear animation
          opacity = 1 - now;

          current_fs.css({
            'display': 'none',
            'position': 'relative'
          });
          next_fs.css({
            'opacity': opacity
          });
        },
        duration: 600
      });
    });

    $(".previous").click(function() {

      current_fs = $(this).parent();
      previous_fs = $(this).parent().prev();

      //Remove class active
      $("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");

      //show the previous fieldset
      previous_fs.show();

      //hide the current fieldset with style
      current_fs.animate({
        opacity: 0
      }, {
        step: function(now) {
          // for making fielset appear animation
          opacity = 1 - now;

          current_fs.css({
            'display': 'none',
            'position': 'relative'
          });
          previous_fs.css({
            'opacity': opacity
          });
        },
        duration: 600
      });
    });

    $('.radio-group .radio').click(function() {
      $(this).parent().find('.radio').removeClass('selected');
      $(this).addClass('selected');
    });

    $(".submit").click(function() {
      return false;
    });


    $(function() {
      $('#nextid').on('click', function(e) {
        e.preventDefault();

        var current_progress = 0;
        var interval = setInterval(function() {
          current_progress += 20;
          $("#dynamic")
            .css("width", current_progress + "%")
            .attr("aria-valuenow", current_progress)
            .text(current_progress + "% Complete");
          if (current_progress >= 100)
            clearInterval(interval);
        }, 1000);

      });




    });







    $('#field_1 input[type=radio][id="exampleRadios1"]').change(function() {
      $('#nextid_1').prop('disabled', false);
    });
    $('#field_2 input[type=radio][id="exampleRadios1"]').change(function() {
      $('#nextid_2').prop('disabled', false);
    });
    $('#field_3 input[type=radio][id="exampleRadios1"]').change(function() {
      $('#nextid_3').prop('disabled', false);
    });
    $('#field_4 input[type=radio][id="exampleRadios1"]').change(function() {
      $('#nextid_4').prop('disabled', false);
    });
    $('#field_4 input[type=radio][id="exampleRadios1"]').change(function() {
      $('#nextid_4').prop('disabled', false);
    });
    $('#field_5 input[type=radio][id="exampleRadios1"]').change(function() {
      $('#nextid_5').prop('disabled', false);
    });
    $('#field_6 input[type=radio][id="exampleRadios1"]').change(function() {
      $('#nextid_6').prop('disabled', false);
    });
    $('#field_7 input[type=radio][id="exampleRadios1"]').change(function() {
      $('#nextid_7').prop('disabled', false);
    });
    $('#field_8 input[type=radio][id="exampleRadios1"]').change(function() {
      $('#nextid_8').prop('disabled', false);
    });
    $('#field_9 input[type=radio][id="exampleRadios1"]').change(function() {
      $('#nextid_9').prop('disabled', false);
    });
    $('#field_10 input[type=radio][id="exampleRadios1"]').change(function() {
      $('#confirm').prop('disabled', false);
    });













  });
</script>

</html>