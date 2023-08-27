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

            .fail {
                color: rgb(175, 21, 34);
            }

            .result {
                color: rgb(37, 192, 97);
            }

            .grad {
                color: rgb(0, 150, 50);
            }



            .cardish {
                border: 1px solid rgb(12, 12, 12);
                padding: 5px;
            }


            td {
                border: 1px solid rgb(12, 12, 12);
                vertical-align: middle;
                padding: 15px;
            }

            th {
                border: 1px solid rgb(12, 12, 12);
                vertical-align: middle;
                padding: 10px;
            }

            .card-footer {
                border: 1px solid rgb(12, 12, 12);
            }

            .fail {
                margin-left: 50px;
            }

            .first-part {
                margin: 10px;
            }
        </style>


    </head>

    <body>
        <div class="container">
            <div class="answers-section mt-5">
                <div class="card">
                    <div class="card-header">
                        <h2 class="text-dark text-center">Result Of <span
                                class="text-info">{{ $subject->subjective_quiz_name }}</span>
                        </h2>

                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <th scope="row"><strong>Student's Name :</strong>
                                        {{ $customfunct->getUserName($users_get[0]->answerd_by) }}</th>
                                    <td><strong>Student Type :</strong>
                                        Regualr</td>


                                </tr>
                                <tr>
                                    <td><strong>Student's ID :</strong>
                                        {{ Auth::user()->id }}</td>
                                    <td><strong>Academic Year :</strong>
                                        2022</td>
                                </tr>
                                <tr>
                                    <td><strong>Student's Stram :</strong>
                                        Framework</td>
                                    <td><strong>Combination :</strong>
                                        PCMB</td>
                                </tr>
                                <tr>
                                    <td><strong>Subject :</strong>
                                        {{ $customfunct->subjectName($subject->subjective_sub_id) }}</td>
                                    <td><strong>language One :</strong>
                                        Bangla</td>
                                </tr>
                            </tbody>
                        </table>

                    </div>
                    <div class="card-body p-5">
                        <div class="row mb-3">
                            <div class="col">





                                <table class="table meow table-responsive">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th scope="col">SN</th>
                                            <th scope="col">Subjects</th>
                                            <th scope="col">Quiz Name</th>
                                            <th scope="col">Time</th>
                                            <th scope="col">Marks</th>
                                            <th scope="col">Code</th>
                                            <th scope="col">Maximum Marks</th>
                                            <th scope="col">Obtained Marks</th>
                                            <th scope="col">Right Answer</th>
                                            <th scope="col">Wrong Answer</th>
                                            <th scope="col">Skipped Answer</th>
                                            <th scope="col">Letter Grade</th>
                                            <th scope="col">Position</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">1</th>
                                            <td class="res">
                                                {{ $customfunct->subjectName($subject->subjective_sub_id) }}
                                            </td>
                                            <td class="res">{{ $subject->subjective_quiz_name }}
                                            </td>
                                            <td class="res">{{ $subject->quiz_time }} min
                                            </td>
                                            <td class="res">{{ $subject->quiz_number }}
                                            </td>
                                            <td class="res">{{ $subject->quiz_code }}
                                            </td>
                                            <td class="res">{{ $max }}</td>
                                            <td class="res">{{ $users_get[0]->total_marks }}</td>
                                            <td class="res">{{ $users_get[0]->right_ans }}</td>
                                            <td class="res">{{ $users_get[0]->wrong_ans }}</td>
                                            <td class="res">{{ $users_get[0]->skipped_ans }}</td>
                                            <td class="res">
                                                {{ $calculation->getGrad($users_get[0]->total_marks, $subject->quiz_number) }}
                                            </td>
                                            <td class="res">
                                                @if ($get_position == 0)
                                                    <span>1</span>
                                                @else
                                                    {{ $get_position }}
                                                @endif
                                            </td>


                                        </tr>

                                    </tbody>
                                </table>




                            </div>
                        </div>

                    </div>

                </div>

                <div class="card-footer">
                    <div class="first-part">
                        <h4 class="text-info">
                            percentage : <span class="text-success"><span
                                    class="grad">{{ ($users_get[0]->total_marks * 100) / $subject->quiz_number }}</span>

                                {{-- @if (($users_get[0]->total_marks * 100) / $subject->quiz_number < 33)
                                    <span class="fail">Failed</span>
                                @else
                                    <span class="result">Passed</span>
                                @endif --}}
                        </h4>
                    </div>


                </div>

            </div>


        </div>


    </body>

    </html>
