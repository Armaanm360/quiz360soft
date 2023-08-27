@extends('admin.master')
@section('content')
    <style>
        .quiz-sec {
            margin-top: 8rem;
        }
    </style>
    @inject('customfunct', 'App\Models\UserForm')
    <section class="quiz-sec">
        <div class="card m-5">
            <div class="card-header">

                @if ($q_count == $tabinfo[0]->quiz_number)
                    <span class="display-3">You Have Completed All {{ $q_count }} Questions</span>
                @else
                    <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#exampleModal">
                        নতুন প্রশ্ন যোগ করুন
                    </button>
                @endif


                <!--<form action="{{ url('/create-subjective-question-post') }}" enctype="multipart/form-data" method="POST">-->
                <!--    @csrf-->
                <!--    <input type="hidden" name="subjective_quiz_id" value="{{ request()->route('id') }}">-->
                <!--    <input type="file" name="file" accept=".Xls">-->
                <!--    <button type="submit" value="submit">Upload</button>-->
                <!--</form>-->
            </div>


        </div>



        @foreach ($info as $info)
            <div class="card m-3">
                <div class="card-header text-center">
                    <h2>#{{ $loop->index + 1 }}</h2>
                    <span class="text-danger">Ques:</span> {{ $info->quiz_question }}
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"><span class="text-info">(a)</span>{{ $info->quiz_option_1 }}
                    </li>
                    <li class="list-group-item"><span class="text-info">(b)</span>{{ $info->quiz_option_2 }}
                    </li>
                    <li class="list-group-item"><span class="text-info">(c)</span>{{ $info->quiz_option_3 }}
                    </li>
                    <li class="list-group-item"><span class="text-info">(d)</span>{{ $info->quiz_option_4 }}
                    </li>
                    <li class="list-group-item"><span class="text-success">Right
                            Ans: </span>{{ $info->quiz_answer }}
                    </li>
                </ul>
                <div class="card-footer">
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nihil doloribus et aspernatur,
                    voluptatibus labore eum consequuntur tempore ut architecto sapiente alias soluta hic
                    natus, ratione reiciendis nulla amet fugit commodi.
                </div>
            </div>
        @endforeach

    </section>
    <!-- Button trigger modal -->


    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Question</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <form id="add_form">
                        @csrf
                        <div class="form-group">
                            <label for="exampleInputPassword1">প্রশ্ন</label>
                            <input type="text" class="form-control" name="quiz_question" id="question"
                                placeholder="প্রশ্ন">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">অপসন ১</label>
                            <input type="text" class="form-control" name="quiz_option_1" id="option_1"
                                placeholder="অপসন ১">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">অপসন ২</label>
                            <input type="text" class="form-control" name="quiz_option_2" id="option_2"
                                placeholder="অপসন ২">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">অপসন ৩</label>
                            <input type="text" class="form-control" name="quiz_option_3" id="option_3"
                                placeholder="অপসন ৩">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">অপসন ৪</label>
                            <input type="text" class="form-control" name="quiz_option_4" id="option_4"
                                placeholder="অপসন ৪">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">সঠিক উত্তর</label>
                            <input type="text" class="form-control" name="quiz_answer" id="right_answer"
                                placeholder="সঠিক উত্তর">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">বাখ্যা( ঐছিক )</label>
                            <textarea type="text" class="form-control" name="quiz_remarks" id="explain" placeholder="সংক্ষিপ্ত বর্ণনা"></textarea>
                        </div>

                        <input type="hidden" name="subjective_quiz_id" value="{{ request()->route('id') }}">




                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" id="submit" class="btn btn-outline-primary">প্রশ্ন
                        সংরক্ষন করুন </button>

                    </form>
                </div>



            </div>
        </div>
    </div>


    <script type="text/javascript">
        // function myOldFunc() {
        //     var option_1 = document.getElementById("option_1");
        //     var option_2 = document.getElementById("option_2");
        //     var option_3 = document.getElementById("option_3");
        //     var option_4 = document.getElementById("option_4");
        //     const fruits = [];
        //     fruits.push(option_1, option_2, option_3, option_4);
        //     // console.log(fruits);

        //     const toFindDuplicates = fruits => fruits.filter((item, index) => arr.indexOf(item) !== index)
        //     const duplicateElementa = tofindDuplicates(fruits);
        //     console.log(duplicateElements);


        //     // var a = [1, 2, 3, 2]
        //     // var repeat = false;
        //     // for (let i = 0; i <= a.length; i++) {
        //     //     for (let j = 1; i <= a.length; j++) {
        //     //         if (a[i] === a[j]) {
        //     //             repeat = true;
        //     //             break;
        //     //         }
        //     //     }
        //     //     if (repeat) {
        //     //         break;
        //     //     }
        //     // }

        // }




























        $("#add_form").submit(function(e) {
            e.preventDefault();
            $('#loader').show();
            $(".error_msg").html('');
            var data = new FormData($('#add_form')[0]);

            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                method: "POST",
                url: "{{ url('create-subjective-question-post') }}",
                data: data,
                cache: false,
                contentType: false,
                processData: false,
                success: function(data, textStatus, jqXHR) {
                    alert();

                }
            }).done(function() {
                $("#success_msg").html("Data Save Successfully");
                //window.location.href = "{{ url('create-subjective-question') }}";
                location.reload();
            }).fail(function(data, textStatus, jqXHR) {
                $('#loader').hide();
                var json_data = JSON.parse(data.responseText);
                $.each(json_data.errors, function(key, value) {
                    $("#" + key).after(
                        "<span class='error_msg' style='color: red;font-weigh: 600'>" + value +
                        "</span>");
                });
            });
        });
    </script>
    <script type="text/javascript">
        $(".view_modal").click(function() {
            var id = $(this).data("id");
            $.ajax({
                method: "GET",
                url: "institutions/" + id + "/edit",
                data: id,
                // cache: false,
                // contentType: false,
                // processData: false,
                success: function(data, textStatus, jqXHR) {
                    $("#modal_body").html(data);
                    $("#editModal").modal("show");

                }
            });
        });
        $(".edit_button").click(function() {
            //alert('sdfas');
            $(".error_msg").html('');
            $('#loader1').show();

            var data = new FormData($('#edit_form')[0]);

            var id = $('[name=id]').val();

            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                method: "POST",
                url: "institutions/" + id,
                data: data,
                cache: false,
                contentType: false,
                processData: false,
                success: function(data, textStatus, jqXHR) {

                }
            }).done(function() {
                $("#success_msg").html("Data Save Successfully");
                location.reload();
            }).fail(function(data, textStatus, jqXHR) {
                $('#loader1').hide();
                var json_data = JSON.parse(data.responseText);
                $.each(json_data.errors, function(key, value) {
                    $("#" + key).after(
                        "<span class='error_msg' style='color: red;font-weigh: 600'>" + value +
                        "</span>");
                });
            });
        });

        $(document).on('click', '.btn-delete', function() {
            var id = $(this).attr('data-id');
            if (confirm('Are you sure?', true)) {
                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: 'Delete',
                    url: "institutions/" + id,
                    data: {
                        id: id
                    },
                    dataType: 'json',
                    beforeSend: function() {},
                    success: function(data) {
                        alert('Hi');
                        notifiAlert('Alert!', 'Department deleted successfully');
                        return false;
                    }
                });
                //                  alert('Hi');
                $(this).parent().parent().remove();
                notifiAlert('Alert!', 'Department deleted successfully');
                return false;
            } else {
                return false;
            }
        });
    </script>
@endsection
