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
Route::any('facebookRegistration','UserController@redirectToProvider1');
Route::any('facebookRegistration/callback','UserController@handleProviderCallback1');

Route::get('user_login','UserController@user_login');
Route::post('check_user_login','UserController@check_user_login');
Route::get('user_logout','UserController@user_logout');
Route::post('register_user','UserController@register_user');

Route::get('my_profile','MyController@getProfile');
Route::post('addNewAddress','MyController@addNewAddress');
Route::get('deleteAddress/{address_book_id}','MyController@deleteAddress');
// route for admin panel
Route::get('/admin', function() { return Redirect::to("admin/login"); });

//default route
Route::get('/','IndexController@getIndexData')->name('home');
Route::get('/mobile','MobileController@index');

Route::get('gridview/{id}', 'IndexController@getGridview')->name('showgridview');

Route::get('getCatalogueProducts/{id}', 'IndexController@getCatalogueProducts');
Route::post('filterProducts', 'IndexController@filterProducts');
Route::post('filterCatalogueProducts', 'IndexController@filterCatalogueProducts');
Route::post('sortProducts', 'IndexController@sortProducts');
Route::post('sortCatalogueProducts', 'IndexController@sortCatalogueProducts');

//store details for web
Route::get('StoreDetails/{city}','IndexController@getStoreDetails');
Route::get('/getimages', 'IndexController@getimages');

//products on sale
Route::get('products_on_sale', 'SaleController@getSaleProducts');
Route::post('filterSaleProducts', 'SaleController@filterSaleProducts');
Route::post('sortSaleProducts', 'SaleController@sortSaleProducts');

//add to wishlist
Route::get('wishlist', "WishlistController@getWishlist");
Route::post('add_to_wishlist', 'WishlistController@add_to_wishlist');
Route::get('unlike_product/{products_id}', 'WishlistController@unlike_product');

//add to cart
Route::post('add_to_cart', 'CartController@add_to_cart');
Route::post('add_to_cart_with_options', 'CartController@add_to_cart_with_options');
Route::get('cart', "CartController@getCart");
Route::get('remove_from_cart/{products_id}', 'CartController@remove_from_cart');
Route::post('update_cart_options', 'CartController@update_cart_options');
Route::post('getCartProduct', "CartController@getCartProduct");
Route::post('update_cart_quantity', 'CartController@update_cart_quantity');

//order
 Route::post('place_order','OrderController@addToOrder');
Route::get('gridview/{cat}/product/{id}','ProductController@getProduct')->name('showproduct');
Route::get('tags/{cat}/product/{id}','ProductController@getProduct');
//Route::get('gridview/product/{id}','ProductController@getProduct')->name('showproduct');
Route::get('getCatalogueProducts/product/{id}','ProductController@getProduct');

//products related to tags
Route::get('tags/{tagId}','TagsController@getProductsRelatedToTags')->name('showProductsRelatedToTags');
Route::post('filterTagsProducts', 'TagsController@filterTagsProducts');
Route::post('sortTagsProducts', 'TagsController@sortTagsProducts');
Route::get('tags/gridview/product/{id}','ProductController@getProduct');


//search products
Route::get('search','SearchController@search')->name('search');
Route::post('filterSearchedProducts', 'SearchController@filterSearchedProducts');
Route::post('sortSearchedProducts', 'SearchController@sortSearchedProducts');

//reviews & testimonials
Route::get('AboutUs','TestimonialController@showAboutUs');

Route::get('terms_conditions','TestimonialController@showTermsConditions');
Route::get('returns_exchanges','TestimonialController@showReturnExchange');
Route::get('privacy_policy','TestimonialController@showPrivacyPolicy');
Route::get('shipping_policy','TestimonialController@showShippingPolicy');
Route::get('PaymentOption','TestimonialController@showPaymentOptions');
Route::get('trident_advantages','TestimonialController@showAdvantages');
Route::get('trident_news','TestimonialController@showNews');
Route::get('careers','TestimonialController@showCareers');
//Route::get('CareerDepartment','TestimonialController@showCareerDepartment');
Route::get('CareerDepartment/{id}','TestimonialController@showCareerDepartment');


Route::get('Testimonials','TestimonialController@showTestimonials');
Route::POST('add_review','TestimonialController@add_review');

Route::get('faq','FAQController@getAllFAQ');

