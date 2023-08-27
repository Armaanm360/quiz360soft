<?php

use App\Http\Controllers\PdfController;
use App\Http\Controllers\FormController;
use App\Http\Controllers\Subject\SubjectController;
use App\Http\Controllers\SubjectiveQuiz\QuizController;
use App\Http\Controllers\Question\QuestionController;
use App\Http\Controllers\Exams\ExamController;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Http\Controllers\SocialController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('registration', 'Api\userRegisterController@userRegisterShow');

Route::get('/clear-cache', function () {
    $exitCode = Artisan::call('cache:clear');
    // return what you want
});
Auth::routes([
    'register' => true, // Routes of Registration
    'reset' => true,    // Routes of Password Reset
    'verify' => false,   // Routes of Email Verification
]);

Route::get('/roles', 'PermissionController@Permission')->middleware('auth');


/* test purpose */
Route::get('/test', 'TestController@testFunction')->middleware('auth');


Route::post('/get-user-notification', 'Admin\DashboardController@notifications')->middleware('auth');

Route::get('dashboard', 'Admin\DashboardController@index')->middleware('auth');

Route::get('search', 'Admin\DashboardController@search')->middleware('auth');
Route::get('/', 'Admin\DashboardController@index')->middleware('auth');
//Route::get('/', 'FormController@homeQuiz')->middleware('auth');
Route::get('/create-form', 'FormController@create_form')->middleware('auth');
Route::post('/create-form-table', 'FormController@create_form_table')->middleware('auth');
Route::get('/form/{any}/{def?}', 'FormController@view_form')->middleware('auth');
Route::get('/created-latest-form/{any}/{def?}', 'FormController@created_latest_form')->middleware('auth');
Route::get('/edit-form/{any}', 'FormController@edit_created_form')->middleware('auth');
Route::post('/tablecreate', 'FormController@tableCreate')->middleware('auth');
Route::get('/forms/list', 'FormController@list_of_form')->middleware('auth');



/* calculation table */

Route::get('/create-form-calculation', 'FormController@create_form_calculation')->middleware('auth');
Route::post('/create-form-table-calculation', 'FormController@create_form_table_calculation')->middleware('auth');
Route::get('/form-calc/{any}/{def?}', 'FormController@view_form_calc')->middleware('auth');


/* choose form type */
Route::get('/select-form-format', 'FormController@selectFormFormat')->middleware('auth');

/* delete form */
Route::get('/forms/list/{id}', 'FormController@deleteForm')->middleware('auth');

/*  */
Route::get('/submitted-reports', 'FormController@list_of_submitted_reports')->middleware('auth');
Route::get('/pending-reports', 'FormController@list_of_pending_reports')->middleware('auth');
// pdf generate
Route::get('generate-pdf/{any}', 'FormController@generate_pdf');
Route::get('generate-pdf-question/{any}', 'FormController@generate_pdf_question');

/* combined Result */
Route::get('generate-pdf-result/{any}', 'FormController@generate_pdf_result');

/* individual */
Route::get('generate-pdf-result-individual/{id}/{userid}', 'FormController@generate_pdf_result_individual');

Route::get('generate-pdf-individual/{any}/{tab}', 'FormController@generate_pdf_individual');

//Route::get('/pdf/{any}','PDF\PdfController@generatePdf')->middleware('auth');



//Default Forms

Route::get('/form-1.1.1', 'FormController@form_one_point_one_point_one')->middleware('auth');
Route::post('/form-1.1.1', 'FormController@form_one_point_one_point_one_store')->middleware('auth');
Route::post('/store-form-1.1.1',   'FormController@form_one_point_one_point_one_store_unique')->middleware('auth');



Route::get('/form-1.1.2', 'FormController@form_one_point_one_point_two')->middleware('auth');
Route::post('/form-1.1.2', 'FormController@form_one_point_one_point_two_store')->middleware('auth');
Route::post('/store-form-1.1.2',   'FormController@form_one_point_one_point_two_store_unique')->middleware('auth');



Route::get('/form-1.2.1', 'FormController@form_one_point_two_point_one')->middleware('auth');
Route::post('/form-1.2.1', 'FormController@form_one_point_two_point_one_store')->middleware('auth');
Route::post('/store-form-1.2.1',   'FormController@form_one_point_two_point_one_store_unique')->middleware('auth');


