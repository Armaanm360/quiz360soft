@inject('customfunct', 'App\Models\UserForm')
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

        .info {
            margin-right: 10px;
            font-weight: bolder;
        }
    </style>
</head>

<body>

    <div class="container">
        <div class="answers-section mt-5">
            <div class="card">
                <div class="card-header text-center">
                    <ul class="list-group">
                        <li class="list-group-item list-group-item-info">
                            <h2>{{ $quiz_name }}</h2>
                        </li>
                        <li class="list-group-item list-group-item-dark"><span class="info">Division-
                                {{ $division }}</span>
                        </li>
                        <li class="list-group-item list-group-item-dark"> <span class="info">Subject-
                                {{ $subject_name }}</span>
                        </li>

                        {{-- <li class="list-group-item list-group-item-dark"><span class="info">শিক্ষার্থীর নাম
                                :{{ Auth::user()->name }}</span><span class="info">শিক্ষার্থীর
                                রোল :{{ Auth::user()->id }}</span><span class="info">শিক্ষার্থীর আইডি
                                :{{ Auth::user()->user_id }}</span></li>
                        <li class="list-group-item list-group-item-dark"><span class="info">মোট প্রশ্ন :
                                {{ $marks }}</span><span class="info">পূর্ণমান
                                :{{ $marks }}</span><span class="info"> প্রাপ্ত নম্বর
                                :{{ $user_answers[0]->total_marks }}</span><span class="info"> সঠিক
                                উত্তর
                                :{{ $user_answers[0]->right_ans }}</span><span class="info">ভুল উত্তর
                                :{{ $user_answers[0]->wrong_ans }} <span class="info">স্কিপেড উত্তর :
                                    {{ $user_answers[0]->skipped_ans }}</span>
                            </span></li> --}}
                    </ul>
                </div>
                <div class="card-body p-5">
                    <div class="row mb-3">
                        <div class="col">


                            @foreach ($answers as $answers)
                                @php
                                    $first = 'ans_';
                                    $semon = $loop->index + 1;
                                    $second = $first . $semon;
                                @endphp
                                <div class="card mb-3">
                                    {{-- <div class="card-header">
                                        <strong
                                            class="text-dark font-weight-bold">{{ $bnNumber->bnNum($loop->index + 1) }}.
                                        </strong>{{ $answers->quiz_question }}
                                    </div> --}}
                                    <div class="card-header">
                                        <strong class="text-dark font-weight-bold">{{ $loop->index + 1 }}.
                                        </strong>{{ $answers->quiz_question }}
                                    </div>
                                    <div class="card-body">
                                        <ol style="list-style: none">
                                            <li><strong>(a) </strong>{{ $answers->quiz_option_1 }}</li>
                                            <li><strong>(b) </strong>{{ $answers->quiz_option_2 }}</li>
                                            <li><strong>(c) </strong>{{ $answers->quiz_option_3 }}</li>
                                            <li><strong>(d) </strong>{{ $answers->quiz_option_4 }}</li>
                                        </ol>
                                    </div>

                                    <div class="card-footer ">
                                        <div class="d-flex justify-content-between">
                                            @if ($luts->$second == $answers->quiz_answer)
                                                <h5 class="text-danger" style="font-size:15px"> Your Answer : <strong
                                                        class="text-success">
                                                        {{ $luts->$second }}
                                                    </strong>
                                                </h5>
                                            @else
                                                <h5 class="text-danger" style="font-size:15px">Your Answer : <strong
                                                        class="text-danger">
                                                        {{ $luts->$second }}
                                                    </strong>
                                                </h5>
                                            @endif

                                            <h5 class="text-danger" style="font-size:15px">Correct Answer : <strong
                                                    class="text-success">{{ $answers->quiz_answer }}</strong>
                                            </h5>
                                        </div>






                                    </div>
                                </div>
                            @endforeach

                        </div>
                    </div>

                </div>

            </div>

            {{-- <div class="card-footer">
                <a class="btn btn-outline-danger" href="{{ url('generate-pdf/' . request()->route('id')) }}">Download
                    Answer</a>
                <a class="btn btn-outline-danger"
                    href="{{ url('generate-pdf-question/' . request()->route('id')) }}">Download
                    Question</a>

            </div> --}}

        </div>


    </div>



    <script src="{{ asset('public/admin_asset') }}/js/core/bootstrap.min.js"></script>
</body>

</html>
