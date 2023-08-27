@extends('admin.master')
@section('content')
    @inject('calculation', 'App\Models\Calculation')
    <style>
        .row.result.section {
            margin-top: 10rem;
        }

        section.quiz-card {
            margin-top: 0rem;
        }

        .quiz-card {
            padding: 0px;
        }

        li.mt-2 {
            padding: 5px;
            background: #b6d9b8;
            border: 1px solid #0e0e0d78;
            border-radius: 25px;
        }

        /*form styles*/
        #msform {
            text-align: center;
            position: relative;
            margin-top: 0px;
            font-family: 'Lato';
            font-weight: 900;
        }



        #msform fieldset .form-card {}

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
            background: #00aaffc2;
            font-weight: bold;
            color: white;
            border: 0 none;
            border-radius: 20px;
            cursor: pointer;
            padding: 10px 5px;
            margin: 10px 5px;
            font-size: 11px;
        }



        #msform .action-button:hover,
        #msform .action-button:focus {
            box-shadow: 0 0 0 2px white, 0 0 0 3px skyblue;
        }

        /*Previous Buttons*/
        #msform .action-button-previous {
            width: 100px;
            background: #e01d1dad;
            font-weight: bold;
            color: rgb(255 255 255);
            border: 0 none;
            border-radius: 20px;
            cursor: pointer;
            padding: 10px 5px;
            margin: 10px 5px;
            font-size: 11px;
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


        /*FieldSet headings*/
        .fs-title {
            font-size: 20px;
            color: #c2c5c9;
            margin-bottom: 10px;
            font-weight: 600;
            text-align: center;
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
            color: #ffffff;
            font-size: 16px;
            border-radius: 50%;
            cursor: pointer;
            box-shadow: -1px -1px 3px rgba(255, 255, 255, 0.1),
                2px 2px 6px rgba(0, 0, 0, 0.8);
            margin-right: 5px;
            margin-left: -1px;
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

        em#other {
            font-size: 16px;
            font-family: monospace;
        }

        .box h2 {
            display: block;
            text-align: center;
            color: #00dcff75;
            font-size: 24px;
            font-weight: 900;
        }

        .box {}

        .box .chart {
            margin: auto;
            width: 50%;
        }



        .box canvas {}

        canvas {
            width: 120px !important;
            height: 120px !important;
            margin-bottom: 40px;
        }

        /* span.percentage {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    position: relative;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    left: 20px;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                } */

        .information {
            margin-bottom: 7px;
        }

        .resultable {
            border: none !important
        }

        button.btn.btn-large.btn-primary {
            display: block;
            width: 100%;
            border-radius: 6px;
        }

        button.leader {
            display: block;
            width: 100%;
            border-radius: 6px;
        }

        .buttonsection .table td,
        .table th {
            font-size: 14px;
            border-top-width: 0;
            border-bottom: 1px solid;
            border-color: #ebedf2 !important;
            padding: 0 10px !important;
            height: 35px;
            vertical-align: middle !important;
        }

        /* .mark-percentage {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                position: absolute;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                top: 0;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            } */

        .mark-percentage {
            position: absolute;
            top: 53px;
            right: 55%;
            /* left: 50%; */
            transform: translateX(43px);
        }

        .h1css {
            color: #2bb3c9;
            font-size: 17px;
            font-weight: 900;
        }


        .card.rem {
            box-shadow: none;
            border: 1px solid #007bff96;
        }

        .card.rem {
            border: 1px solid #767676;
            box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 15px -3px, rgba(0, 0, 0, 0.05) 0px 4px 6px -2px;
        }




        .bigcard {
            border-radius: 5px;
            border: 1px solid #05ff059e;
            box-shadow: #28a7458c 2.4px 2.4px 3.2px;
        }

        .bigcard2 {
            border-radius: 5px;
            border: 1px solid #4544ad9e;
            box-shadow: #4544ad9e 2.4px 2.4px 3.2px;
        }

        .bigcard3 {
            border-radius: 5px;
            border: 1px solid #43e7ff9e;
            box-shadow: #43e7ff9e 2.4px 2.4px 3.2px;
        }

        .bigcard4 {
            border-radius: 5px;
            border: 1px solid #d7df4a9e;
            box-shadow: #d7df4a9e 2.4px 2.4px 3.2px;
        }
    </style>
    <div style="">
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
                                                <img src="{{ asset('public/admin_asset') }}/img/profile.png" alt=""
                                                    style="height: 48px;width: 48px;border-radius: 50%;">
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
                                                    <img width="32px" height="32px"
                                                        src="https://icon2.cleanpng.com/20180727/vag/kisspng-social-media-check-mark-symbol-computer-icons-user-blue-tic-5b5b96fb417831.9762382515327290832682.jpg"alt="">
                                                @endif

                                            </h3>
                                            <p class="list-group-item-text" style="font-size: 13px">Welcome To Quiz360</p>
                                        </div>
                                    </div>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>



            </div>
        </div>


        {{-- <div class="col-md-4 col-sm-12 col-xs-12">
            <div class="card pro">
                <div class="card-header bg-dark text-white">
                    <h2>Quiz Information</h2>
                </div>

                <div class="card-body">
                    <ul class="list-group">
                        <li class="list-group-item disabled text-info">Subject :
                            {{ $subject_name }}
                        </li>
                        <li class="list-group-item text-info">Division : {{ $division }}</li>
                    </ul>
                    <button class="btn btn-outline-info mb-2" disabled> <span class="mr-2"><i
                                class="fa-regular fa-circle-question"></i></span> <span>Total
                            Questions</span> <span class="badge badge-info">{{ $question_count }}</span> </button>


                    <button class="btn btn-outline-warning mb-2" disabled> <span class="mr-2"><i
                                class="fa-solid fa-stopwatch"></i></span> <span>Exam Time</span>
                        <span class="badge badge-warning">{{ $quiz_time }} Mins</span>
                    </button>


                    @if ($quiz_type == 'negetive')
                        <button class="btn btn-outline-danger" disabled> <span class="mr-2"><i
                                    class="fa-solid fa-check-double"></i></span> <span>Negative
                                Marking</span></button>
                    @else
                        <button class="btn btn-outline-info" disabled> <span class="mr-2"><i
                                    class="fa-solid fa-check-double"></i></span> <span>Normal
                                Marking</span></button>
                    @endif




                </div>
                <div class="card-footer">
                    Result Published Time: <span class="text-danger">{{ $quiz_result_hour }}</span>
                </div>
            </div>
        </div> --}}



        <div class="card m-2">
            <!--<div class="card-header">-->
            <!--    hello world-->
            <!--</div>-->
            <div class="card-body">
                <div class="card-header sub-headline bg-dark text-white d-flex justify-content-between">
                    <p>{{ $quiz_name }}</p>
                    @if ($user_info == 0)
                        <p> <span class="mr-2"><i class="fa-solid fa-stopwatch"></i></span> <em id="other">blah</em>
                        </p>
                    @endif
                </div>

                <input type="hidden" id="timeid" value="{{ $quiz_time }}">
            </div>

        </div>


        <div class="container">
            @if ($user_info == 0)
                <section class="quiz-card">



                    <div class="row">
                        <div class="col-md-8 col-sm-12 col-xs-12">
                            <div class="pro">
                                @if ($user_info == 0)
                                    <div class="">
                                        <div class="row">
                                            <div class="col-md-12 col-sm-12  col-xs-12 mx-0">
                                                <form id="msform" method="POST" action="{{ url('quiz-question') }}">
                                                    @csrf
                                                    <input type="hidden" id="otherVal" name="countquiztime"
                                                        value="">
                                                    @foreach ($question as $question)
                                                        <fieldset id="field_{{ $question->quiz_id }}">
                                                            <div class="form-card">
                                                                <h2 class="fs-title text-danger pt-3">
                                                                    <span>{{ $loop->index + 1 }}. </span>
                                                                    {{ $question->quiz_question }}


                                                                </h2>

                                                                {{-- (<span>{{ $bnNumber->bnNum($loop->index + 1) }}/{{ $bnNumber->bnNum($question_count) }}</span>) --}}
                                                                Question Count
                                                                (<span>{{ $loop->index + 1 }}/{{ $question_count }}</span>)
                                                                <div class="inputform">

                                                                    <ul class="ullist text-white" style="list-style: none">
                                                                        <label style="width: 100%">
                                                                            <li class="mt-2">

                                                                                <input class="" type="radio"
                                                                                    name="quiz_{{ $question->quiz_id }}"
                                                                                    id="exampleRadios1"
                                                                                    value="{{ $question->quiz_option_1 }}"><i
                                                                                    class="fas fa-check"></i>

                                                                                {{ $question->quiz_option_1 }}
                                                                            </li>
                                                                        </label>
                                                                        <label style="width: 100%">
                                                                            <li class="mt-2">

                                                                                <input class="" type="radio"
                                                                                    name="quiz_{{ $question->quiz_id }}"
                                                                                    id="exampleRadios1"
                                                                                    value="{{ $question->quiz_option_2 }}"><i
                                                                                    class="fas fa-check"></i>

                                                                                {{ $question->quiz_option_2 }}

                                                                            </li>
                                                                        </label>


                                                                        <label style="width: 100%">
                                                                            <li class="mt-2">

                                                                                <input class="" type="radio"
                                                                                    name="quiz_{{ $question->quiz_id }}"
                                                                                    id="exampleRadios1"
                                                                                    value="{{ $question->quiz_option_3 }}"><i
                                                                                    class="fas fa-check"></i>

                                                                                {{ $question->quiz_option_3 }}

                                                                            </li>
                                                                        </label>
                                                                        <label style="width: 100%">
                                                                            <li class="mt-2">
                                                                                <input class="" type="radio"
                                                                                    name="quiz_{{ $question->quiz_id }}"
                                                                                    id="exampleRadios1"
                                                                                    value="{{ $question->quiz_option_4 }}"><i
                                                                                    class="fas fa-check"></i>

                                                                                {{ $question->quiz_option_4 }}
                                                                            </li>
                                                                        </label>



                                                                    </ul>


                                                                    <input type="hidden" name="get_subjective_id"
                                                                        value="{{ request()->route('id') }}">
                                                                    {{-- <input type="hidden" name="quiz_result_hour"
                                                                         value="{{ $quiz_result_hour }}"> --}}

                                                                </div>

                                                            </div>
                                                            @if ($question_first->quiz_id != $question->quiz_id)
                                                                <input type="button" name="previous"
                                                                    class="previous action-button-previous"
                                                                    value="Previous" />
                                                            @endif

                                                            @if ($question_last->quiz_id == $question->quiz_id)
                                                                <input type="submit" class="action-button"
                                                                    id="confirm" value="Submit Quiz" />
                                                            @else
                                                                <input type="button" name="next"
                                                                    id="nextid_{{ $question->quiz_id }}"
                                                                    class="next action-button" value="Next Question" />
                                                            @endif
                                                        </fieldset>
                                                    @endforeach

                                                    {{-- <input type="text" name="time_count" id="time_count"
                                                            value=""> --}}
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                @else
                                    {{-- <div class="col-sm-12 col-md-12 col-lg-6 text-center p-0 mt-3 mb-2">
                                            <div class="card m-5">

                                                <h1 class="display-3 text-white">Result Will Be Published Soon</h1>
                                                <a href="{{ url('answers/' . request()->route('id')) }}"
                                                    class="btn btn-outline-primary">উত্তরসমূহ
                                                    দেখুন


                                                </a>

                                                <input type="hidden" id="quiz_result_hour"
                                                    value="{{ $quiz_result_hour }}">
                                            </div>
                                        </div> --}}
                                @endif

                                {{-- <div class="container rest">
                                            <div class="row">
                                                <div class="col-6 col-md-6 col-sm-12"></div>
                                                <div class="col-6 col-md-6 col-sm-12">
                                                    <a href="{{ url('combined-result/' . request()->route('id')) }}"
                                                        class="btn btn-primary">Result</a>
                                                    <a href="{{ url('generate-pdf-result/' . request()->route('id')) }}"
                                                        class="btn btn-primary">Download Result</a>
                                                    <a href="{{ url('indiv-result/' . request()->route('id') . '/' . Auth::user()->id) }}"
                                                        class="btn btn-info">Check Yours</a>
                                                    <a href="{{ url('generate-pdf-result-individual/' . request()->route('id') . '/' . Auth::user()->id) }}"
                                                        class="btn btn-info">Download Your Result</a>
                                                </div>
                                            </div>
                                        </div> --}}

                            </div>
                        </div>


                    </div>


                </section>
            @else
                <div class="card p-5 profile">
                    <div class="row">
                        <div class="col">
                            <a href="">Back</a>
                        </div>
                        <div class="col">
                            <img class="rounded-circle shadow-4-strong"
                                src="{{ asset('public/user_images/') . '/' . Auth::user()->image }}" alt="">
                        </div>
                        <div class="col">

                        </div>
                    </div>
                    <div class="row">
                        <div class="col text-center">
                            <h2 class="">{{ Auth::user()->name }}</h2>
                            <div class="btnsect">
                                <button class="btn btn-sm btn-info text-white">{{ Auth::user()->user_id }}</button>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="card rem">
                    <div class="row">
                        <div class="col">
                            <div class="toptime text-center p-3">
                                <h1 class="text-info font-weight-bold">Result Of {{ $quiz_name }}</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card rem">
                    <div class="row">
                        <div class="col">
                            <div class="toptime text-center p-3">
                                <h1 class="font-weight-bold"><i class="fa-regular fa-clock"></i></h1>
                                <h2>Given Time</h2>
                                <h2>{{ $quiz_time }} Min</h2>
                            </div>
                        </div>
                        <div class="col">
                            <div class="toptime text-center p-3">
                                <h1 class="font-weight-bold"><i class="fa-solid fa-gauge-simple-high"></i></h1>
                                <h2>Elapsed Time</h2>
                                <h2>{{ $timetaken * 60 }} </h2>
                            </div>
                        </div>
                        <div class="col">
                            <div class="toptime text-center p-3">
                                <h1 class="font-weight-bold"><i class="fa-solid fa-forward"></i></h1>
                                <h2>Fastest</h2>
                                <h2>{{ $fastest }}</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="card p-3 text-center bg-success text-white">
                            <h1>{{ $users_get[0]->right_ans }}</h1>
                            <h2 class="font-weight-bold">Right Answers</h2>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card p-3 text-center bg-danger text-white">
                            <h1>{{ $users_get[0]->wrong_ans }}</h1>
                            <h2 class="font-weight-bold">Wrong Answers</h2>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card p-3 text-center bg-info text-white">
                            <h1>{{ $users_get[0]->skipped_ans }}</h1>
                            <h2 class="font-weight-bold">Skipped Answers</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="card p-3 text-center bigcard">
                            <div class="row">
                                <div class="col">
                                    <div class="col">
                                        <span class="fa-stack" style="vertical-align: top;">
                                            <i class="fa-solid fa-circle fa-stack-2x"></i>
                                            <i class="fa-solid fa-check fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <h1 class="p-3"><span
                                            class="text-info font-weight-bold">{{ $users_get[0]->total_marks }}</span>/{{ $question_count }}
                                    </h1>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <h1 class="h1css text-success">Obtained Marks</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card p-3 text-center bigcard4">
                            <div class="row">
                                <div class="col">
                                    <div class="col">
                                        <span class="fa-stack p-0" style="vertical-align: top;">
                                            <i class="fa-solid fa-circle fa-stack-2x"></i>
                                            <i class="fa-solid fa-graduation-cap fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <h1 class="p-3">
                                        {{ $calculation->getGrad($users_get[0]->total_marks, $subject->quiz_number) }}</h1>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <h1 class="h1css text-warning">Grade</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="card p-3 text-center bigcard2">
                            <div class="row">
                                <div class="col">
                                    <div class="col">
                                        <span class="fa-stack p-0" style="vertical-align: top;">
                                            <i class="fa-solid fa-circle fa-stack-2x"></i>
                                            <i class="fa-solid fa-ranking-star fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <h1 class="p-3">--</h1>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <h1 class="h1css text-secondary">Rank</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card p-3 text-center bigcard3">
                            <div class="row">
                                <div class="col">
                                    <div class="col">
                                        <span class="fa-stack" style="vertical-align: top;">
                                            <i class="fa-solid fa-circle fa-stack-2x"></i>
                                            <i class="fa-solid fa-percent fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <h1 class="p-3">
                                        {{ number_format(($users_get[0]->total_marks * 100) / $subject->quiz_number, 2, '.', '.') }}%
                                    </h1>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <h1 class="h1css">Percentage</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>





                <div class="row">
                    <div class="col">
                        <a class="btn btn-info btn-block text-white"
                            href="{{ url('combined-result/' . request()->route('id')) }}">Leaderboard</a>
                    </div>
                    <div class="col">
                        <a class="btn btn-info btn-block text-white" id="resultpublish"
                            href="{{ url('answers/' . request()->route('id')) }}">View Answers</a>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <a class="btn btn-success btn-block text-white" id="downloadPDF"
                            href="{{ url('certification/' . request()->route('id')) . '/' . Auth::user()->id }}">Get
                            Certificate</a>
                    </div>
                </div>


                <br>
                <br>
                <br>
                <br>
                <br>




            @endif
        </div>



    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/easy-pie-chart/2.1.6/jquery.easypiechart.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <script type="text/javascript">
        $('.chart').easyPieChart({
            size: 160,
            barColor: "#17d3e6",
            scaleLength: 0,
            lineWidth: 15,
            trackColor: "#373737",
            lineCap: "circle",
            animate: 3000,
        });


        $('#resultpublish').click(function(event) {
            event.preventDefault();
            Swal.fire({
                title: 'Notice!',
                text: 'Publishing Hour: 13 Nov,5.00 PM',
                icon: 'info',
                confirmButtonText: 'Wait'
            })

            // alert('result will be published at 7.00 pm Today');

        });
    </script>
    <script type="text/javascript">
        // $('div.rest').hide();
        // var getDate = $('#quiz_result_hour').val();
        // var d = new Date(getDate);
        // var d1 = new Date();
        // var timelimit = (d.getTime() - d1.getTime());
        // if (timelimit > 0) {
        //     setTimeout(function() {
        //         $('div.rest').show();
        //     }, timelimit);
        // }

        // var current_fs, next_fs, previous_fs; //fieldsets
        // var opacity;


        $("#downloadPDF").click(function() {
            // $("#content2").addClass('ml-215'); // JS solution for smaller screen but better to add media queries to tackle the issue
            getScreenshotOfElement(
                $("div#content2").get(0),
                0,
                0,
                $("#content2").width() +
                45, // added 45 because the container's (content2) width is smaller than the image, if it's not added then the content from right side will get cut off
                $("#content2").height() +
                30, // same issue as above. if the container width / height is changed (currently they are fixed) then these values might need to be changed as well.
                function(data) {
                    var pdf = new jsPDF("l", "pt", [
                        $("#content2").width(),
                        $("#content2").height(),
                    ]);

                    pdf.addImage(
                        "data:image/png;base64," + data,
                        "PNG",
                        0,
                        0,
                        $("#content2").width(),
                        $("#content2").height()
                    );
                    pdf.save("azimuth-certificte.pdf");
                }
            );
        });





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

        $("#confirm").click(function() {
            // return false;

            let giventime = $('#timeid').val();
            let londiya = $('#other').text();
            let qurta = $("#other").text($("#other").text().replace("minutes", ",")).text();
            let lungi = $("#other").text($("#other").text().replace("seconds", " ")).text();
            let x = lungi;
            let a = x.split(',');
            let b = parseFloat(a[0]);
            let c = parseFloat(a[1]);
            let mins = b *= 60;
            // let sec = c * 60;
            let total = mins += c;
            let takingtime = giventime *= 60;



            //alert();



            //alert(takingtime);
            // $('#otherVal').val(takingtime -= total);
            $('#otherVal').val(giventime -= total);


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
        (function($) {
            $.fn.countdown = function(milliseconds, callback) {
                var $el = this;
                var buffer = 200;
                var end, timer;

                // Defaults
                milliseconds = milliseconds || 5 * 60 * 1000; // 5 minutes
                end = new Date(Date.now() + milliseconds + buffer);

                // Start the counter
                tick();

                function formatTime(time) {
                    minutes = time.getMinutes();
                    seconds = time.getSeconds();
                    return minutes + " minutes " + seconds + " seconds";
                }

                function tick() {
                    var remaining = new Date(end - Date.now());

                    if (remaining > 0) {
                        $el.html(formatTime(remaining));
                        timer = setTimeout(tick, 1000);
                    } else {
                        clearInterval(timer);
                        if (callback) callback.apply($el);
                    }
                };
            };

            let timeid = $('#timeid').val();

            let submittime = timeid * 60 * 1000;

            // $('#timer').countdown(5 * 60 * 1000);
            $('#other').countdown(timeid * 60 * 1000, function() {
                this.html("Time's up!");
            });

            $('#time_count').countdown(timeid * 60 * 1000, function() {
                this.html("Time's up!");
            });



            $('#test').click(function(event) {
                event.preventDefault();


                // alert(takingtime);




            });

            // alert($('#other').text());







            setTimeout(function() {
                $('#msform').submit();
            }, submittime);

        })(jQuery);
    </script>
@endsection
