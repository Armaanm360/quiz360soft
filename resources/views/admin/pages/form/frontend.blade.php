


                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="basic-datatable" class="display table table-striped table-hover">
                                    <thead>
                                        <tr>

                                            <th>{{ __('Sl') }}</th>
                                            <th>{{ __('Answerd By') }}</th>
                                            <th>{{ __('Phone') }}</th>
                                            <th>{{ __('Total marks') }}</th>
                                            <th>{{ __('Right Ans') }}</th>
                                            <th>{{ __('Wrong Ans') }}</th>
                                            <th>{{ __('Taken Time') }}</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($top as $top)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $top->name }}</td>
                                                <td>{{ $top->phone }}</td>
                                                <td>{{ $top->total_marks }}</td>
                                                <td>{{ $top->right_ans }}</td>
                                                <td>{{ $top->wrong_ans }}</td>
                                                <td>{{ $top->takentime }}</td>
                                                
                         
                                        @endforeach


                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th>{{ __('Sl') }}</th>
                                            <th>{{ __('Form Name') }}</th>
                                            <th>{{ __('Form Creator') }}</th>
                                            <th>{{ __('Form Type') }}</th>
                                            <th>{{ __('Action') }}</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>


