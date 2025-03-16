<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\Auth\RegisterController;
use App\Http\Controllers\Api\Modules\ProductController;
use App\Http\Controllers\Api\Modules\ContactController;
use App\Http\Controllers\Api\Modules\BlogController;




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

Route::post('register', [RegisterController::class, 'register']);
Route::post('/login', [RegisterController::class, 'login']);



Route::get('index', [ProductController::class, 'getTotalList']);
Route::post('create', [ProductController::class, 'ProductCreate']);
Route::patch('update/{id}', [ProductController::class, 'ProductUpdate']);
Route::get('show/{id}', [ProductController::class, 'show']);


Route::post('create/contact', [ContactController::class, 'contactCreate']);
Route::post('list/contact', [ContactController::class, 'getAllContact']);
Route::post('delete/contact/{id}', [ContactController::class, 'deleteContact']);
Route::post('update/contact', [ContactController::class, 'updateMessage']);


Route::post('create/blog', [BlogController::class, 'blogCreate']);
Route::post('list/blog', [BlogController::class, 'getAllBlog']);
Route::post('delete/blog/{id}', [BlogController::class, 'deleteBlog']);
Route::post('update/blog', [BlogController::class, 'updateBlog']);
Route::post('fetch/single-blog', [BlogController::class, 'getSingleBlog']);

Route::post('add/like-blog', [BlogController::class, 'addLike']);
Route::post('remove/like-blog', [BlogController::class, 'deleteLike']);
Route::post('fetch/like-blog', [BlogController::class, 'getAllLikes']);
Route::post('add/comment-blog', [BlogController::class, 'addComment']);
Route::post('remove/comment-blog', [BlogController::class, 'deleteComment']);
Route::post('fetch/comment-blog', [BlogController::class, 'getAllComments']);
