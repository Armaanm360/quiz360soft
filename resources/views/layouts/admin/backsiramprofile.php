          <div class="row result section">
                    <div class="col-sm-12 col-md-4 col-lg-4">
                        <div class="card">
                            <div class="card-header" style="padding-bottom: 30px!important;">{{ $subject_name }}</div>
                            <div class="card-body mt--5">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-5">
                                                <span class="float-left">Total Contestants</span>
                                                <br>
                                                <span class="text-info">{{ $contestent }}</span>
                                            </div>
                                            <div class="col-5">
                                                <span class="float-left">Time Taken</span>
                                                <br>
                                                <span class="text-info">{{ $timetaken }} Mins</span>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="card-footer">
                                        <div class="d-flex justify-content-center">
                                            <a href="{{ url('combined-result/' . request()->route('id')) }}"
                                                style="text-decoration: none">Leaderboard
                                            </a>
                                        </div>
                                    </div>

                                </div>
                                {{-- <div class="card align-center">
                                    <div class="card-body">
                                        
                                    </div>

                                </div> --}}

                                <div class="card">
                                    <div class="card-body">
                                        <div class="box">
                                            <div class="chart"
                                                data-percent="{{ ($users_get[0]->total_marks * 100) / $subject->quiz_number }}"
                                                data-scale-color="#ffb400" style="">
                                                <!--number_format((($users_get[0]->total_marks * 100) / $subject->quiz_number), 2, '.', '.')-->
                                                <div>
                                                    <h2 class="mark-percentage">
                                                        {{ number_format(($users_get[0]->total_marks * 100) / $subject->quiz_number, 2, '.', '.') }}%
                                                    </h2>
                                                </div>
                                                {{-- <span
                                                    class="percentage text-info"></span> --}}
                                            </div>
                                        </div>

                                        <div class="buttonsection">
                                            <table class="table table-secondary table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th class="col-2">Right</th>
                                                        <th class="col-2">Wrong</th>
                                                        <th class="col-2">Skip</th>
                                                        <th class="col-2">Total</th>
                                                        <th class="col-2">Grade</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>{{ $users_get[0]->right_ans }}</td>
                                                        <td>{{ $users_get[0]->wrong_ans }}</td>
                                                        <td>{{ $users_get[0]->skipped_ans }}</td>
                                                        <td>{{ $users_get[0]->total_marks }}</td>
                                                        <td>{{ $calculation->getGrad($users_get[0]->total_marks, $subject->quiz_number) }}
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                </div>


                                <a href="{{ url('answers/' . request()->route('id')) }}" id="resultpublish"
                                    style="text-decoration: none"><button class="btn btn-large btn-primary">View
                                        Solution</button></a>


                            </div>
                        </div>

                    </div>
                </div>