<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\NewApiController;
use App\Http\Controllers\Api\userRegisterController;
use App\Http\Controllers\Api\QuizController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('profile/{any}', [\App\Http\Controllers\Admin\ProfileController::class,'index']);
Route::post('apicheck', 'Admin\ProfileController@profile_data');



Route::get('/users/{id?}',[NewApiController::class,'showUser']);

Route::post('create-new-quiz',  [NewApiController::class, 'createNewQuiz']);

// Route::post('todo',  [NewApiController::class, 'createNewQuiz']);

Route::post('todo',  'Api\CreateQuizController@createTodo');
Route::get('todo-list',  'Api\CreateQuizController@createTodoList');



/* api routes */
/* register */
Route::post('api-user-registration', 'Api\userRegisterController@userRegisterController');
/* login */
Route::post('api-user-login', 'Api\userRegisterController@userLoginController');




/* single quiz get */

Route::get('api-quizes-get/{subjective_quiz_id?}/{userid?}', 'Api\QuizController@getQuiz');

/* All quiz get */
Route::get('get-all-quizes/{userid?}', 'Api\QuizController@getAllQuizes');

/* User Answer Get */

Route::post('get-user-answers', 'Api\QuizController@getUserAnswer');




/* Create Quiz */

Route::post('create-quiz-api', 'Api\QuizController@createQuiz');


/* Trending Now */

Route::get('get-all-trending-quiz', 'Api\QuizController@trendingNow');

/* Top Picks */

Route::get('get-all-top-picks', 'Api\QuizController@topPicks');


/* Stars Of The Week */
Route::get('get-top-stars', 'Api\QuizController@starsWeek');



/* Top Categories */
Route::get('get-top-categories', 'Api\QuizController@topCate');


Route::get('get-top-leader/{quizid}', 'Api\QuizController@topLeads');



/* Our Sponsers */
Route::get('get-sponsers', 'Api\QuizController@topSponsers');



/*get creators*/
Route::get('get-creators', 'Api\QuizController@getCreators');

/*active creators creators*/
Route::get('active-creator/{activeCreator}', 'Api\QuizController@activeCreator');


/* Leaderboard */
// Route::get('get-leaderboard/{quizid}', 'Api\QuizController@leaderBoardGet')->middleware('auth');




/* Update User Type*/
Route::get('user-upgradation/{userId}', 'Api\userRegisterController@userUpgradation');

/*Update User Quiz Creator  */
Route::get('user-upgradation-creator/{userId}', 'Api\userRegisterController@userUpgradationCreator');



/* Creator Information Update */

Route::get('showSubAll',  'Api\CreateQuizController@showSubjectQuiz');


/* show all quiz */
Route::post('create-subjective-quiz-post',  'Api\CreateQuizController@createQuizPost');

/* show all quiz */
Route::get('showquizAll/{userId}',  'Api\CreateQuizController@showquizAll');

/* Create Question */

Route::post('create-question',  'Api\CreateQuizController@createQuestion');


/* info update */
Route::post('creator-info-update',  'Api\userRegisterController@creatorInformation');


/* quiz view */
Route::get('view-question-page/{quizid}',  'Api\QuizController@questionViewPage');


/* Arhieved */
Route::get('archived',  'Api\QuizController@archived');

/* Upcoming */
Route::get('upcoming',  'Api\QuizController@upcoming');