Route::group(['prefix' => 'admin'], function () {
	
	Route::group(['namespace' => 'Admin'], function () {

		Route::group(['middleware' => 'auth'], function () {
			Route::get('/dashboard/{reportBase}', 'AdminController@dashboard');
			Route::get('/post', 'AdminController@myPost');
			//show admin personal info record
			Route::get('/adminInfo', 'AdminController@adminInfo');

		/*
		|--------------------------------------------------------------------------
		| categories/Product Controller Routes
		|--------------------------------------------------------------------------
		|
		| This section contains categories/Product Controller Routes
		| 
		|
		*/
			//Price
			Route::post('/getPrice','AdminPriceController@getPrice');

			//main listingManufacturer
			Route::get('/listingManufacturer', 'AdminManufacturerController@listingManufacturer');
			Route::get('/addManufacturer', 'AdminManufacturerController@addManufacturer');
			Route::post('/addNewManufacturer', 'AdminManufacturerController@addNewManufacturer');
			Route::get('/editManufacturer/{id}', 'AdminManufacturerController@editManufacturer');
			Route::post('/updateManufacturer', 'AdminManufacturerController@updateManufacturer');
			Route::post('/deleteManufacturer', 'AdminManufacturerController@deleteManufacturer');

			//main categories
			Route::get('/listingCategories', 'AdminCategoriesController@listingCategories');
			Route::get('/addCategory', 'AdminCategoriesController@addCategory');
			Route::post('/addNewCategory', 'AdminCategoriesController@addNewCategory');
			Route::get('/editCategory/{id}', 'AdminCategoriesController@editCategory');
			Route::post('/updateCategory', 'AdminCategoriesController@updateCategory');
			Route::post('/deleteCategory', 'AdminCategoriesController@deleteCategory');
			Route::post('/checkCategoryAssociate', 'AdminCategoriesController@checkCategoryAssociate');
			

			//sub categories
			Route::get('/listingSubCategories', 'AdminCategoriesController@listingSubCategories');
			Route::get('/addSubCategory', 'AdminCategoriesController@addSubCategory');
			Route::post('/addNewSubCategory', 'AdminCategoriesController@addNewSubCategory');
			Route::get('/editSubCategory/{id}', 'AdminCategoriesController@editSubCategory');
			Route::post('/updateSubCategory', 'AdminCategoriesController@updateSubCategory');
			Route::get('/deleteSubCategory/{id}', 'AdminCategoriesController@deleteSubCategory');

			//catalogue
			Route::get('/addCatalogue', 'AdminCategoriesController@addCatalogue');
			Route::post('/addNewCatalogue', 'AdminCategoriesController@addNewCatalogue');
			Route::get('/listingCatalogues', 'AdminCategoriesController@listingCatalogues');
			Route::get('/deleteCatalogue/{id}', 'AdminCategoriesController@deleteCatalogue');
			Route::get('/editCatalogue/{id}', 'AdminCategoriesController@editCatalogue');
			Route::get('/editCatalogue/deleteCatalogueProduct/{id}', 'AdminCategoriesController@deleteCatalogueProduct');
			

			//sub sub categories
            Route::get('/listingSubSubCategories', 'AdminCategoriesController@listingSubSubCategories');
            Route::get('/addSubSubCategory', 'AdminCategoriesController@addSubSubCategory');
            Route::post('/addNewSubSubCategory', 'AdminCategoriesController@addNewSubSubCategory');
            Route::get('/editSubSubCategory/{id}', 'AdminCategoriesController@editSubSubCategory');
            Route::get('/deleteSubSubCategory/{id}', 'AdminCategoriesController@deleteSubSubCategory');
            Route::post('/updateSubSubCategory', 'AdminCategoriesController@updateSubSubCategory');

            //top categories
            Route::get('/topCategories', 'AdminCategoriesController@topCategories');
            Route::post('/addNewTopCategory','AdminCategoriesController@addNewTopCategories');
            Route::get('/deleteTopCategory/{id}', 'AdminCategoriesController@deleteTopCategory');

           
			//products
			Route::get('/listingProducts', 'AdminProductsController@listingProducts');
			Route::get('/addProduct', 'AdminProductsController@addProduct');
			Route::post('/addNewProduct', 'AdminProductsController@addNewProduct');

			//add attribute against newly added product
			Route::get('/addProductAttribute/{id}/', 'AdminProductsController@addProductAttribute');
			Route::get('/addProductImages/{id}/', 'AdminProductsController@addProductImages');
			Route::post('/addNewDefaultAttribute', 'AdminProductsController@addNewDefaultAttribute');
			Route::post('/addNewProductAttribute', 'AdminProductsController@addNewProductAttribute');
			Route::post('/updateProductAttribute', 'AdminProductsController@updateProductAttribute');
			Route::post('/updateDefaultAttribute', 'AdminProductsController@updateDefaultAttribute');
			Route::post('/deleteProduct', 'AdminProductsController@deleteProduct');
			Route::post('/deleteProductAttribute', 'AdminProductsController@deleteProductAttribute');
			Route::post('/deleteDefaultAttribute', 'AdminProductsController@deleteDefaultAttribute');
			Route::post('editProductAttribute', 'AdminProductsController@editProductAttribute');
			Route::post('editDefaultAttribute', 'AdminProductsController@editDefaultAttribute');
			Route::post('deleteProductAttributeModal', 'AdminProductsController@deleteProductAttributeModal');
			Route::post('deleteDefaultAttributeModal', 'AdminProductsController@deleteDefaultAttributeModal');

			//product attribute
			Route::post('/addNewProductImage', 'AdminProductsController@addNewProductImage');
			Route::post('editProductImage', 'AdminProductsController@editProductImage');
			Route::post('/updateProductImage', 'AdminProductsController@updateProductImage');
			Route::post('/deleteProductImageModal', 'AdminProductsController@deleteProductImageModal');
			Route::post('/deleteProductImage', 'AdminProductsController@deleteProductImage');
			Route::get('/editProduct/{id}', 'AdminProductsController@editProduct');
			Route::post('/updateProduct', 'AdminProductsController@updateProduct');	
			Route::post('/getOptions', 'AdminProductsController@getOptions');	
			Route::post('/getOptionsValue', 'AdminProductsController@getOptionsValue');	


			//Attribute
			Route::get('/listingAttributes', 'AdminProductsController@listingAttributes');
			Route::get('/addAttributes', 'AdminProductsController@addAttributes');
			Route::post('/addNewAttributes', 'AdminProductsController@addNewAttributes');
			Route::get('/editAttributes/{id}/{language_id}', 'AdminProductsController@editAttributes');
			Route::post('/updateAttributes/', 'AdminProductsController@updateAttributes');
			Route::post('/deleteAttribute', 'AdminProductsController@deleteAttribute');
			Route::post('/addAttributeValue', 'AdminProductsController@addAttributeValue');
			Route::post('/updateAttributeValue', 'AdminProductsController@updateAttributeValue');
			Route::post('/checkAttributeAssociate', 'AdminProductsController@checkAttributeAssociate');
			Route::post('/checkValueAssociate', 'AdminProductsController@checkValueAssociate');
			Route::post('/deleteValue', 'AdminProductsController@deleteValue');

			
			//stores
			Route::get('/listingStores','AdminStoreController@getstores');
			Route::post('/addNewStores','AdminStoreController@addNewStores');
			Route::get('/addStores','AdminStoreController@addStores');
			Route::get('/editStores/{id}','AdminStoreController@editStores');
			Route::get('/deleteStores/{id}','AdminStoreController@deleteStores');
			Route::post('/updateStores','AdminStoreController@updateStores');
			

			//manageAppLabel
			Route::get('/listingAppLabels', 'AdminAppLabelsController@listingAppLabels');
			Route::get('/addAppKey', 'AdminAppLabelsController@addAppKey');
			Route::post('/addNewAppLabel', 'AdminAppLabelsController@addNewAppLabel');
			Route::get('/editAppLabel/{id}', 'AdminAppLabelsController@editAppLabel');
			Route::post('/updateAppLabel/', 'AdminAppLabelsController@updateAppLabel');
			Route::get('/manageAppLabel', 'AdminAppLabelsController@manageAppLabel');


			//customers
			Route::get('/listingCustomers', 'AdminCustomersController@listingCustomers');
			Route::get('/addCustomers', 'AdminCustomersController@addCustomers');
			Route::post('/addNewCustomers', 'AdminCustomersController@addNewCustomers');


			//add adddresses against customers
			Route::get('/addCustomerAddresses/{id}/', 'AdminCustomersController@addCustomerAddresses');
			Route::post('/addNewCustomerAddress', 'AdminCustomersController@addNewCustomerAddress');
			Route::post('/editAddress', 'AdminCustomersController@editAddress');
			Route::post('/updateAddress', 'AdminCustomersController@updateAddress');
			Route::post('/deleteAddress', 'AdminCustomersController@deleteAddress');

			//edit customer
			Route::get('/editCustomers/{id}', 'AdminCustomersController@editCustomers');
			Route::post('/updateCustomers', 'AdminCustomersController@updateCustomers');
			Route::post('/deleteCustomers', 'AdminCustomersController@deleteCustomers');

			//orders
			Route::get('/listingOrders', 'AdminOrdersController@listingOrders');		
			Route::get('/viewOrder/{id}', 'AdminOrdersController@viewOrder');
			Route::post('/updateOrder', 'AdminOrdersController@updateOrder');
			Route::post('/deleteOrder', 'AdminOrdersController@deleteOrder');

			//Payment setting
			Route::get('/paymentSetting', 'AdminPaymentController@paymentSetting');
			Route::post('/updatePaymentSetting', 'AdminPaymentController@updatePaymentSetting');

			//orders
			Route::get('/listingOrderStatus', 'AdminSiteSettingController@listingOrderStatus');
			Route::get('/addOrderStatus', 'AdminSiteSettingController@addOrderStatus');
			Route::post('/addNewOrderStatus', 'AdminSiteSettingController@addNewOrderStatus');
			Route::get('/editOrderStatus/{id}', 'AdminSiteSettingController@editOrderStatus');
			Route::post('/updateOrderStatus', 'AdminSiteSettingController@updateOrderStatus');
			Route::post('/deleteOrderStatus', 'AdminSiteSettingController@deleteOrderStatus');
			Route::get('/alertSetting', 'AdminSiteSettingController@alertSetting');
			Route::post('/updateAlertSetting', 'AdminSiteSettingController@updateAlertSetting');
			

			//setting page
			Route::get('/setting', 'AdminSiteSettingController@setting');
			Route::post('/updateSetting', 'AdminSiteSettingController@updateSetting');

			//language setting
			Route::get('/getLanguages', 'AdminSiteSettingController@getLanguages');
			Route::get('/listingLanguages', 'AdminSiteSettingController@listingLanguages');
			Route::get('/addLanguages', 'AdminSiteSettingController@addLanguages');
			Route::post('/addNewLanguages', 'AdminSiteSettingController@addNewLanguages');
			Route::get('/editLanguages/{id}', 'AdminSiteSettingController@editLanguages');
			Route::post('/updateLanguages', 'AdminSiteSettingController@updateLanguages');
			Route::post('/deletelanguage', 'AdminSiteSettingController@deletelanguage');

            //Reviews
            Route::get('/listingReviews', 'AdminReviewsController@listingReviews');
			Route::post('/submit_review', 'AdminReviewsController@submit_review');
			
			//coupons
			Route::get('/listingBanners', 'AdminBannersController@listingBanners');
			Route::get('/addBanner', 'AdminBannersController@addBanner');
			Route::post('/addNewBanner', 'AdminBannersController@addNewBanner');
			Route::get('/editBanner/{id}', 'AdminBannersController@editBanner');
			Route::post('/updateBanner', 'AdminBannersController@updateBanner');
			Route::post('/deleteBanner/', 'AdminBannersController@deleteBanner');

			//profile setting
			Route::get('/adminProfile', 'AdminController@adminProfile');
			Route::post('/updateProfile', 'AdminController@updateProfile');
			Route::post('/updateAdminPassword', 'AdminController@updateAdminPassword');

			//reports 
			Route::get('/statsCustomers', 'AdminReportsController@statsCustomers');
			Route::get('/statsProductsPurchased', 'AdminReportsController@statsProductsPurchased');
			Route::get('/statsProductsLiked', 'AdminReportsController@statsProductsLiked');
			Route::get('/productsStock', 'AdminReportsController@productsStock');
			Route::post('/productSaleReport', 'AdminReportsController@productSaleReport');

			//news categories
			Route::get('/listingNewsCategories', 'AdminNewsCategoriesController@listingNewsCategories');
			Route::get('/addNewsCategory', 'AdminNewsCategoriesController@addNewsCategory');
			Route::post('/addNewsNewCategory', 'AdminNewsCategoriesController@addNewsNewCategory');
			Route::get('/editNewsCategory/{id}', 'AdminNewsCategoriesController@editNewsCategory');
			Route::post('/updateNewsCategory', 'AdminNewsCategoriesController@updateNewsCategory');
			Route::post('/deleteNewsCategory', 'AdminNewsCategoriesController@deleteNewsCategory');

			//news
			Route::get('/listingNews', 'AdminNewsController@listingNews');
			Route::get('/addNews', 'AdminNewsController@addNews');
			Route::post('/addNewNews', 'AdminNewsController@addNewNews');
			Route::get('/editNews/{id}', 'AdminNewsController@editNews');
			Route::post('/updateNews', 'AdminNewsController@updateNews');
			Route::post('/deleteNews', 'AdminNewsController@deleteNews');

			//pages controller
			Route::get('/listingPages', 'AdminPagesController@listingPages');
			Route::get('/addPage', 'AdminPagesController@addPage');
			Route::post('/addNewPage', 'AdminPagesController@addNewPage');
			Route::get('/editPage/{id}', 'AdminPagesController@editPage');
			Route::post('/updatePage', 'AdminPagesController@updatePage');
			Route::get('/pageStatus', 'AdminPagesController@pageStatus');

Route::post('/getSubCat', 'CategoriesController@getCategories');


		});

		//log in
		Route::get('/login', 'AdminController@login');
		Route::post('/checkLogin', 'AdminController@checkLogin');

		//log out
		Route::get('/logout', 'AdminController@logout');
});

});