Route::get('/form-1.2.2', 'FormController@form_one_point_two_point_two')->middleware('auth');
Route::post('/form-1.2.2', 'FormController@form_one_point_two_point_two_store')->middleware('auth');
Route::post('/store-form-1.2.2',   'FormController@form_one_point_two_point_two_store_unique')->middleware('auth');


Route::get('/form-1.3',   'FormController@form_one_point_three')->middleware('auth');
Route::post('/form-1.3',   'FormController@form_one_point_three_store')->middleware('auth');
Route::post('/store-form-1.3',   'FormController@form_one_point_three_store_unique')->middleware('auth');

//crud form 2.1
Route::get('/form-2.1',   'FormController@form_two_point_one')->middleware('auth');
Route::post('/form-2.1',   'FormController@form_two_point_one_store')->middleware('auth');
Route::post('/store-form-2.1',   'FormController@form_two_point_one_store_unique')->middleware('auth');


//crud form 2.2.1
Route::get('/form-2.2.1', 'FormController@form_two_point_two_point_one')->middleware('auth');
Route::get('/form-2.2.1-show', 'FormController@form_two_point_two_point_one_showAll')->middleware('auth');
Route::post('/form-2.2.1', 'FormController@form_two_point_two_point_one_store')->middleware('auth');
Route::post('/store-form-2.2.1',   'FormController@form_two_point_two_point_one_store_unique')->middleware('auth');


Route::get('/form-2.2.2', 'FormController@form_two_point_two_point_two')->middleware('auth');
Route::post('/form-2.2.2', 'FormController@form_two_point_two_point_two_store')->middleware('auth');
Route::post('/store-form-2.2.2',   'FormController@form_two_point_two_point_two_store_unique')->middleware('auth');

Route::get('/form-2.2.3', 'FormController@form_two_point_two_point_three')->middleware('auth');
Route::post('/form-2.2.3', 'FormController@form_two_point_two_point_three_store')->middleware('auth');
Route::post('/store-form-2.2.3',   'FormController@form_two_point_two_point_three_store_unique')->middleware('auth');


Route::get('/form-2.2.4', 'FormController@form_two_point_two_point_four')->middleware('auth');
Route::post('/form-2.2.4', 'FormController@form_two_point_two_point_four_store')->middleware('auth');
Route::post('/store-form-2.2.4',   'FormController@form_two_point_two_point_four_store_unique')->middleware('auth');




Route::get('/form-2.2.5', 'FormController@form_two_point_two_point_five')->middleware('auth');
Route::post('/form-2.2.5', 'FormController@form_two_point_two_point_five_store')->middleware('auth');
Route::post('/store-form-2.2.5',   'FormController@form_two_point_two_point_five_store_unique')->middleware('auth');


/* Budget Branch Relevant Budget and APA Report Format */
Route::get('/budget_branch', 'FormController@form_budget_branch')->middleware('auth');
Route::post('/budget_branch', 'FormController@form_budget_branch_submit')->middleware('auth');
Route::post('/store-budget_branch', 'FormController@form_budget_branch_store_unique')->middleware('auth');
/* end */


/* appendix 1 */
Route::get('/appendix_one', 'FormController@form_appendix_one')->middleware('auth');
Route::post('/appendix_one', 'FormController@form_appendix_one_store')->middleware('auth');
Route::post('/store-appendix_one', 'FormController@form_store_appendix_one_unique')->middleware('auth');
/* end*/


/* appendix 2 */
Route::get('/appendix_two', 'FormController@form_appendix_two')->middleware('auth');
Route::post('/appendix_two', 'FormController@form_appendix_two_store')->middleware('auth');
Route::post('/store-appendix_two', 'FormController@form_store_appendix_two_unique')->middleware('auth');
/* end*/

/* appendix 3 */
Route::get('/appendix_three', 'FormController@form_appendix_three')->middleware('auth');
Route::post('/appendix_three', 'FormController@form_appendix_three_store')->middleware('auth');
Route::post('/store-appendix_three', 'FormController@form_store_appendix_three_unique')->middleware('auth');
/* end*/

