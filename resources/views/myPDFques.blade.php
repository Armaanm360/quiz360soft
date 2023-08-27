@inject('usessrname', 'App\Models\UserForm')
@inject('bnNumber', 'Rakibhstu\Banglanumber\NumberToBangla')

<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>{{ __('Php') }}</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

    <!-- Styles -->
    <style>
        body {
            font-size: 10pt;
        }

        .box {
            height: 50px;
            width: 200px;
            float: lef;
            border: 1px solid #0000;
            padding: 50px;
        }

        .box2 {
            margin: auto;
            margin-top: 0px !important;
            width: 50%;
            padding: 10px;

        }

        .date {
            float: right;
        }

        .text-meow {
            float: right;
            margin: 0pt 0pt 0pt 5pt
        }

        .text-danger {
            float: right;
            margin: 0pt 10pt 0pt 5pt,
                width:50%;
        }
    </style>


</head>

<body>
    <div>

        <span class="date">{{ date('Y/m/d') }}</span>
        {{-- <div class="box">

            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi ratione sunt, itaque dolores unde nulla
                harum nisi error consectetur numquam recusandae delectus quas velit expedita fugiat eos aliquid,
                repellat commodi!</p>
        </div> --}}
        <div class="box2">

            <h2>বহুনির্বাচনী অভীক্ষা</h2>
            <span>{{ $division }}</span>
            <br>
            <br>
            <span>{{ $subject_name }}</span>
            <br>
            <br>
            <span>Topic : {{ $quiz_name }}</span>
            <br>
            <br>
            <span>Quiz Code : {{ $code }}</span>
            <br>
            <br>
            <span>Time: 50 miniutes</span>
            <br>
            <br>
            <span>Full Marks : {{ $marks }}</span>


        </div>
    </div>
    <hr>
    <div>
        @foreach ($answers as $answers)
            @php
                $first = 'ans_';
                $semon = $loop->index + 1;
                $second = $first . $semon;
            @endphp
            <div class="card mb-3">
                <div class="card-header">
                    <strong class="text-dark font-weight-bold">{{ $bnNumber->bnNum($loop->index + 1) }}.
                    </strong>{{ $answers->quiz_question }}
                </div>
                <div class="card-body">
                    <ul style="list-style-none">
                        <strong>(ক) </strong>{{ $answers->quiz_option_1 }}
                        <br>
                        <strong>(খ) </strong>{{ $answers->quiz_option_2 }}
                        <br>
                        <strong>(গ) </strong>{{ $answers->quiz_option_3 }}
                        <br>
                        <strong>(ঘ) </strong>{{ $answers->quiz_option_4 }}
                    </ul>
                </div>

                {{-- <div class="card-footer ">
                    <div class="d-flex justify-content-between">
                        <strong class="text-danger">Your Answer :</strong>
                        <span class="text-success">{{ $luts->$second }}
                            </spans>
                            <br>
                            <strong class="text-meow">Correct Answer : </strong><span
                                class="text-success">{{ $answers->quiz_answer }}</span>
                            <br>
                            <p> <strong>Explanation:</strong> {{ $answers->quiz_remarks }}</p>
                    </div>






                </div>
            </div>
            <hr> --}}
        @endforeach
    </div>


</body>

</html>
