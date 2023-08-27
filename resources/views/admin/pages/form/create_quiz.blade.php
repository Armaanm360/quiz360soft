<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quizo HTML Template - V.5</title>
    <!-- FontAwesome-cdn include -->
    <link rel="stylesheet" href="{{ asset('public') }}/assets/css/all.min.css">
    <!-- Google fonts include -->
    <link
        href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700;800&family=Sen:wght@400;700;800&display=swap"
        rel="stylesheet">
    <!-- Bootstrap-css include -->
    <link rel="stylesheet" href="{{ asset('public') }}/assets/css/bootstrap.min.css">
    <!-- Animate-css include -->
    <link rel="stylesheet" href="{{ asset('public') }}/assets/css/animate.min.css">
    <!-- Main-StyleSheet include -->
    <style>

    </style>

<body>

    <div class="container-fluid">
        <div class="row">
            <div class="card">
                <div class="card-header">
                    <h5 class="float-right">Question</h5>
                    <button type="button" class="btn btn-primary float-right" data-toggle="modal"
                        data-target="#exampleModalCenter">
                        Create A New Quiz
                    </button>
                </div>
                <div class="card-body">
                    <table class="table table-dark">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Question</th>
                                <th scope="col">oprion 1</th>
                                <th scope="col">oprion 2</th>
                                <th scope="col">oprion 3</th>
                                <th scope="col">oprion 4</th>
                                <th scope="col">Correct Answer</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>

                            @foreach ($quiz as $quiz)
                                <tr>
                                    <th scope="row">{{ $loop->index + 1 }}</th>
                                    <td>{{ $quiz->question }}</td>
                                    <td>{{ $quiz->option_1 }}</td>
                                    <td>{{ $quiz->option_2 }}</td>
                                    <td>{{ $quiz->option_3 }}</td>
                                    <td>{{ $quiz->option_4 }}</td>
                                    <td>{{ $quiz->answer }}</td>
                                    <td><button class="btn btn-warning">Delete</button></td>

                                </tr>
                            @endforeach

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>



    <!-- Button trigger modal -->


    <!-- Modal -->
    <!-- Button trigger modal -->


    <!-- Modal -->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalCenterTitle">Create A New Quiz</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form method="POST" id="createFormId">
                        @csrf

                        <div class="col-auto">
                            <label class="sr-only text-info" for="inlineFormInputGroup">Question</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text text-info">Question</div>
                                </div>
                                <input type="text" class="form-control" id="inlineFormInputGroup"
                                    placeholder="Question" name="question">
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only" for="inlineFormInputGroup">Option 1</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">Option 1</div>
                                </div>
                                <input type="text" class="form-control" id="inlineFormInputGroup"
                                    placeholder="Option 1" name="option_1">
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only" for="inlineFormInputGroup">Option 2</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">Option 2</div>
                                </div>
                                <input type="text" class="form-control" id="inlineFormInputGroup"
                                    placeholder="Option 2" name="option_2">
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only" for="inlineFormInputGroup">Option 3</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">Option 3</div>
                                </div>
                                <input type="text" class="form-control" id="inlineFormInputGroup"
                                    placeholder="Option 3" name="option_3">
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only" for="inlineFormInputGroup">Option 4</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">Option 4</div>
                                </div>
                                <input type="text" class="form-control" id="inlineFormInputGroup"
                                    placeholder="Option 4" name="option_4">
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only text-danger" for="inlineFormInputGroup">Correct Answer</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text text-danger">Correct Answer</div>
                                </div>
                                <input type="text" class="form-control" id="inlineFormInputGroup"
                                    placeholder="Correct Answer" name="answer">
                            </div>
                        </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>

                </form>
            </div>
        </div>
    </div>
</body>

<!-- jQuery-js include -->
<script src="{{ asset('public') }}/assets/js/jquery-3.6.0.min.js"></script>
{{-- <!-- jquery-count-down include -->
<script src="{{ asset('public') }}/assets/js/countdown.js"></script> --}}


<script src="{{ asset('public/admin_asset') }}/js/core/popper.min.js"></script>
<script src="{{ asset('public/admin_asset') }}/js/core/bootstrap.min.js"></script>
{{-- <!-- jQuery-validate-js include -->
    <script src="{{ asset('public') }}/assets/js/jquery.validate.min.js"></script>
    <!-- Custom-js include -->
    <script src="{{ asset('public') }}/assets/js/script.js"></script> --}}
<!-- <script type="text/javascript">
    $('#getting-started').countdown('2020/07/25', function(event) {
        $(this).html(event.strftime('%w weeks %d days %H:%M:%S'));
    });
</script> -->
</body>
<script type="text/javascript">
    $(document).ready(function() {

        $("#createFormId").submit(function(e) {
            e.preventDefault();

            var data = new FormData($('#createFormId')[0]);
            //alert(data);
            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                method: "post",
                url: "{{ url('create-new-quiz') }}",
                data: data,
                contentType: false,
                cache: false,
                processData: false,
                success: function(data, textStatus, jqXHR) {
                    console.log(data);
                }
            }).done(function(data) {
                $("#success_msg").html("Data Save Successfully");
                $('#exampleModalCenter').modal('toggle');
                $('#createFormId')[0].reset();

                //            console.log(data);
                // window.location.href = "{{ url('form') }}/" + data;
                // location.reload();
            }).fail(function(data, textStatus, jqXHR) {
                $("#loader").hide();
                var json_data = JSON.parse(data.responseText);
                $.each(json_data.errors, function(key, value) {
                    $("#" + key).after(
                        "<span class='error_msg' style='color: red;font-weigh: 600'>" +
                        value + "</span>");
                    $("#" + key).addClass("error");
                });
            });
        });

    });
</script>

</html>