/* appendix 4 */
Route::get('/appendix_four', 'FormController@form_appendix_four')->middleware('auth');
Route::post('/appendix_four', 'FormController@form_appendix_four_store')->middleware('auth');
Route::post('/store-appendix_four', 'FormController@form_store_appendix_four_unique')->middleware('auth');
/* end*/

/* appendix 5 */
Route::get('/appendix_five', 'FormController@form_appendix_five')->middleware('auth');
Route::post('/appendix_five', 'FormController@form_appendix_five_store')->middleware('auth');
Route::post('/store-appendix_five', 'FormController@form_store_appendix_five_unique')->middleware('auth');
/* end*/


/* appendix 6 */
Route::get('/appendix_six', 'FormController@form_appendix_six')->middleware('auth');
Route::post('/appendix_six', 'FormController@form_appendix_six_store')->middleware('auth');
Route::post('/store-appendix_six', 'FormController@form_store_appendix_six_unique')->middleware('auth');
/* end*/

/* appendix 7 */
Route::get('/appendix_seven', 'FormController@form_appendix_seven')->middleware('auth');
Route::post('/appendix_seven', 'FormController@form_appendix_seven_store')->middleware('auth');
Route::post('/store-appendix_seven', 'FormController@form_store_appendix_seven_unique')->middleware('auth');
/* end*/


/* appendix 8 */
Route::get('/appendix_eight', 'FormController@form_appendix_eight')->middleware('auth');
Route::post('/appendix_eight', 'FormController@form_appendix_eight_store')->middleware('auth');
Route::post('/store-appendix_eight', 'FormController@form_store_appendix_eight_unique')->middleware('auth');
/* end*/

/* appendix 9 */
Route::get('/appendix_nine', 'FormController@form_appendix_nine')->middleware('auth');
Route::post('/appendix_nine', 'FormController@form_appendix_nine_store')->middleware('auth');
Route::post('/store-appendix_nine', 'FormController@form_store_appendix_nine_unique')->middleware('auth');
/* end*/

//parameter page
Route::get('/parameter/{id}', 'FormController@parameterForm')->middleware('auth');

//end parameter

Route::get('/translate-to-bengali', function () {
    $data = Illuminate\Support\Facades\Request::get('data');
    $tr = new Stichoza\GoogleTranslate\GoogleTranslate('bn');
    return $tr->translate($data);
})->middleware('auth');

Route::post('/user-list', 'Admin\UserController@user_list')->middleware('auth');

Route::resource('users', 'Admin\UserController')->middleware('auth');



Route::get('auth-user-onchange', 'Admin\UserController@userOnchange')->middleware('auth');
Route::get('entry-user-onchange', 'Admin\UserController@authOnchange')->middleware('auth');
Route::get('deparment-user-onchange', 'Admin\UserController@departmentOnchange')->middleware('auth');
Route::get('deparment-user-onchange-auth', 'Admin\UserController@departmentOnchangeAuth')->middleware('auth');
Route::get('designation-user-onchange', 'Admin\UserController@designationOnchange')->middleware('auth');
Route::get('designation-user-onchange-auth', 'Admin\UserController@designationOnchangeAuth')->middleware('auth');
Route::get('activate-user-view/{userId}', 'Admin\UserController@activateUserView')->middleware('auth');
Route::get('inactivate-user-view/{userId}', 'Admin\UserController@InactivateUserView')->middleware('auth');


Route::get('usersedit/{any}/{def}', 'Admin\UserController@editUser')->middleware('auth');
// Route::get('indiv-stored-forms/{any}/{def}/{noti?}', 'FormController@storedForms')->middleware('auth');


Route::resource('roles', 'Admin\RoleController')->middleware('auth');

Route::resource('permissions', 'Admin\PermissionController')->middleware('auth');

Route::resource('designations', 'Admin\DesignationController')->middleware('auth');

Route::resource('departments', 'Admin\DepartmentController')->middleware('auth');

Route::resource('ministry', 'Admin\MinistryController')->middleware('auth');

Route::resource('office', 'Admin\OfficeController')->middleware('auth');


Route::resource('regularityauthority', 'Admin\RegularityauthorityController')->middleware('auth');


Route::resource('unitoffice', 'Admin\UnitofficeController')->middleware('auth');

Route::resource('govt-leave', 'Admin\LeaveRoutineController')->middleware('auth');

