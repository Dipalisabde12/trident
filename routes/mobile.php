<?php
	/*
	Project Name: IonicEcommerce
	Project URI: http://ionicecommerce.com
	Author: VectorCoder Team
	Author URI: http://vectorcoder.com/
	Version: 2.2
	*/
	header("Cache-Control: no-cache, must-revalidate");
	header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
	header('Access-Control-Allow-Origin:  *');
	header('Access-Control-Allow-Methods:  POST, GET, OPTIONS, PUT, DELETE');
	header('Access-Control-Allow-Headers:  Content-Type, X-Auth-Token, Origin, Authorization');

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/



/*
|--------------------------------------------------------------------------
| Admin controller Routes
|--------------------------------------------------------------------------
|
| This section contains all admin Routes
| 

|
*/

//default route
Route::get('/web','IndexController@getIndexData');
Route::get('/','MobileController@index');
Route::get('/shop-list','MobileController@shoplist');

Route::get('/shop-single','MobileController@shopsingle');
Route::get('/testimonial','MobileController@testimonial');
Route::get('/privacy-policy','MobileController@privacypolicy');
Route::get('/trident-advantage','MobileController@tridentadv');
Route::get('/trident-news','MobileController@tridentnews');
Route::get('/shipping-policy','MobileController@shippingpolicy');
Route::get('/payment-option','MobileController@payoption');
Route::get('/return-policy','MobileController@returnpolicy');
Route::get('/terms-conditions','MobileController@termsconditions');
Route::get('/faq1','MobileController@faq1');
Route::get('/aboutus','MobileController@aboutus');
Route::get('/wishlist-mobile','MobileController@wishlist');
Route::get('/bag','MobileController@bag');
Route::get('/checkout','MobileController@checkout');
Route::get('/profile','MobileController@profile');
?>