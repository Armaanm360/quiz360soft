@extends('admin.master')
@section('content')
    <?php
    $user = Auth::user();
    //echo '<pre>';
    //print_r($user);die;
    ?>
    <div class="content">

        <div class="page-inner">
            <div class="page-header">
                <h4 class="page-title">{{ __('Form') }}</h4>
                <ul class="breadcrumbs">
                    <li class="nav-home">
                        <a href="#">
                            <i class="flaticon-home"></i>
                        </a>
                    </li>
                    <li class="separator">
                        <i class="flaticon-right-arrow"></i>
                    </li>
                    <li class="nav-item">
                        <a href="#">{{ __('Form') }}</a>
                    </li>
                    <li class="separator">
                        <i class="flaticon-right-arrow"></i>
                    </li>
                    <li class="nav-item">
                        <a href="#">{{ __('List of Form') }}</a>
                    </li>
                </ul>
            </div>
            <div class="row">

                <div class="col-md-12">
                    hello this is student panel
                </div>


            </div>
        </div>
    </div>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#basic-datatable').DataTable({});

            let id = $(this).attr('delattr');





            $('#delbtn').click(function(event) {
                //   var form =  $(this).closest("form");
                let id = $(this).attr('delattr');

                //  alert(id);
                //   let id = $(this).attr('delattr');
                //   event.preventDefault();

                //   alert(id);
                swal({
                        title: "Are you sure?",
                        text: "Once deleted, you will not be able to recover this imaginary file!",
                        icon: "warning",
                        buttons: true,
                        dangerMode: true,
                    })
                    .then((willDelete) => {
                        if (willDelete) {

                            $.ajax({
                                url: 'list/' + id,
                                success: function(dataResult) {
                                    location.reload(true);


                                }
                            });





                            swal("Poof! Your imaginary file has been deleted!", {
                                icon: "success",
                            });
                        } else {
                            swal("Your imaginary file is safe!");
                        }
                    });
            });



            //     $("#delete_form").click(function()
            //     {
            //         var del_id = $(this).attr('id');

            //      $.ajax({
            //     type: "GET",
            //     url: "/forms/list/" + del_id,
            //     success: function (data) {
            //         console.log('deleted');
            //     }
            // });
            //     });


        });
    </script>
@endsection
