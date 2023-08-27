@extends('admin.master')
@section('content')
    @inject('customfunct', 'App\Models\UserForm')
    <style>
        .newsec {
            margin-top: 5rem;
        }
    </style>
    <div class="contatiner-fluid">
        <section class="newsec">
            <div class="card m-5">
                <div class="card-header">
                    <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#subjectmodal">
                        নতুন বিষয় যোগ করুন
                    </button>
                </div>
                <div class="card-body">
                    <table class="table table-responsive" id="datatable_first">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">বিষয়ের নাম</th>
                                <th scope="col">সংশ্লিষ্ট বিভাগ</th>
                                <th scope="col">বিষয় কোড</th>
                                <th scope="col">সংক্ষিপ্ত বর্ণনা</th>
                                <th scope="col">অ্যাকশন</th>
                            </tr>
                        </thead>
                        <tbody>
                            {{-- @foreach ($subject as $subject)
                                <tr>
                                    <th scope="row">{{ $loop->index + 1 }}</th>
                                    <td><span class="text-info"
                                            style="font-family:hindis_bold">{{ $subject->college_subject_name }}</span></td>
                                    <td class="text-dark">
                                        {{ $customfunct->getDivisionNameCollege($subject->college_subject_div) }}</td>
                                    <td><span class="text-danger">{{ $subject->college_subject_code }}</span></td>
                                    <td>{{ $subject->college_subject_desc }}</td>
                                    <td><a class="btn btn-outline-info">Edit</a>
                                        <a class="btn btn-outline-warning">Delete</a>
                                        <a class="btn btn-outline-warning"
                                            href="{{ url('create-subjective-quiz/' . $subject->college_sub_id) }}">Create
                                            Quiz</a>
                                    </td>
                                </tr>
                            @endforeach --}}

                        </tbody>
                    </table>
                </div>

            </div>
        </section>
    </div>
    <!-- Button trigger modal -->


    <!-- Modal -->
    <div class="modal fade" id="subjectmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">নতুন বিষয়</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <form id="add_form">
                        @csrf
                        <div class="form-group">
                            <label for="exampleFormControlSelect1">বিভাগ নির্বাচন করুন</label>
                            <select class="form-control" id="exampleFormControlSelect1" name="college_subject_div">
                                @foreach ($division as $division)
                                    <option value="{{ $division->college_div_id }}">{{ $division->college_division }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">বিষয় এর নাম</label>
                            <input type="text" class="form-control" name="college_subject_name" id="college_subject_name"
                                placeholder="বিষয়">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">বিষয় কোড</label>
                            <input type="text" class="form-control" name="college_subject_code"
                                id="exampleInputPassword1" placeholder="বিষয় কোড">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">বিষয় এর সংক্ষিপ্ত বর্ণনা ( ঐছিক )</label>
                            <textarea type="text" class="form-control" name="college_subject_desc" id="exampleInputPassword1"
                                placeholder="সংক্ষিপ্ত বর্ণনা"></textarea>
                        </div>




                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-outline-primary">বিষয় সংরক্ষন করুন </button>

                    </form>
                </div>



            </div>
        </div>
    </div>

    <div class="cssload-preloader">
        <div class="cssload-preloader-box">
            <div>Q</div>
            <div>u</div>
            <div>i</div>
            <div>z</div>
            <div>3</div>
            <div>6</div>
            <div>0</div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#basic-datatable').DataTable({});
        });

        $('.cssload-preloader').hide();

        let datatab = $(document).ready(function() {
            $('#datatable_first').dataTable({
                ajax: '{{ url('subject-data') }}',
                processing: true,
                serverSide: false,
                columns: [{
                        data: 'DT_RowIndex',
                        orderable: false,
                        searchable: false
                    },
                    {
                        data: 'college_subject_name'
                    },
                    {
                        data: 'college_division',
                    },
                    {
                        data: 'college_subject_desc',
                    },
                    {
                        data: 'college_subject_code',
                    },
                    {
                        data: 'namelink',
                        name: 'namelink',
                        orderable: false,
                        searchable: false
                    },
                    // {
                    //     data: 'college_sub_id',
                    //     title: 'college_sub_id',
                    //     render: function(data) {
                    //         data = '<a href="/create-subjective-quiz/' + data + '">' + data +
                    //             '</a>';
                    //         return data;

                    //     }
                    // },
                ],
            });
        });
        // jQuery.validator.addMethod("noSpace", function(value, element) {
        //     return value.indexOf(" ") < 0 && value != "";
        // }, "No space please and don't leave it empty");

        $('form[id="add_form"]').validate({
            rules: {
                // college_subject_name: 'required',
                college_subject_code: {
                    required: true,
                    maxlength: 7,
                    number: true
                },
                college_subject_name: {
                    required: true,
                    minlength: 1,

                },
                psword: {
                    required: true,
                    minlength: 8,
                }
            },
            messages: {
                college_subject_name: 'Subject Name is required',
                college_subject_code: {
                    required: 'Subject Code is Required',
                    number: 'Subject Code Must Be In Number',
                    maxlength: 'Subject Code Must Not be over 7 digit'
                }
            },
            submitHandler: function(form) {
                $("#add_form").submit(function(e) {
                    e.preventDefault();
                    $('.cssload-preloader').show();

                    let college_subject_name = $('#college_subject_name').val();
                    let college_subject_code = $('#college_subject_code').val();
                    $('.error').remove();
                    $('#loader').show();
                    $(".error_msg").html('');
                    var data = new FormData($('#add_form')[0]);

                    $.ajax({
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        method: "POST",
                        url: "{{ url('subject-post') }}",
                        data: data,
                        cache: false,
                        contentType: false,
                        processData: false,
                        success: function(data, textStatus, jqXHR) {
                            swal("Done!", "Subject Has Been Created!", "success");
                            $('.cssload-preloader').hide();
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
