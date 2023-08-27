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
                    <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#exampleModal">
                        Create New Model Test
                    </button>
                </div>
                <div class="card-body">
                    <table class="table table-responsive">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Model Test Name</th>
                                <th scope="col">Model Test Division</th>
                                <th scope="col">Pass Percentage</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($modeltest as $subject)
                                <tr>
                                    <th scope="row">{{ $loop->index + 1 }}</th>
                                    <td><span class="text-info"
                                            style="font-family:hindis_bold">{{ $subject->model_test_name }}</span></td>
                                    <td class="text-dark">
                                        {{ $customfunct->getDivisionNameCollege($subject->model_test_division) }}</td>
                                    <td><span class="text-danger">{{ $subject->pass_percen }}</span></td>
                                    <td><a class="btn btn-outline-info">Edit</a>
                                        <a class="btn btn-outline-warning">Delete</a>
                                        <a class="btn btn-outline-warning" href="{{ url('/' . $subject->id) }}">Create
                                            Quiz</a>
                                    </td>
                                </tr>
                            @endforeach

                        </tbody>
                    </table>
                </div>

            </div>
        </section>
    </div>
    <!-- Button trigger modal -->


    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Create Model Test</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <form id="add_form">
                        @csrf
                        <div class="form-group">
                            <label for="exampleInputPassword1">Model Test Name</label>
                            <input type="text" class="form-control" name="model_test_name" id="exampleInputPassword1"
                                placeholder="test name">
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Select Division</label>

                            <select class="form-control" id="selected_division" name="college_subject_div"
                                style="width: 100%">
                                <option disabled selected>Select Division
                                </option>
                                @foreach ($division as $division)
                                    <option value="{{ $division->college_div_id }}">{{ $division->college_division }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Select Subjects</label>
                            <br>
                            <select class="form-control select2" id="selectdivget" name="selectdivget[]" multiple
                                style="width:100%">

                            </select>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Pass Percentage</label>
                            <input type="text" class="form-control" name="pass_per" id="exampleInputPassword1"
                                placeholder="Pass Percentage">
                        </div>




                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-outline-primary">Save</button>

                    </form>
                </div>



            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.8/js/select2.min.js"></script>
    <script type="text/javascript">
        $("#selectdivget").select2({
            placeholder: "Select a programming language",
            allowClear: true
        });




        $(document).ready(function() {
            $('#basic-datatable').DataTable({});
        });


        $("#add_form").submit(function(e) {
            e.preventDefault();
            $('#loader').show();
            $(".error_msg").html('');
            var data = new FormData($('#add_form')[0]);
            // var data = $('#add_form').serializeArray();
            //console.log(data);


            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                method: "POST",
                url: "{{ url('modeltest-post') }}",
                data: data,
                cache: false,
                contentType: false,
                processData: false,
                success: function(data, textStatus, jqXHR) {
                    alert(data);
                }
            }).done(function() {
                // $("#success_msg").html("Data Save Successfully");
                // window.location.href = "{{ url('subject') }}";
                // location.reload();
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




        $('#selected_division').on('change', function(event) {
            event.preventDefault();

            let selected_div_id = $('#selected_division').find(":selected").val();

            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                method: "POST",
                url: "{{ url('selected-div-wise-subject') }}",
                data: {
                    'div_id': selected_div_id
                },
                success: function(data, textStatus, jqXHR) {
                    $('#selectdivget').html(data);
                    //alert(data);
                }
            }).done(function(data) {
                $("#success_msg").html("Data Save Successfully");
                $("#success_msg").show();
                $('#sub_form_unique_id').html(data);
                $("#loader").hide();
                //            setInterval(function () {
                //                window.location.href = "{{ url('permissions') }}";
                //            }, 2000);
                // location.reload();
            }).fail(function(data, textStatus, jqXHR) {
                $("#loader").hide();
                var json_data = JSON.parse(data.responseText);
                $.each(json_data.errors, function(key, value) {
                    //                console.log(key);
                    $("#" + key).after(
                        "<span class='error_msg' style='color: red;font-weigh: 600'>" + value +
                        "</span>");
                });
            });








        });
    </script>
@endsection
