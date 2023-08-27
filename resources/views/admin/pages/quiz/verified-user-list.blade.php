@extends('admin.new-master')
@section('content')
    <div class="contatiner-fluid">
        <section class="newsec">
            <div class="card m-5">
                <div class="card-header">
                    <h2>Verified User List</h2>
                </div>
                <div class="card-body">
                    <table class="table table-responsive">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Appointed Quiz</th>
                                <th scope="col">User Number</th>
                                <th scope="col">Status</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($check as $check)
                                <tr>
                                    <th scope="row">{{ $loop->index + 1 }}</th>
                                    <td><span class="text-info"
                                            style="font-family:hindis_bold">{{ getQuizName($check->sub_id) }}</span>
                                    </td>
                                    <td class="text-dark">
                                        {{ $check->user_number }}</td>
                                    <td><span class="text-danger">
                                            @if ($check->perticipant_id == null)
                                                <span class="badge badge-danger">UnRegisterd</span>
                                            @else
                                                <span class="badge badge-success">Registerd</span>
                                            @endif
                                        </span></td>
                                    <td><a class="btn btn-outline-info"
                                            href="{{ url('add-verfied-participants-edit/' . $check->check_user_id) }}">Edit</a>
                                        <a class="btn btn-outline-warning"
                                            href="{{ url('add-verfied-participants-delete/' . $check->check_user_id) }}">Delete</a>
                                    </td>
                                </tr>
                            @endforeach

                        </tbody>
                    </table>
                </div>

            </div>
        </section>
    </div>
@endsection