Route::resource('institutions', 'InstitutionsController')->middleware('auth');

Route::resource('division', 'Admin\DivisionController')->middleware('auth');



Route::resource('profile-info', 'Admin\ProfileController')->middleware('auth');
Route::get('profile/{any}', 'Admin\PublicProfileController@index');
Route::get('profile-data/{any}', 'Admin\PublicProfileController@profile_data');
Route::post('change-profile-image/{any}', 'Admin\ProfileController@change_profile_image');

Route::resource('reports', 'ReportController')->middleware('auth');
Route::get('create_report_one_point_two', 'ReportController@create_report_one_point_two')->middleware('auth');
Route::get('report-1', 'ReportController@report_1')->middleware('auth');
Route::get('report-2', 'ReportController@report_2')->middleware('auth');
Route::get('report-3', 'ReportController@report_3')->middleware('auth');
Route::get('report-4', 'ReportController@report_4')->middleware('auth');

Route::post('set-theme-mode', 'Admin\DashboardController@set_theme_mode')->middleware('auth');


Route::get('/home', 'Admin\DashboardController@index')->name('home')->middleware('auth');
Route::post('check-user-password', function (Request $request) {
    return check_user_password($request->pass);
})->middleware('auth');

//Swith Language
Route::post('switchh-language', function (Request $request) {
    //    print_r($request->language);die;
    $jhbfsa = SwitchLanguage($request->language);
    session()->put('language', $request->language);
    return $jhbfsa;
})->middleware('auth');

//Group
//
Route::get('create-group', 'GroupController@create_group')->middleware('auth');
Route::post('save-group', 'GroupController@save_group')->middleware('auth');
Route::post('update-group', 'GroupController@update_group')->middleware('auth');
Route::get('groups', 'GroupController@groups')->middleware('auth');
Route::delete('groups/{id}', 'GroupController@delete')->middleware('auth')->name('groups.delete');
Route::get('groups/{id}', 'GroupController@edit')->middleware('auth')->name('groups.edit');


//Send Form

Route::get('send-form', 'SendFormController@send_form')->middleware('auth');
Route::get('send-form-back/{id}', 'SendFormController@send_form_back')->middleware('auth');
// Route::get('send-form-back/{id}', 'FormController@send_form_back')->middleware('auth');
Route::get('send-form/{formId}', 'SendFormController@send_form_user_wise')->middleware('auth');
Route::get('send-form-entry-user/{formId}', 'SendFormController@send_form_entry_user_wise')->middleware('auth');
//send form entry user 6
Route::get('send-form-entry-user', 'SendFormController@send_form_entry_user')->middleware('auth');
Route::get('list-of-send-form', 'SendFormController@list_of_send_form')->middleware('auth');


/* send form individually */


Route::get('send-form-individual/{formId}', 'SendFormController@send_form_individual')->middleware('auth');


//received reports
Route::get('list-of-recieved-reports', 'SendFormController@list_of_recieved_reports')->middleware('auth');



/* reports check */

Route::get('list-of-reports', 'FormController@new_list_of_report')->middleware('auth');






Route::get('submit-form/{any}/{def?}', 'FormController@submit_form')->middleware('auth');

/* for form generator */
//Route::get('created-submit-form/{any}/{def?}', 'FormController@created_submit_form')->middleware('auth');
Route::get('created-submit-form/{any}/{def?}', 'FormController@created_submit_form')->middleware('auth');


//ajax approval
Route::get('approval-check/{user}/{formid?}', 'FormController@approvalCheck')->middleware('auth');
//ajax decline
Route::get('decline-feedback/{user}/{formid?}/{msg?}', 'FormController@declineFeedback')->middleware('auth');




// Route::post('storedforms', 'FormController@storedFormsTest')->middleware('auth');

// Route::post('storedforms', 'FormController@storedForms')->middleware('auth');


Route::get('create-unique-form/{any}', 'FormController@create_unique_form')->middleware('auth');
Route::get('indiv-stored-forms/{any}', 'FormController@indiv_stored_form')->middleware('auth');
Route::get('indiv-stored-forms/{any}/{def}/{noti?}', 'FormController@storedForms')->middleware('auth');


/* update_generated_form */
Route::post('generated_update', 'FormController@generated_update')->middleware('auth');



