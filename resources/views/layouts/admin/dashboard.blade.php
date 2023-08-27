@extends('admin.master')
@section('content')
    @inject('dashboard', 'App\Models\Dashboard')
    @inject('form_creator', 'App\Models\UserForm')
    @inject('form_creator_one', 'App\Models\UserForm')
    <?php $user = Auth::user(); ?>

    <link rel="stylesheet" href="{{ asset('public/admin_asset') }}/css/dashboard.css">
    <div class="content @if (CurrSessionMode() == 'dark') dark-mode @endif">
        <div class="panel-header @if (CurrSessionMode() == 'dark') dark-mode @else bg-white @endif">
            <div class="page-inner">
                <div class="row bootstrap snippets bootdeys">
                    <div class="col-sm-6 col-xs-12 col-md-offset-2">
                        <div class="panel" id="messge">
                            <div class="panel-heading">
                                <h3 class="panel-title"></h3>
                            </div>
                            <div class="panel-body">
                                <ul class="list-group list-group-full">

                                    <div class="media">
                                        <div class="media-left">

                                            @if (Auth::user()->image)
                                                <img src="{{ asset('public/user_images/') . '/' . $user->image }}"
                                                    alt="" style="height: 48px;width: 48px;border-radius: 50%;">
                                            @else
                                                <img src="{{ asset('public/admin_asset') }}/img/profile.png" alt=""
                                                    style="height: 48px;width: 48px;border-radius: 50%;">
                                            @endif


                                        </div>
                                        <div class="media-body">
                                            <h3 class="list-group-item-heading">Hi,
                                                <small class="pull-right">
                                                    @if (Auth::user()->phone == null)
                                                        <a href="{{ 'users/' . Auth::user()->id . '/' . 'edit' }}"
                                                            class="btn btn-xs btn-info">Verify Profile</a>
                                                    @endif
                                                </small>
                                                <span class="text-info">{{ Auth::user()->name }} </span>
                                                @if (Auth::user()->phone != null)
                                                    {{-- <span style="font-size:15px;margin-left:5px"><i
                                                            class="fa-solid fa-certificate text-primary"></i></span> --}}

                                                    <img width="32px" height="32px"
                                                        src="https://icon2.cleanpng.com/20180727/vag/kisspng-social-media-check-mark-symbol-computer-icons-user-blue-tic-5b5b96fb417831.9762382515327290832682.jpg"alt="">
                                                @endif

                                            </h3>
                                            <p class="list-group-item-text" style="font-size: 13px">Welcome To Quiz360</p>
                                        </div>
                                    </div>
                                </ul>
                            </div>
                        </div>
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



        @if ($checkuser[0]->get_user_type == null && $checkuser[0]->user_status == false)
            <div class="container">


                <div class="p-3"><span class="display-4 text-center text-dark">How You Like To Join
                        ?</span></div>

                <div class="row">
                    <div class="col">
                        <div class="card parcard p-3">
                            <div class="card-header p-0" style="border-bottom:1px solid #fff !important">
                                <h3 class="partihead">Participant</h3>
                            </div>
                            <div class="card-body d-flex justify-content-center" style="">
                                <lottie-player src="https://assets4.lottiefiles.com/packages/lf20_fccqordl.json"
                                    background="transparent" speed="1" style="width: 150px; height: 150px;" loop
                                    autoplay>
                                </lottie-player>
                            </div>
                            <div class="row">
                                <a id="pc" pcid="{{ Auth::user()->id }}"
                                    class="btn btn-sm btn-outline-white btnparti">
                                    Join</a>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="card p-3" style="margin-bottom: 10rem;">
                            <div class="card-header p-0" style="border-bottom:1px solid #24eba8 !important">
                                <h3 class="qcreator">Quiz Creator</h3>
                            </div>
                            <div class="card-body d-flex justify-content-center" style="">
                                <lottie-player src="https://assets5.lottiefiles.com/packages/lf20_3jmvq04g.json"
                                    background="transparent" speed="1" style="width: 150px; height: 150px;" loop
                                    autoplay>
                                </lottie-player>
                            </div>
                            <div class="row"><a class="btn btn-sm btn-outline-info btnqcreator" id="qc"
                                    qcid="{{ Auth::user()->id }}">Join</a>

                            </div>

                        </div>
                    </div>

                </div>
        @endif


        @if ($checkuser[0]->get_user_type == 'quiz_creator' && $checkuser[0]->user_status == false)
            <div class="quiz_items mb-3">
                <div class="container">
                    <div class="row">
                        <div
                            class="col-md-4 col-lg-4 col-xs-12 col-sm-12 pt-5 pb-5 math animate_animated animate__fadeInRight">
                            <div class="card ">

                                <div class="card-header">
                                    <h3 class="text-danger">Update <span class="text-info">Q-Creator</span> Information
                                    </h3>
                                </div>
                                <div class="card-body">

                                    <form id="qcreatorForm" enctype="multipart/form-data">
                                        @csrf
                                        <p> <span class="text-info">MR/MRS .</span><span
                                                class="font-weight-bold text-dark">{{ Auth::user()->name }}</span> Help Us
                                            Updating
                                            The Information</p>

                                        <hr class="bg-info">

                                        <input type="hidden" name="q_creator_id" value="{{ Auth::user()->id }}">
                                        <div class="form-group">
                                            <label for="exampleFormControlSelect1">Creator Type</label>
                                            <select class="form-control" id="changeType" name="creator_type">
                                                <option disabled selected>Select Creator Type</option>
                                                <option value="personal">Personal</option>
                                                <option value="company">Company</option>
                                            </select>
                                        </div>

                                        <div class="form-group" id="companyName">
                                            <label for="exampleFormControlInput1">Company Name</label>
                                            <input type="text" class="form-control" id="exampleFormControlInput1"
                                                placeholder="" name="company_name">
                                        </div>
                                        <div class="form-group" id="companyEmail">
                                            <label for="exampleFormControlInput1">Email address</label>
                                            <input type="email" class="form-control" id="exampleFormControlInput1"
                                                placeholder="name@example.com" name="creator_email">
                                        </div>
                                        <div class="form-group" id="companyNumber">
                                            <label for="exampleFormControlInput1">Contact Number</label>
                                            <input type="number" class="form-control" id="exampleFormControlInput1"
                                                placeholder="01.." name="company_phone">
                                        </div>

                                        <div class="form-group col-12" id="companyLogo">
                                            <label for="exampleFormControlInput1">Comapny logo</label>
                                            <div class="row">
                                                @if (Auth::user()->image)
                                                    <img id="pro_pic" height="200px" width="200px"
                                                        src="{{ asset('public/user_images/') . '/' . Auth::user()->image }}"
                                                        class="img-fluid" />
                                                @else
                                                    <img id="pro_pic" height="200px" width="200px"
                                                        class="img-fluid" />
                                                @endif
                                            </div>
                                            <div class="row">
                                                <label for="image">{{ __('User Photo') }}(max-1mb)</label>
                                            </div>
                                            <input name="company_image" type=file
                                                oninput="pro_pic.src=window.URL.createObjectURL(this.files[0])">
                                        </div>



                                        <button type="submit" class="btn btn-primary" id="upsubmit">Update</button>




                                    </form>



                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        @endif

        @if ($checkuser[0]->get_user_type == 'quiz_creator' && $checkuser[0]->user_status == 1)
            <div class="quiz_items">
                <div class="container">
                    <div class="row">
                        <div
                            class="col-md-4 col-lg-4 col-xs-12 col-sm-12 pt-5 pb-5 math animate_animated animate__fadeInRight">
                            <div class="card text-danger">
                                <div class="card-body">
                                    <!--<h2>Start Creating Quiz</h2>-->
                                </div>
                                <div class="card-footer text-center text-info">
                                Your Account Will Reviewed Soon- Stay With Us!

                                    <!--<a style="text-decoration:none" href="{{ url('/subject') }}"-->
                                    <!--    class="btn btn-outline-info text-white">Let Get-->
                                    <!--    Started <span><i class="fa-solid fa-circle-play"></i></span></a>-->



                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        @endif

        @if ($checkuser[0]->get_user_type == 'participant')
            <div class="row upcount  m-0">
                <div class="col-sm-12">
                    <div class="card statprofile" id="statprofile">
                        <div class="card-body">

                            <div class="container">
                                <div class="row">
                                    <div class="col">
                                        <div class="left-profile">

                                            <div class="current_bla">
                                                <h2>
                                                    <div class="comround"><i class="fa-solid fa-wallet com-i"></i></div>
                                                    <span style="position: relative;top: 5px;font-weight:700">Current
                                                        Points</span>
                                                </h2>
                                            </div>

                                            <div class="threeline">
                                                <ul style="list-style:none">
                                                    <li>
                                                        <h2 class="pt-3">P. <span
                                                                class="font-weight-bold text-info">0.00
                                                                pts</span></h2>
                                                    </li>
                                                    <li>
                                                        <p class="lead">valid till <span
                                                                class="text-danger font-wight-bold">27
                                                                Nov,2022</span></p>
                                                    </li>
                                                    <li><a class="btn btn-sm combg text-white"
                                                            style="border-radius: 20px;"> <i
                                                                class="fa-solid fa-cloud-bolt mr-2"></i>
                                                            Recharge</a></li>
                                                </ul>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="right-profile">
                                            <div class="threeline">
                                                <ul style="list-style:none">
                                                    <li>
                                                        <div class="d-flex justify-content-between comb-bottom">
                                                            <div class="comround"><i
                                                                    class="fa-solid fa-person-circle-check com-i"></i>
                                                            </div>
                                                            <div
                                                                style="margin-top:-3px;margin-left:10px;text-align:center">
                                                                <span style="font-size: 12px;font-weight:700;">Attended
                                                                    Quiz</span>
                                                                <br>
                                                                <span>5</span>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="d-flex justify-content-between comb-bottom">
                                                            <div class="comround"><i
                                                                    class="fa-regular fa-hand-point-up com-i"></i>
                                                            </div>
                                                            <div
                                                                style="margin-top:-3px;margin-left:10px;text-align:center">
                                                                <span style="font-size: 12px;font-weight:700">Complete
                                                                    Quiz</span>
                                                                <br>
                                                                <span>10</span>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="d-flex justify-content-between comb-bottom">
                                                            <div class="comround"><i
                                                                    class="fa-regular fa-square-check com-i"></i>
                                                            </div>
                                                            <div
                                                                style="margin-top:-3px;margin-left:10px;margin-right:10px;text-align:center">
                                                                <span style="font-size: 12px;font-weight:700">Milestones
                                                                </span>
                                                                <br>
                                                                <span>2</span>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row pt-2 m-0">
                                <div class="col-2">
                                    <i class="fa-regular fa-id-badge"
                                        style="font-size: 35px;margin: 5px;color: #24eba8d1;"></i>
                                </div>
                                <div class="col-10">
                                    <span class="text-info">Want More Points!!</span>
                                    <br>
                                    <span class="">Refer Friends & Earn More
                                        <div class="comround"><i class="fa-solid fa-arrow-right com-i"></i>
                                        </div>
                                    </span>

                                </div>
                            </div>

                        </div>

                    </div>
                </div>
                
                                <div class="container-fluid" id="trending">
                    <h1 class="text-info font-weight-bold">Trending Now</h1>

                    @foreach ($quiz_slides_one as $quiz_slides_one)
                    <a href="{{ url('quiz/' . 2) }}" style="text-decoration:none">
                        <div class="cardtype card p-4">
                            <div class="row">
                                <div class="col">
                                    <h1 class="upcomeh1 text-white">{{ $quiz_slides_one->subjective_quiz_name }}</h1>
                                    <ul style="list-style:none" class="text-white">
                                        <li>
                                            Time :{{ $quiz_slides_one->quiz_time }} Mins
                                        </li>
                                        <li>
                                            Total Questions : {{ $quiz_slides_one->quiz_number }}
                                        </li>
                                        <li>
                                            Quiz Code : {{ $quiz_slides_one->quiz_code }}
                                        </li>
                                    </ul>


                                </div>
                                <div class="col">
                                    <div class="specialround">
                                        <img src="https://sports46bd.com/wp-content/uploads/2022/02/cropped-logo.png"
                                            alt="" height="120px" >

                                    </div>
                                </div>
                            </div>
                        </div></a>
                    @endforeach
                </div>
                <div class="container" id="toppicks">
                    <h1 class="text-dark toppos" style="font-weight:900">Top Picks</h1>
                    <div class="owl-carousel owl-theme">



                        @foreach ($quiz_slides as $q_item)
                       
                            <div class="owlish">
                                <div class="card topsimplecard p-4">
                                    <div class="svgicon">
                                        <h2 class="itemname text-center text-white">
                                            {{ $q_item->subjective_quiz_name }}
                                        </h2>
                                    </div>
                                    <h2 class="text-center">#
                                        {{ $form_creator->subjectName($q_item->subjective_sub_id) }}</h2>
                                    <div class="container">
                                        <div class="row">
                                            <div class="col">
                                                <ul class="fa-ul">
                                                    <li class="text-white font-weight-bold"><span class="fa-li"><i
                                                                class="fa-brands fa-quinscape"></i></span>{{ $q_item->quiz_number }}
                                                        Quest.
                                                    </li>
                                                    <li class="text-white font-weight-bold"><span class="fa-li"><i
                                                                class="fa-regular fa-clock"></i></span>{{ $q_item->quiz_time }}
                                                        Mins</li>

                                                </ul>


                                            </div>



                                        </div>

                                    </div>
                                    <div class="container">
                                        <div class="row">
                                            <div class="col">
                                                <a href="{{ url('quiz/' . $q_item->subjective_quiz_id) }}"
                                                    class="btn btn-sm btn-white text-white font-weight-bold"><small>Start
                                                        Now <i class="fa-regular fa-circle-play"></i></small>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="container">
                                        <div class="row">
                                            <div class="col text-center pt-3">
                                                <span class="font-weight-bold text-white"> <i
                                                        class="fa-solid fa-circle-dollar-to-slot"></i>
                                                    M360ict</span>
                                            </div>
                                        </div>
                                    </div>






                                </div>

                            </div>
                        @endforeach

                        {{-- <div><img
                                src="https://www.si.com/.image/ar_4:3%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTg4NDQ5OTY1OTc3MTE4NjY3/world-cup2.jpg"
                                alt="" height="160px" width="160px"></div>
                        <div> --}}
                    </div>
                </div>
            </div>

            <div class="quiz_items mt-3 mb-3" style="" id="topofweek">
                <div class="container">
                    <h1 class="text-dark toppos" style="font-weight:900">
                        Stars Of This Week
                    </h1><span class="text-danger">{{$quiz_slides_get}} (Ongoing)</span>
                  
                    <div class="card topoftheweek">
                        <div class="row">
                            @foreach ($users_get as $users_get)
                                <div class="col text-center">
                                    <ul style="list-style: none">
                                        
                                        @if ($loop->index + 1 == 1)
    

                                        <li class="mb-2">
                                            <h2 class="text-success font-weight-bold">1st</h2>
                                        </li>
                                        @elseif($loop->index + 1 == 2)
                                        
                                                                                <li class="mb-2">
                                            <h2 class="text-success font-weight-bold">2nd</h2>
                                        </li>
                                        
                                        @else
                                        
                                        <li class="mb-2">
                                            <h2 class="text-success font-weight-bold">3rd</h2>
                                        </li>
                                        
                                        
                                        
                                        @endif
                                        <li class="mb-2">
                                            <img class="rounded-circle shadow-4-strong"
                                                src="{{ asset('public/user_images/') . '/' . $form_creator->getUserImage($users_get->answerd_by) }}"
                                                width="64px" height="64px" alt="" style="border-radius:50%">
                                        </li>
                                        <li class="mb-2">
                                            <h2 class="text-info font-weight-bold">{{ $form_creator->getUserName($users_get->answerd_by) }}</h2>
                                        </li>
                                        <li class="mb-2">Points: {{ $users_get->total_marks }}</li>
                                        <li class="mb-2">Time: {{ $users_get->takentime }}</li>
                                    </ul>
                                </div>
                            @endforeach

                        </div>
                    </div>

                </div>

            </div>


            <div class=""></div>


            <div class="quiz_items mt-3 mb-3" id="topcat">
                <div class="container">
                    <h1 class="text-dark" style="font-weight:900">Top Categories</h1>
                    <div class="row">

                        <a href="" class="iconhref">
                            <div class="col-3">

                                <div id="plane">
                                    <i class="fa-brands fa-goodreads-g  iconitem mb-2"></i>
                                </div>
                                <span class="icontitle text-decoration-none">General</span>

                            </div>
                        </a>
                        <a href="" class="iconhref">
                            <div class="col-4">

                                <div id="plane">
                                    <i class="fa-solid fa-atom iconitem mb-2"></i>
                                </div>
                                <span class="icontitle text-decoration-none">Scienece</span>

                            </div>
                        </a>
                        <a href="" class="iconhref">
                            <div class="col-4">

                                <div id="plane">
                                    <i class="fa-solid fa-user-astronaut iconitem mb-2"></i>
                                </div>
                                <span class="icontitle text-decoration-none">Astronomy</span>

                            </div>
                        </a>
                        <a href="" class="iconhref">
                            <div class="col-4">

                                <div id="plane">
                                    <i class="fa-solid fa-person-running iconitem mb-2"></i>
                                </div>
                                <span class="icontitle text-decoration-none">Sports</span>

                            </div>
                        </a>
                        <a href="" class="iconhref">
                            <div class="col-4">

                                <div id="plane">
                                    <i class="fa-solid fa-earth-asia  iconitem mb-2"></i>
                                </div>
                                <span class="icontitle text-decoration-none">Int.</span>

                            </div>
                        </a>
                        <a href="" class="iconhref">
                            <div class="col-4">

                                <div id="plane">
                                    <i class="fa-solid fa-compass-drafting iconitem mb-2"></i>
                                </div>
                                <span class="icontitle text-decoration-none">Geology</span>

                            </div>
                        </a>


                    </div>
                </div>
            </div>
            <div class="quiz_items" id="upcomequiz">
                <div class="container">

                    <div class="row">

                        <div
                            class="col-md-4 col-lg-4 col-xs-12 col-sm-12 pt-5 pb-5 math animate_animated animate__fadeInRight">
                            <div class="card upquiz">
                                <div class="card-header">Upcoming Quizes</div>
                                <div class="card-body">

                                   
                                        <div class="card" style="border-radius: 5px;">
                                            <div class="card-body p-0">
                                                <img src="https://i.ytimg.com/vi/v3umfnkLEHI/maxresdefault.jpg"
                                                    alt=""width="300px" style="border-radius: 0px">
                                            </div>
                                            <div class="card-footer">
                                                <h2 class="font-weight-bold text-info">Fifa World Cup Mania</h2>
                                                <h4 class="text-danger">From 19th November</h4>
                                            </div>
                                        </div>
                                   



                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>


            <div class="sponsers" id="sponser">
                <div class="container">

                    <div class="row">

                        <div
                            class="col-md-4 col-lg-4 col-xs-12 col-sm-12 pt-5 pb-5 math animate_animated animate__fadeInRight">
                            <div class="card upquiz">
                                <div class="card-header text-danger">Our Proud Sponsers</div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-3">
                                            <div class="text-center">
                                                <img src="https://play-lh.googleusercontent.com/Iinx78_EOXhF1vIoZdR5D54ujEvJYntbOXCYRRR68SbfrPeSqxl5N2W8i4yupvCjsQ=w240-h480-rw"
                                                    alt="" width="32px" height="32px">
                                                <span class="sponsername">M360ict</span>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="text-center">
                                                <img src="https://trabill.app/assets/img/logo/logo.png" alt=""
                                                    width="48px" height="32px">
                                                <span class="sponsername">Trabill</span>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="text-center">
                                                <img src="https://thumbnail.imgbin.com/18/10/18/imgbin-t-shirt-swoosh-nike-free-logo-nike-logo-SstdYzzfVE1E0eMszK6ej2QSU_t.jpg"
                                                    alt="" width="32px" height="32px">
                                                <span class="sponsername">Nike</span>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="text-center">
                                                <img src="https://spng.pngfind.com/pngs/s/103-1032479_global-adidas-logo-pngadidas-logo-png-adidas-logo.png"
                                                    alt="" width="32px" height="32px">
                                                <span class="sponsername">Adidas</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>


            <div class="container" id="basictopcard">
                <h1>Hey Spook want some???</h1>

                <a id="livequiz">
                    <div class="cardtype card p-4">
                        <div class="row">
                            <div class="col">
                                <h1 class="upcomeh1 text-white">Live Quizes</h1>
                                <ul style="list-style:none" class="text-white">
                                    <li> <span class="fa-stack" style="vertical-align: top;">
                                            <i class="fa-solid fa-rocket fa-stack-2x"></i>
                                        </span>All Upcoming Quizes</li>

                                    <li class="m-2"><small>Register Now And Earn Prizes</small> </li>
                                </ul>


                            </div>
                            <div class="col">
                                <div class="specialround">
                                    <lottie-player src="https://assets7.lottiefiles.com/packages/lf20_fniurlxy.json"
                                        background="transparent" speed="1" style="width: 120px; height: 120px;" loop
                                        autoplay></lottie-player>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a id="seealll">
                    <div class="cardtype2 card p-4">
                        <div class="row">
                            <div class="col">
                                <div class="specialround">
                                    <lottie-player src="https://assets8.lottiefiles.com/packages/lf20_uavyvaxw.json"
                                        background="transparent" speed="1" style="width: 120px; height: 120px;" loop
                                        autoplay></lottie-player>
                                </div>
                            </div>
                            <div class="col">
                                <h1 class="upcomeh1 text-white">Upcoming Quiz</h1>
                                <ul style="list-style:none" class="text-dark">
                                    <li> <span class="fa-stack" style="vertical-align: top;">
                                            <i class="fa-solid fa-rocket fa-stack-2x"></i>
                                        </span>All Upcoming Quizes</li>
                                    <li><small>Register Now And Earn Prizes</small> </li>
                                </ul>


                            </div>
                        </div>
                    </div>
                </a>


                <div class="cardtype3 card p-4">
                    <div class="row">
                        <div class="col">
                            <h1 class="upcomeh1 text-white">Archived Quiz</h1>
                            <ul style="list-style:none" class="text-dark">
                                <li> <span class="fa-stack" style="vertical-align: top;">
                                        <i class="fa-solid fa-rocket fa-stack-2x"></i>
                                    </span>All Upcoming Quizes</li>
                                <li><small>Register Now And Earn Prizes</small> </li>
                            </ul>


                        </div>
                        <div class="col">
                            <div class="specialround">
                                <lottie-player src="https://assets7.lottiefiles.com/packages/lf20_EHLDNO3O5W.json"
                                    background="transparent" speed="1" style="width: 120px; height: 120px;" loop
                                    autoplay></lottie-player>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endif

    </div>








    <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">


                    <button type="button" class="btn btn-primary btn-lg btn-block">Get Started</button>
                </div>

            </div>
        </div>
    </div>




    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>

    <script>
        window.addEventListener('load', function() {

        })


        $('#statprofile').hide();
        $('#toppicks').hide();
        $('#topofweek').hide();
        $('#topcat').hide();
        $('#upcomequiz').hide();
        $('#sponser').hide();
        $('#trending').hide();



        $('#seealll').click(function(event) {
            event.preventDefault();

            $('#statprofile').show();
            $('#trending').show();
            $('#toppicks').hide();
            $('#topofweek').hide();
            $('#topcat').hide();
            $('#upcomequiz').hide();
            $('#sponser').hide();
            $('#basictopcard').hide();
            

        });
        
        
        $('#livequiz').click(function(event) {
            event.preventDefault();

            $('#statprofile').show();
            $('#toppicks').show();
            $('#topofweek').show();
            $('#topcat').show();
            $('#upcomequiz').show();
            $('#sponser').show();
            $('#basictopcard').hide();
            $('#trending').show();

        });


        $('.cssload-preloader').hide();

        $(document).ready(function() {
            $('.owl-carousel').owlCarousel({
                center: true,
                items: 2,
                margin: 25,
                loop: true,
                autoplay: true,
                autoplayTimeout: 3000,
                autoplayHoverPause: true,
                autoHeight: true,
                responsive: {
                    600: {
                        items: 2
                    }
                }

            });
        });
        $(document).ready(function() {
            $('.owl-carousel.owlup').owlCarousel({
                center: true,
                items: 1,
                margin: 25,
                loop: true,
                autoplay: true,
                autoplayTimeout: 3000,
                autoplayHoverPause: true,
                autoHeight: true,
                responsive: {
                    600: {
                        items: 2
                    }
                }

            });
        });





        $(document).ready(function() {
            var tbl = $('#multi-filter-select').DataTable({
                "pageLength": 10,
                "processing": true,
                // DataTables server-side processing mode
                "serverSide": true,
                "order": [],
                // Initial no order.
                "ajax": {
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    url: "{{ url('leave-applications/get-dashboard-list') }}",
                    type: 'POST',
                    'data': function(data) {}
                },
                columns: [{
                        data: 'name'
                    },
                    {
                        data: 'user_id'
                    },
                    {
                        data: 'designation'
                    },
                    {
                        data: 'phone'
                    },
                    {
                        data: 'leave_starting_from'
                    },
                    {
                        data: 'leave_ending_on'
                    }
                ]
            });
        });

        /* change user type */

        $('#companyName').hide();
        $('#companyLogo').hide();
        $('#companyEmail').hide();
        $('#companyNumber').hide();
        $('#upsubmit').hide();
        $(document).on('change', '#changeType', function(event) {
            event.preventDefault();
            $('.cssload-preloader').hide();

            if (this.value == 'personal') {
                $('#companyName').hide();
                $('#companyLogo').hide();
                $('#companyEmail').show();
                $('#companyNumber').show();
                $('#upsubmit').show();
            } else {

                $('#companyName').show();
                $('#companyLogo').show();
                $('#companyEmail').show();
                $('#companyNumber').show();
                $('#upsubmit').show();

            }


        });

        /* join as participants */

        $(document).on('click', '#pc', function(event) {
            event.preventDefault();
            let pcid = $(this).attr('pcid');
            $('.cssload-preloader').show();
            $.ajax({

                method: "GET",
                url: 'join-pc/' + pcid,
                success: function(data) {
                    $('.cssload-preloader').hide();
                    location.reload();
                }

            });
        });

        /* join as q-creator */

        $(document).on('click', '#qc', function(event) {
            event.preventDefault();
            $('.cssload-preloader').show();
            let qcid = $(this).attr('qcid');
            $.ajax({

                method: "GET",
                url: 'join-qc/' + qcid,
                success: function(data) {
                    $('.cssload-preloader').hide();
                    location.reload();
                }

            });
        });


        // $(document).on('click', '#viewinfo', function(event) {
        //     event.preventDefault();
        //     $('.cssload-preloader').show();


        // });





        $("#qcreatorForm").submit(function(e) {
            e.preventDefault();
            $('.cssload-preloader').show();
            var data = new FormData($('#qcreatorForm')[0]);

            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                method: "POST",
                url: "{{ url('info-update') }}",
                data: data,
                cache: false,
                contentType: false,
                processData: false,
                success: function(data, textStatus, jqXHR) {
                    swal("Congrats!", "Quiz Creator Profile Has Been Updated!", "info");
                    $('.cssload-preloader').hide();
                    location.reload();
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





        $(document).on('click', '.btn-edit', function() {
            var id = $(this).data("id");
            $.ajax({
                method: "GET",
                url: "leave-applications/" + id + "/edit",
                data: id,
                cache: false,
                contentType: false,
                processData: false,
                success: function(data, textStatus, jqXHR) {
                    $("#modal_body").html(data.html);
                    //                console.log(data.permission_holders);
                    $(".select2").select2();
                    //                 $(".select2_multi").select2({closeOnSelect: false});
                    $("#editModal").modal("show");
                }
            });
        });
        $(document).on('click', '.edit_button', function() {
            $(".error_msg").html('');
            $('#loader1').show();
            var id = $('[name=id]').val();
            if ($('#check_password').val() !== '') {
                let passCheckk = checkPass($('#check_password').val());
                if (passCheckk == 1) {
                    var data = new FormData($('#edit_form')[0]);
                    $.ajax({
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        method: "POST",
                        url: "leave-applications/" + id,
                        data: data,
                        cache: false,
                        contentType: false,
                        processData: false,
                        success: function(data, textStatus, jqXHR) {
                            console.log(data);
                        }
                    }).done(function(data) {
                        $("#success_msg").html("Data Save Successfully");
                        $('#editModal').modal('toggle');
                        $('#edit_form')[0].reset();
                        $("#loader1").hide();
                        tbl.draw();
                    }).fail(function(data, textStatus, jqXHR) {
                        $("#loader1").hide();
                        var json_data = JSON.parse(data.responseText);
                        $.each(json_data.errors, function(key, value) {
                            $("#" + key).after(
                                "<span class='error_msg' style='color: red;font-weigh: 600'>" +
                                value + "</span>");
                            $("#" + key).addClass("error");
                        });
                    });
                } else {
                    notifiAlert('Alert!', 'Password is incorrect!');
                    $('#check_password').addClass("error");
                    $("#loader1").hide();
                }
            } else {
                $('#check_password').addClass("error");
                $("#loader1").hide();
                notifiAlert('Alert!', 'Please confirm your password to submit your application!');
            }
        });
        $(document).on('click', '.btn-delete', function() {
            var id = $(this).attr('data-id');
            if (confirm('Are you sure?', true)) {
                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: 'Delete',
                    url: "leave-applications/" + id,
                    data: {
                        id: id
                    },
                    dataType: 'json',
                    beforeSend: function() {},
                    success: function(data) {
                        notifiAlert('Alert!', 'Leave Application deleted successfully');
                        return false;
                    }
                });
                //                  alert('Hi');
                $(this).parent().parent().remove();
                notifiAlert('Alert!', 'Leave Application deleted successfully');
                return false;
            } else {
                return false;
            }
        });
    </script>




    {{-- <script>
        let deadline = $('input#deadline').val();
        // alert(deadline);

        // Set the date we're counting down to
        var countDownDate = new Date(deadline).getTime();

        // Update the count down every 1 second
        var x = setInterval(function() {

            // Get today's date and time
            var now = new Date().getTime();

            // Find the distance between now and the count down date
            var distance = countDownDate - now;

            // Time calculations for days, hours, minutes and seconds
            var days = Math.floor(distance / (1000 * 60 * 60 * 24));
            var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            var seconds = Math.floor((distance % (1000 * 60)) / 1000);

            // Display the result in the element with id="demo"
            document.getElementById("demo").innerHTML = days + "d " + hours + "h " +
                minutes + "m " + seconds + "s ";

            // If the count down is finished, write some text
            if (distance < 0) {
                clearInterval(x);
                document.getElementById("demo").innerHTML = "EXPIRED";
            }
        }, 1000);
        // }, 1000);
    </script> --}}
@endsection
