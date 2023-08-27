@extends('admin.master')
@section('content')
    @inject('customfunct', 'App\Models\UserForm')
    <style>
        .subjectquiz {
            margin-top: 5rem;
        }
    </style>

    <head>

        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.39.0/css/tempusdominus-bootstrap-4.min.css"
            crossorigin="anonymous" />
    </head>
    <div class="container">
        <section class="subjectquiz">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card p-3">
                        <h2>Enrolled Model Test - <span class="text-danger">{{ $fullinfo[0]->model_test_name }}</span></h2>
                    </div>

                    <div class="card">
                        <div class="progress">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50"
                                aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </div>
                    <div class="card p-3">
                        <div class="row">
                            @foreach ($fullinfo as $fullinfo)
                                <div class="col-sm-4">
                                    <div class="card text-white bg-info mb-3" style="max-width: 18rem;">
                                        <div class="card-header"><strong>{{ $fullinfo->subjective_quiz_name }}</strong>
                                        </div>
                                        <div class="card-body">
                                            <h5 class="card-title">Info card title</h5>
                                            <p class="card-text">Some quick example text to build on the card title and make
                                                up the bulk of the card's content.</p>
                                        </div>
                                        <div class="card-footer">
                                            <a class="btn btn-outline-dark"
                                                href="{{ url('exams/quizes/' . $fullinfo->model_sub_id) }}">Start
                                                Test</a>
                                        </div>

                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                    <div class="card p-3">
                        <h2>Result Will Be Published On - <span class="text-danger"> 12th October,2022 at 9.00 am</span>
                        </h2>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!-- Button trigger modal -->


    <!-- Modal -->

    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.39.0/js/tempusdominus-bootstrap-4.min.js"
        crossorigin="anonymous"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#basic-datatable').DataTable({});
            $('#quiz_name').keyup(function(e) {
                e.preventDefault();

                let textinput = $('#quiz_name').val().substring(0, 8);
                var qui_code = Math.floor(10000 + Math.random() * 9000)
                $('#quiz_code').val(qui_code);

            });
        });
    </script>
@endsection