Route::post('get-form-for-submit', 'FormController@get_form_for_submit')->middleware('auth');
Route::post('get-stored-for-edit', 'FormController@get_stored_submit')->middleware('auth');
Route::post('get-form-to-create-unique-form', 'FormController@get_form_to_create_unique_form')->middleware('auth');

//Test
Route::get('report-requests', 'SendFormController@reportRequest')->middleware('auth');



Route::get('testBand', 'FormController@testBand')->middleware('auth');
Route::get('create_form_controller', 'FormController@CreateFormController')->middleware('auth');
Route::get('create_form_controller_demo', 'FormController@CreateFormControllerDemo')->middleware('auth');
Route::get('form_demo', 'FormController@formDemoController')->middleware('auth');
//Route::get('view_form_test_demo_sec', 'FormController@CreateFormControllerDemoSecond')->middleware('auth');

Route::get("addmore", "FormController@addMore");
Route::post("addmore", "FormController@addMorePost");


/**/

Route::get("targets", "IctController@targetShow");
Route::post("targets", "IctController@targetCreate");


/* extra data formcontroller  */

Route::get("pass-some-data/{id}", "FormController@passSomeData");


/* reminder notification send */

Route::get('reminder-notification/{userId}/{formId}', 'FormController@reminder_notification');



// Route::get('select-user-id','FormController@select_user_id');


Route::get('textfield-permission', 'FormController@textPermission');


//indiviual branch 
Route::get('individual-report-show/{any}/{form}', 'FormController@individualReport');

//compiled report
Route::get('compiled-report/{form_id}', 'FormController@compiledReport');


Route::get('report-classification/{form_id}', 'FormController@reportClassify');
//Reports List
Route::get('/report/list/{any}', 'FormController@list_of_report')->middleware('auth');




Route::get('form-tracker/{id}', 'FormController@formTracker')->middleware('auth');








/* column Update */
Route::post('column-update', 'FormController@columnUpdate')->middleware('auth');
Route::post('column-create', 'FormController@columnCreate')->middleware('auth');
Route::get('column-delete/{colname}/{table_name}', 'FormController@columnDelete')->middleware('auth');
Route::get('after-column/{tablename}', 'FormController@afterColumn')->middleware('auth');





/* sending process */

//Route::post('send-form-process', 'SendFormController@formProcess')->middleware('auth');
Route::post('send-form-process', 'SendFormController@formProcess')->middleware('auth');
Route::post('send-form-process-individual', 'SendFormController@formProcessIndividual')->middleware('auth');
Route::get('send-form-process-back/{formid}/{process}', 'SendFormController@formProcessBack')->middleware('auth');
Route::post('send-form-process-entry', 'SendFormController@formProcessEntry')->middleware('auth');



/* row remove */

Route::get('row-del-form/{del_id}/{table_name}', 'FormController@deleteColumn')->middleware('auth');



/* row check dynamic table */


Route::get('check-row-before-save/{table_name}', 'FormController@table_name_row_check')->middleware('auth');


/* dynamic table info */

Route::post('saved-format', 'FormController@savedFormat')->middleware('auth');



/* default form */


Route::post('saved-default-form', 'FormController@SaveDefaultForm')->middleware('auth');




/* quiz extra */

//Route::get('quiz', 'FormController@quizForm')->middleware('auth');


// test
Route::get('quiz/{id}', 'FormController@quizForm')->middleware('auth');

//end

//Route::get('/', 'Admin\DashboardController@index')->middleware('auth');
Route::get('quiz-home', 'Admin\DashboardController@index')->middleware('auth');
Route::post('quiz-question', 'FormController@quizPost')->middleware('auth');
Route::get('report-quiz', 'FormController@reportQuiz')->name('report-quiz')->middleware('auth');
Route::get('create-quiz', 'FormController@createQuiz')->middleware('auth');
Route::post('create-new-quiz', 'FormController@createNewQuiz')->middleware('auth');


/* leaderboard */


Route::get('leaderboard', 'FormController@leaderBoard')->middleware('auth');


/*get leaderboard*/
Route::get('leaderboard-get/{subject}', 'Result\ResultController@getLeaderBoard');





/* Create Class */




