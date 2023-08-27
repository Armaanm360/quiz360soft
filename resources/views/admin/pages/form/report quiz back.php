        @foreach ($all_answers as $all_answers)
            <div class="card text-center">
                <div class="card-header">
                    Featured
                </div>
                <div class="card-body">
                    <h5 class="card-title">{{ $all_answers->question }}</h5>
                    <div class="row">
                        @if ($all_answers->answer == $all_answers->option_1)
                            <div class="col-sm-2">
                                <button class="btn btn-info">{{ $all_answers->option_1 }}</button>
                            </div>
                        @else
                            <div class="col-sm-2">
                                <button class="btn btn-success">{{ $all_answers->option_1 }}</button>
                            </div>
                        @endif
                        @if ($all_answers->answer == $all_answers->option_2)
                            <div class="col-sm-2">
                                <button class="btn btn-info">{{ $all_answers->option_2 }}</button>
                            </div>
                        @else
                            <div class="col-sm-2">
                                <button class="btn btn-success">{{ $all_answers->option_2 }}</button>
                            </div>
                        @endif
                        @if ($all_answers->answer == $all_answers->option_3)
                            <div class="col-sm-2">
                                <button class="btn btn-info">{{ $all_answers->option_3 }}</button>
                            </div>
                        @else
                            <div class="col-sm-2">
                                <button class="btn btn-success">{{ $all_answers->option_3 }}</button>
                            </div>
                        @endif
                        @if ($all_answers->answer == $all_answers->option_4)
                            <div class="col-sm-2">
                                <button class="btn btn-info">{{ $all_answers->option_4 }}</button>
                            </div>
                        @else
                            <div class="col-sm-2">
                                <button class="btn btn-success">{{ $all_answers->option_4 }}</button>
                            </div>
                        @endif


                    </div>


                </div>
                <div class="card-footer text-muted">
                    2 days ago
                </div>
            </div>
        @endforeach