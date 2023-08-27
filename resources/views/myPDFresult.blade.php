    @inject('customfunct', 'App\Models\UserForm')
    @inject('bnNumber', 'Rakibhstu\Banglanumber\NumberToBangla')
    @inject('calculation', 'App\Models\Calculation')

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

            table {
                font-family: sans-serif;
                border: 1px solid rgb(2, 2, 2);
                border-collapse: collapse;
                width: 100%;
            }


            .cardish {
                border: 1px solid rgb(12, 12, 12);
                padding: 5px;
            }


            td {
                border: 1px solid rgb(12, 12, 12);
                vertical-align: middle;
            }

            th {
                border: 1px solid rgb(12, 12, 12);
                vertical-align: middle;
            }
        </style>


    </head>

    <body>
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
                            <h3 class="cardish"><span>Subject :
                                    {{ $customfunct->subjectName($subject->subjective_sub_id) }}</span>|
                                <span>Code : {{ $subject->quiz_code }} </span>|
                                <span>Type : {{ $subject->quiz_type }} </span>|
                                <span>Number : {{ $subject->quiz_number }} </span>|
                                <span>Time : {{ $subject->quiz_time }} Mins</span>
                            </h3>


                        </ul>
                    </div>
                    <div class="card-body p-5">
                        <div class="row mb-3">
                            <div class="col">

                                <table style="page-break-inside:avoid">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th scope="col">Position</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Id</th>
                                            <th scope="col">Marks</th>
                                            <th scope="col">Right</th>
                                            <th scope="col">Wrong</th>
                                            <th scope="col">Skipped</th>
                                            <th scope="col">Percentage</th>
                                            <th scope="col">Letter Grade</th>

                                        </tr>
                                    </thead>
                                    <tbody>

                                        @foreach ($users_get as $usersss_get)
                                            <tr>
                                                <th scope="row">{{ $loop->index + 1 }}</th>
                                                <td>{{ $customfunct->getUserName($usersss_get->answerd_by) }}</td>
                                                <td>{{ $usersss_get->answerd_by }}</td>
                                                <td>{{ $usersss_get->total_marks }}</td>
                                                <td>{{ $usersss_get->right_ans }}</td>
                                                <td>{{ $usersss_get->wrong_ans }}</td>
                                                <td>{{ $usersss_get->skipped_ans }}</td>
                                                <td>{{ ($usersss_get->total_marks * 100) / $subject->quiz_number }}
                                                </td>
                                                <td>{{ $calculation->getGrad($usersss_get->total_marks, $subject->quiz_number) }}
                                                </td>

                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>



                            </div>
                        </div>

                    </div>

                </div>



            </div>


        </div>


    </body>

    </html>
