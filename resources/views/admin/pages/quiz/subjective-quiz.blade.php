@extends('admin.master')
@section('content')
    @inject('customfunct', 'App\Models\UserForm')
    <style>
        .subjectquiz {
            margin-top: 5rem;
        }

        .form-check [type="checkbox"]:checked,
        .form-check [type="checkbox"]:not(:checked) {
            position: relative;
            left: 20px;
            top: 5px;
        }
    </style>

    <head>

        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.39.0/css/tempusdominus-bootstrap-4.min.css"
            crossorigin="anonymous" />
    </head>
    <div class="container-fluid">
        <section class="subjectquiz">
            <div class="card m-5 p-5">
                <div class="row">
                    <div class="col-sm-12">
                        <h3>Division : <span
                                class="text-danger">{{ $customfunct->getDivisionNameCollege($sub_info[0]->college_subject_div) }}</span>
                        </h3>
                    </div>
                    <div class="col-sm-12">
                        <h3>Subject : <span class="text-danger">{{ $sub_info[0]->college_subject_name }}</span></h3>
                    </div>
                    <div class="col-sm-12">
                        <h3>Subject Code : <span class="text-danger">{{ $sub_info[0]->college_subject_code }}</span></h3>
                    </div>
                </div>

            </div>

            <div class="card  p-3">
                <div class="card-header mb-3">


                    <div class="d-flex justify-content-between">
                        <div class="p-2">Quiz List of {{ $sub_info[0]->college_subject_name }}</div>
                        <div class="p-2"><button type="button" class="btn btn-outline-danger" data-toggle="modal"
                                data-target="#subjectmodal">
                                Create New Quiz
                            </button></div>
                    </div>
                </div>


                <table id="datatable_first" class="table table-striped table-responsive">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Quiz Name</th>
                            <th scope="col">Number Of Question</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        {{-- @foreach ($info as $info)
                            <tr>
                                <th scope="row">{{ $loop->index + 1 }}</th>
                                <td>{{ $info->subjective_quiz_name }}</td>
                                <td>{{ $info->quiz_number }}</td>
                                <td>{{ $customfunct->quizCreator($info->quiz_creator_id) }}</td>
                                <td>{{ $info->quiz_code }}</td>
                                <td><a href="{{ url('create-subjective-question/' . $info->subjective_quiz_id) }}"
                                        class="btn btn-outline-primary">Create
                                        Questions</a></td>
                            </tr>
                        @endforeach --}}

                    </tbody>
                </table>
            </div>

            <div class="modal fade" id="subjectmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Creating Quiz</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            {{-- create-subjective-quiz-post --}}
                            <form id="add_form">
                                @csrf
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Quiz Name</label>
                                    <input type="text" class="form-control" id="quiz_name" aria-describedby="emailHelp"
                                        placeholder="Quiz Name" name="quiz_name">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Quiz Code</label>
                                    <input readonly type="text" class="form-control" id="quiz_code"
                                        aria-describedby="emailHelp" placeholder="Quiz Code" name="quiz_code">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">No Of Quiz</label>
                                    <input type="number" class="form-control" id="quiz_number" aria-describedby="emailHelp"
                                        placeholder="No Of Quiz" name="quiz_number">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Quiz Time</label>
                                    <input type="number" class="form-control" id="quiz_time" aria-describedby="emailHelp"
                                        placeholder="Quiz Time" name="quiz_time">
                                </div>
                                <div class="form-group">
                                    <label for="exampleFormControlSelect1">Quiz Ty</label>
                                    <select class="form-control" name="quiz_type" id="exampleFormControlSelect1">
                                        <option selected value="general">সাধারণ</option>
                                        {{-- <option value="negetive">নেগেটিভ মার্কিং</option> --}}
                                    </select>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label" for="defaultCheck1">
                                        Time Schedule -
                                    </label>
                                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1"
                                        onclick="myClickFunc()">
                                </div>
                                <div class="form-group" id="time_schedule" style="display:none">
                                    <label for="exampleFormControlSelect1">Quiz Schedule</label>
                                    <input type="datetime-local" class="form-control" id="birthdaytime"
                                        name="quiz_result_hour">
                                </div>

                                <input type="hidden" name="quiz_sub_name" value="{{ request()->route('id') }}">
                                <input type="hidden"
                                    value="{{ $customfunct->subjectNameSpecial(request()->route('id')) }}"
                                    name="table_name_prefix">
                        </div>
                        <div class="modal-footer">

                            <button type="submit" class="btn btn-outline-primary">Add</button>

                            </form>
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
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>

    {{-- <script type="text/javascript">
        $(document).ready(function() {
            $('#basic-datatable').DataTable({});
        });
    </script> --}}
    <script type="text/javascript">
        $('form[id="add_form"]').validate({
            rules: {
                // college_subject_name: 'required',
                quiz_name: {
                    required: true,
                },
                quiz_number: {
                    required: true,
                    minlength: 1,

                },
                quiz_time: {
                    required: true,
                },
                birthdaytime: {
                    required: true,
                }
            },
            messages: {
                quiz_name: 'Quiz Name is required',
                quiz_time: {
                    required: 'Quiz time is Required',
                    number: 'Time Must Be In Number',
                    maxlength: 'Time Must Not be over 2 digit'
                }
            },
            submitHandler: function(form) {
                $("#add_form").submit(function(e) {
                    e.preventDefault();

                    var data = new FormData($('#add_form')[0]);

                    $.ajax({
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        method: "POST",
                        url: "{{ url('create-subjective-quiz-post') }}",
                        data: data,
                        contentType: false,
                        processData: false,
                        success: function(data, textStatus, jqXHR) {
                            swal("Done!", "Quiz Item Has Been Created!", "success");
                            $('#subjectmodal').modal('hide');
                            $('#add_form')[0].reset();
                            $('#datatable_first').DataTable().ajax.reload();


                        }
                    }).done(function() {
                        $("#success_msg").html("Data Save Successfully");
                        //window.location.href = "{{ url('subject') }}";
                        // location.reload();
                    }).fail(function(data, textStatus, jqXHR) {
                        $('#loader').hide();
                        var json_data = JSON.parse(data.responseText);
                        $.each(json_data.errors, function(key, value) {
                            $("#" + key).after(
                                "<span class='error_msg' style='color: red;font-weigh: 600'>" +
                                value +
                                "</span>");
                        });
                    });
                });
            }
        });



        $('.cssload-preloader').hide();

        let datatab = $(document).ready(function() {
            $('#datatable_first').dataTable({
                ajax: '{{ url('quiz-data') }}',
                processing: true,
                serverSide: false,
                columns: [{
                        data: 'DT_RowIndex',
                        orderable: false,
                        searchable: false
                    },
                    {
                        data: 'subjective_quiz_name'
                    },
                    {
                        data: 'quiz_number',
                    },
                    {
                        data: 'namelink',
                        name: 'namelink',
                        orderable: false,
                        searchable: false
                    },
                ],
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#quiz_name').keyup(function(e) {
                e.preventDefault();

                let textinput = $('#quiz_name').val().substring(0, 8);
                var qui_code = Math.floor(10000 + Math.random() * 9000)
                $('#quiz_code').val(qui_code);

            });
        });

        function myClickFunc() {
            var checkBox = document.getElementById("defaultCheck1");
            var text = document.getElementById("time_schedule");
            if (checkBox.checked == true) {
                text.style.display = "block";
            } else {
                text.style.display = "none";
            }
        }
    </script>
@endsection
