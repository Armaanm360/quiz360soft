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
                        <h2> Subject Wise Quiz</h2>
                    </div>
                    <div class="card p-3">
                        <div class="row">
                            @foreach ($subject as $subject)
                                <div class="col-sm-4">
                                    <div class="card  text-center">
                                        <div class="card-header text-info font-weight-bold">
                                            <h2>{{ $subject->college_subject_name }}</h2>
                                        </div>
                                        <div class="card-body">
                                            <ul class="list-group">
                                                <li
                                                    class="list-group-item d-flex justify-content-between align-items-center">
                                                    <i class="fas fa-book-open mr-2"></i> <span class="top-text">Topics
                                                        Covered</span>
                                                    <span
                                                        class="badge badge-primary badge-pill">{{ $customfunct->getTopics($subject->college_sub_id) }}</span>
                                                </li>
                                                <li
                                                    class="list-group-item d-flex justify-content-between align-items-center">
                                                    <i class="fa-solid fa-square-pen mr-2"></i><span
                                                        class="top-text">Quizes</span>
                                                    <span
                                                        class="badge badge-primary badge-pill">{{ $customfunct->getTopics($subject->college_sub_id) }}</span>
                                                </li>
                                                <li
                                                    class="list-group-item d-flex justify-content-between align-items-center">
                                                    <i class="fa-solid fa-clipboard-question mr-2"></i><span
                                                        class="top-text">Total Questions</span>
                                                    <span
                                                        class="badge badge-primary badge-pill">{{ $customfunct->getTotalQuestion($subject->college_sub_id) }}</span>
                                                </li>
                                                <li
                                                    class="list-group-item d-flex justify-content-between align-items-center">
                                                    <i class="fa-solid fa-graduation-cap mr-2"></i></i><span
                                                        class="top-text">Enrolled Students</span>
                                                    <span class="badge badge-primary badge-pill">2</span>
                                                </li>


                                            </ul>
                                        </div>
                                        <div class="card-footer"><a class="btn btn-info"
                                                href="{{ url('exams/quizes/' . $subject->college_sub_id) }}">See
                                                Quizes</a></div>
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
