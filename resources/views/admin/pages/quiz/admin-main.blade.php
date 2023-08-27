@extends('admin.new-master')
@section('content')
    <div class="row hidden-md-up mt-5">
        <div class="col-md-6">
            <div class="card text-center">
                <div class="card-header">
                    Add New Verfied User
                </div>
                <div class="card-body">
                    <h5 class="card-title">Create Specific User</h5>
                    <p class="card-text">Choose Only Verfied User To Perticipant In Quizes</p>
                    <a href="{{ url('add-verfied-participants') }}" class="btn btn-danger">Add Participant</a>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card text-center">
                <div class="card-header">
                    Featured
                </div>
                <div class="card-body">
                    <h5 class="card-title">Special title treatment</h5>
                    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card text-center">
                <div class="card-header">
                    Featured
                </div>
                <div class="card-body">
                    <h5 class="card-title">Special title treatment</h5>
                    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
        </div>
    </div>
@endsection
