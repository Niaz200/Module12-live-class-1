<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DataController;
use App\Http\Controllers\ProfileController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    Route::get('/data', [DataController::class, 'getData']);
    Route::get('/invoices', [DataController::class, 'getInvoices'])->name('invoices');
    Route::get('/invoice/{id}', [DataController::class, 'getInvoice'])->name('invoice');
});


Route::get('/books', [DataController::class, 'getBooks'])->name('books');
Route::get('/createbook', [DataController::class, 'createBook'])->name('cb');

require __DIR__.'/auth.php';