/* Subject */
Route::get('/subject', 'Subject\SubjectController@createSubject')->middleware('auth');
Route::get('/subject-data', 'Subject\SubjectController@showSubject')->middleware('auth');
Route::post('/subject-post', 'Subject\SubjectController@postSubject')->middleware('auth');









Route::get('/administrative-url', 'Subject\SubjectController@proman');


Route::get('/add-verfied-participants', 'Subject\SubjectController@addVerfied');
Route::post('/add-verfied-participants', 'Subject\SubjectController@addVerfiedStore');
Route::get('/add-verfied-participants-list', 'Subject\SubjectController@varifiedList')->name('list-get');
Route::get('/add-verfied-participants-edit/{check_id}', 'Subject\SubjectController@editVerfied');
Route::get('/add-verfied-participants-delete/{check_id}', 'Subject\SubjectController@deleteVerfied');
Route::put('/update-verfied-participants/{id}', 'Subject\SubjectController@updateVarified');

/* create subjective quiz */
Route::get('/create-subjective-quiz/{id}', 'SubjectiveQuiz\QuizController@createSubjectiveQuiz')->middleware('auth');
Route::post('/create-subjective-quiz-post', 'SubjectiveQuiz\QuizController@createSubjectiveQuizPost')->middleware('auth');


/* create subjective quiz */
Route::get('/create-subjective-quiz/{id}', 'SubjectiveQuiz\QuizController@createSubjectiveQuiz')->middleware('auth');
Route::post('/create-subjective-quiz-post', 'SubjectiveQuiz\QuizController@createSubjectiveQuizPost')->middleware('auth');

Route::get('/quiz-data', 'SubjectiveQuiz\QuizController@quizData')->middleware('auth');
/* main question creation */

Route::get('/create-subjective-question/{id}', 'Question\QuestionController@createSubjectiveQuestion')->middleware('auth');
Route::post('/create-subjective-question-post', 'Question\QuestionController@createSubjectiveQuestionStore')->middleware('auth');


/* reset */
Route::get('/reset', 'Question\QuestionController@resetDb')->middleware('auth');
/* end */

/* answers */
Route::get('/answers/{id}', 'Answer\AnswerController@seeAnswers')->middleware('auth');

/* reset database */



/* Combined Result */


Route::get('/combined-result/{id}', 'Result\ResultController@combinedResult')->middleware('auth');

/* Individual Result */

Route::get('/indiv-result/{id}/{user_id}', 'Result\ResultController@individualResult')->middleware('auth');


Route::get('/student-panel', 'FormController@homeStudentPanel')->middleware('auth');



/* Exam Panel */
Route::get('/exams', 'Exams\ExamController@enrolledExams')->middleware('auth');
/* Student Quiz Panel */
Route::get('/exams/quizes/{subject_id}', 'Exams\ExamController@studetnQuizes')->middleware('auth');



/* Quiz Alternate */



/* certification */
Route::get('/certification/{quiz_id}/{user_id}', 'Certificate\CertificateController@viewCertificate')->middleware('auth');

/* Model Test Module */
Route::get('/modeltest', 'ModelTest\ModelTestController@createModelTest')->middleware('auth');
Route::post('/modeltest-post', 'ModelTest\ModelTestController@postModelTest')->middleware('auth');





/* fetch division */
Route::post('/selected-div-wise-subject', 'ModelTest\ModelTestController@selectedDivWiseSubject')->middleware('auth');




/* Model Test Students */
Route::get('/student-model-test', 'ModelTest\ModelTestController@studentModelTest')->middleware('auth');
Route::get('/student-modeltest-id/{testid}', 'ModelTest\ModelTestController@studentTestId')->middleware('auth');


/* facebook login */

Route::get('login/facebook', 'SocialController@facebookRedirect');
Route::get('login/facebook/callback', 'SocialController@loginWithFacebook');


/* google login */

Route::get('login/google', 'SocialController@googleRedirect');
Route::get('login/google/callback', 'SocialController@loginWithGoogle');



/* Perticipant && Creator */

Route::get('join-pc/{authid}', 'Admin\DashboardController@joinPc');
Route::get('join-qc/{authid}', 'Admin\DashboardController@joinQc');


/* Creator Information Update */

Route::post('info-update', 'Admin\QuizCreatorController@QCupdate');



/*top leads*/
Route::get('get-top-leader/{quizid}', 'FormController@topLeads');