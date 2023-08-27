@extends('admin.new-master')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-2"></div>
            <div class="col-8">
                <div class="card">
                    <form id="add_form">
                        @csrf
                        @method('PUT')
                        <input name="check_user_id" value="{{$check->check_user_id}}" type="hidden" id="check_user_id">
                        <div class="form-group">
                            <label for="exampleInputEmail1">User Number</label>
                            <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                                placeholder="01401033445" name="user_number" value="{{ $check->user_number }}">
                            <small id="emailHelp" class="form-text text-muted">Add This Number Before Registration</small>
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Select Subject</label>
                            <select class="form-control" id="exampleFormControlSelect1" name="sub_id">
                                {{-- <option disabled selected>Select Subject</option> --}}
                                @foreach ($subject as $subject)
                                    @if ($check->sub_id == $subject->subjective_quiz_id)
                                        <option value="{{ $subject->subjective_quiz_id }}" selected>
                                            {{ $subject->subjective_quiz_name }}
                                        </option>
                                    @else
                                        <option value="{{ $subject->subjective_quiz_id }}">
                                            {{ $subject->subjective_quiz_name }}
                                        </option>
                                    @endif
                                @endforeach
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button>
                    </form>
                </div>
            </div>
            <div class="col-2"></div>
        </div>
    </div>
    <div class="pac-man"></div>
    <script type="text/javascript">
        $('.pac-man').hide();
        $("#add_form").submit(function(e) {
            e.preventDefault();
            $('.pac-man').show();
            $(".error_msg").html('');
            var data = new FormData($('#add_form')[0]);
           var check_user_id = $('#check_user_id').val();

            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                method: "POST",
                url: "{{ url('update-verfied-participants') }}/"+ check_user_id,
                data: data,
                cache: false,
                contentType: false,
                processData: false,
                success: function(data, textStatus, jqXHR) {
                    $('.pac-man').hide();

                   window.location.href = "{{ url('add-verfied-participants-list') }}";
                }
            }).done(function() {
                $("#success_msg").html("Data Save Successfully");

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
@endsection
