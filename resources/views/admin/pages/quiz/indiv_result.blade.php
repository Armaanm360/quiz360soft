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

        thead.thead-dark {
            background: black;
            color: #fff;
        }

        .meow {
            border: 1px solid #000;
        }

        .res {
            border: 1px solid #000;
        }

        .card-footer {
            padding: 0.5rem 1rem;
            margin-bottom: 0;
            background-color: rgba(0, 0, 0, .03);
            border: 1px solid rgba(0, 0, 0, .125);

        }

        table.table.table-bordered {
            background: #fff;
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
                                    {{ $customfunct->getUserName(Auth::user()->id) }}</th>
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

                            {{-- <table class="table">
                                <thead class="thead-dark">
                                    <tr>
                                        <th scope="col">Position</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Id</th>
                                        <th scope="col">Marks</th>
                                        <th scope="col">Grade</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    @foreach ($users_get as $usersss_get)
                                        <tr>
                                            <th scope="row">2</th>
                                            <td>{{ $customfunct->getUserName($usersss_get->answerd_by) }}</td>
                                            <td>{{ $usersss_get->answerd_by }}</td>
                                            <td>{{ $usersss_get->total_marks }}</td>
                                            <td>
                                                @if ($usersss_get->total_marks < 3)
                                                    <span class="text-danger">Fail</span>
                                                @elseif ($usersss_get->total_marks >= 3)
                                                    <span>D</span>
                                                @elseif ($usersss_get->total_marks >= 8)
                                                    <span>B</span>
                                                @elseif ($usersss_get->total_marks >= 12)
                                                    <span>A</span>
                                                @elseif ($usersss_get->total_marks >= 16)
                                                    <span>A+</span>
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table> --}}



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
                                        <th scope="col">Position</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td class="res">{{ $customfunct->subjectName($subject->subjective_sub_id) }}
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

                <div class="d-flex justify-content-between">
                    <h4 class="text-info">
                        percentage : <span class="text-success">80.93</span>
                    </h4>
                    <h4>
                        Result: <span class="text-success">Passed</span>
                    </h4>

                </div>
            </div>

        </div>


    </div>



    <script src="{{ asset('public/admin_asset') }}/js/core/bootstrap.min.js"></script>
</body>

</html>