/*
|--------------------------------------------------------------------------
| App Controller Routes
|--------------------------------------------------------------------------
|
| This section contains all Routes of application
| 
|
*/

Route::group(['namespace' => 'App'], function () {
	
	Route::post('/getMultipleSubCategories', 'CategoriesController@getMultipleSubCategories');
	Route::post('/getMultipleSubSubCategories', 'CategoriesController@getMultipleSubSubCategories');
	
	Route::post('/getCategories', 'CategoriesController@getCategories');
	Route::post('/getSubCat', 'CategoriesController@getSubCat');
	Route::post('/getSubSubCat', 'CategoriesController@getSubSubCat');
		Route::post('/getProducts', 'CategoriesController@getProducts');

	//registration url
	Route::post('/registerDevices', 'CustomersController@registerDevices');

	//registration url
	Route::post('/processRegistration', 'CustomersController@processRegistration');

	//update customer info url
	Route::post('/updateCustomerInfo', 'CustomersController@updateCustomerInfo');

	//update customer password url
	//Route::post('/updateCustomerPassword', 'CustomersController@updateCustomerPassword');

	// login url
	Route::post('/processLogin', 'CustomersController@processLogin');

	//social login
	Route::post('/facebookRegistration', 'CustomersController@facebookRegistration');
	Route::post('/googleRegistration', 'CustomersController@googleRegistration');
	//push notification setting
	Route::post('/notify_me', 'CustomersController@notify_me');

	// forgot password url
	Route::post('/processForgotPassword', 'CustomersController@processForgotPassword');


	/*
	|--------------------------------------------------------------------------
	| Location Controller Routes
	|--------------------------------------------------------------------------
	|
	| This section contains countries shipping detail
	| This section contains links of affiliated to address
	|
	*/

	//get country url
	Route::post('/getCountries', 'LocationController@getCountries');

	//get zone url
	Route::post('/getZones', 'LocationController@getZones');

	//get all address url
	Route::post('/getAllAddress', 'LocationController@getAllAddress');

	//address url
	Route::post('/addShippingAddress', 'LocationController@addShippingAddress');

	//update address url
	Route::post('/updateShippingAddress', 'LocationController@updateShippingAddress');

	//update default address url
	Route::post('/updateDefaultAddress', 'LocationController@updateDefaultAddress');

	//delete address url
	Route::post('/deleteShippingAddress', 'LocationController@deleteShippingAddress');


	/*
	|--------------------------------------------------------------------------
	| Product Controller Routes
	|--------------------------------------------------------------------------
	|
	| This section contains product data
	| Such as:
	| top seller, Deals, Liked, categroy wise or category individually and detail of every product.
	*/
   
	//get categories
	Route::post('/allCategories', 'MyProductController@allCategories');

	//get categories
	Route::post('/allSubCategories', 'MyProductController@allSubCategories');

	//getAllProducts
	Route::post('/getAllProducts', 'MyProductController@getAllProducts');

	//getTopSellerProducts
	Route::post('/getTopSellerProducts', 'MyProductController@getTopSellerProducts');

	//getSpecialProductsDeal
	Route::post('/getSpecialProductsDeal', 'MyProductController@getSpecialProductsDeal');

	//getProductDetail
	Route::post('/getMostLikedProducts', 'MyProductController@getMostLikedProducts');

	//like products
	Route::post('/likeProduct', 'MyProductController@likeProduct');

	//unlike products
	Route::post('/unlikeProduct', 'MyProductController@unlikeProduct');

	//get filters
	Route::post('/getFilters', 'MyProductController@getFilters');

	//get getFilterproducts
	Route::post('/getFilterproducts', 'MyProductController@getFilterproducts');

	//get getSignleCategory
	Route::post('/getSingleCategory', 'MyProductController@getSingleCategory');

	//get getSignleCategory
	Route::post('/getProductDetail', 'MyProductController@getProductDetail');

	//get getWishList
	Route::post('/getWishList', 'MyProductController@getWishList');

	//get getWishList
	Route::post('/getSearchData', 'MyProductController@getSearchData');


	/*
	|--------------------------------------------------------------------------
	| News Controller Routes
	|--------------------------------------------------------------------------
	|
	| This section contains news data
	| Such as:
	| top news or category individually and detail of every news.
	*/

	//get categories
	Route::post('/allNewsCategories', 'NewsController@allNewsCategories');

	//getAllProducts
	Route::post('/getAllNews', 'NewsController@getAllNews');



	/*
	|--------------------------------------------------------------------------
	| Reviews Controller Routes
	|--------------------------------------------------------------------------
	|
	| This section contains review of every customer towords products
	| 
	*/
	/*

	//add review
	Route::get('/addReview', 'MyProductController@addReview');

	//add editReview
	Route::get('/editReview', 'MyProductController@editReview');

	//add review
	Route::get('/deleteReview', 'MyProductController@deleteReview');
	*/

	/*
	|--------------------------------------------------------------------------
	| Cart Controller Routes
	|--------------------------------------------------------------------------
	|
	| This section contains customer cart products
	| 
	*/


	//get Cart
	Route::post('/getCart', 'CartController@getCart');

	//add To Cart
	Route::post('/addToCart/', 'CartController@addToCart');

	//add updateCart
	Route::post('/updateCart', 'CartController@updateCart');

	//delete Cart
	Route::post('/deleteFromCart', 'CartController@deleteFromCart');


	/*
	|--------------------------------------------------------------------------
	| Cart Controller Routes
	|--------------------------------------------------------------------------
	|
	| This section contains customer orders
	| 
	*/


	//get all orders
	Route::get('/generateBraintreeToken', 'OrderController@generateBraintreeToken');

	//add To order
	Route::post('/addToOrder', 'OrderController@addToOrder');

	//get all orders
	Route::post('/getOrders', 'OrderController@getOrders');

	//get default payment method
	Route::post('/getPaymentMethods', 'OrderController@getPaymentMethods');

	//get shipping / tax Rate
	Route::post('/getRate', 'OrderController@getRate');

	//get Coupon
	Route::post('/getCoupon', 'OrderController@getCoupon');


	/*
	|--------------------------------------------------------------------------
	| Banner Controller Routes
	|--------------------------------------------------------------------------
	|
	| This section contains banners, banner history
	| 
	*/


	//get banners
	Route::get('/getBanners', 'BannersController@getBanners');

	//banners history
	Route::post('/bannerHistory', 'BannersController@bannerHistory');



	/*
	|--------------------------------------------------------------------------
	| App setting Controller Routes
	|--------------------------------------------------------------------------
	|
	| This section contains app  languages
	| 
	*/
	

	Route::get('/siteSetting', 'AppSettingController@siteSetting');
	//old app label
	Route::post('/appLabels', 'AppSettingController@appLabels');
	//new app label
	Route::get('/appLabels3', 'AppSettingController@appLabels3');

	Route::post('/contactUs', 'AppSettingController@contactUs');
	
	Route::get('/getLanguages', 'AppSettingController@getLanguages');

	
	/*
	|--------------------------------------------------------------------------
	| Page Controller Routes
	|--------------------------------------------------------------------------
	|
	| This section contains news data
	| Such as:
	| top Page individually and detail of every Page.
	*/
	

	//getAllPages
	Route::post('/getAllPages', 'PagesController@getAllPages');
	
});
