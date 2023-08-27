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
                        <h2>Enrolled Model Test</h2>
                    </div>
                    <div class="card p-3">
                        <div class="row">
                            @foreach ($modeltest as $modeltest)
                                <div class="col-sm-4">
                                    <div class="card text-white bg-dark mb-3" style="max-width: 18rem;">
                                        <div class="card-header"><strong>{{ $modeltest->model_test_name }}</strong></div>
                                        <div class="card-body">
                                            <h5 class="card-title">Info card title</h5>

                                      {{-- @foreach ($modeltest)
                                          
                                      @endforeach --}}


                                            <div class="progress">
                                                <div class="progress-bar" style="width:70%"></div>
                                            </div>
                                        </div>
                                        <div class="card-footer">
                                            <a class="btn btn-outline-dark"
                                                href="{{ url('student-modeltest-id/' . $modeltest->id) }}">Start
                                                Test</a>
                                        </div>

                                    </div>
                                </div>
                            @endforeach
                        </div>
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
