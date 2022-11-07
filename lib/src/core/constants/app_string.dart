class AppStrings{
  ///Core
  ///Global
  ///Login
  ///Validation
  ///Regex Email
  ///Pizza
  ///Profile
  /////Cart
  ///Order page
  ///Database
  //Core
  String appName= "DOC PLUS";

  //Global
  static const String home = "My Pizza";
  static const String orders = "Orders";
  static const String cart = "My Cart";
  static const String profile = "Profile";
  static const String quotes1 ="The care you care about";
  static const String quotes2 ="Healthcare for life";

  //Login Page
  static const String login ="Login";
  static const String helloTitle = "Hello";
  static const String signTitle = "Sign into your account";
  static const String username = "Username";
  static const String password_ = "Password";
  static const String forgotPassword = "Forgot Password?";
  static const String loginButton = "Login";
  static const String newlogintext = "Don't have an account?";
  static const String registerNow = "Register Now";
  static const String errorMessage = "Invalid username or password";
  static const String loading = "Loading";
//Signup Page

  static const String signupTitle = "Register";
  static const String signupButton = "Register Now";
  static const String username_ = "Username";
  static const String password = "Password";
  static const String cpassword = "Confirm Password";
  static const String emailid = "Email Id";
  static const String usercname = "Name";
  static const String phone = "Phone Number";
  static const String address = "Address";
  static const String errorMessageSignup = "password mismatch";
  static const String newlogin = "Already have account?";

// Validation
  static const String emailEmptyErrorMessage = "Please enter email";
  static const String emailValidErrorMessage = "Please enter a valid email address";
  static const String emailIncorrectErrorMessage = "Invalid email address";
  static const String passwordEmptyErrorMessage = "Please enter password";
  static const String passwordValidErrorMessage = "Please enter a valid password";
  static const String passwordIncorrectErrorMessage = "Invalid password";
  static const String userdEmptyErrorMessage = "Please enter username";
  static const String userIncorrectErrorMessage = "Invalid username";

  //Regex Email
  static RegExp emailRegex = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static RegExp unameRegex = RegExp('[a-zA-Z]');
  static RegExp phoneRegex = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');

//Pizza
  // Pizza Repository
  static const String pizzaErrorMessage = "Unable to fetch the pizza detials";
  // Pizza Data Viewing
  static const String pizzaErrorViewMessage = "No Details available!!!";
  static const String viewMore = "View";
  //Pizza Details Page
  static const String sizeChart = "Size";
  static const String restaurantName = "Restaurant Name";
  static const String pizzaPrice = "Price";
  static const String pizzaAddtoCart = "ADD TO CART";
  static const String pizzaSelectError = "Please select a size";
  static const String pieces = "Pcs";
  static const String calories = "Calories";


  //Profile
  //Profile Repoitory
  static const String profileErrorMessage = "Unable to fetch the profile details";
  // Profile Data Viewing
  static const String profileErrorViewMessage = "No Details available!!!";

  // Profile page
  static const String userDetails = "User Details";
  static const String wishlist = "My Wishlist";
  static const String termsandcondition = "Terms and Conditions";
  static const String logout = "Logout";
  static const String mywallet = "Wallet Amount :";


  //Cart
  // Cart Data Viewing
  static const String cartErrorViewMessage = "No Products available!!!";
  static const String cartEmptyMessage = "Empty Cart";
  static const String shopName = "Restaurant : ";
  static const String pizzaSize = "Selected Size : ";
  static const String rupeeSymbol = "₹ ";
  static const String cartIncrement = "+";
  static const String cartDecrement = "-";

  //OrderPage
  //
  static const String addToOrderpage = "CheckOut";
  static const String orderErrorViewMessage = "Empty Checkout!!!";



  //Database
  static const String tableName = "order_details";
// Validation

  static const String unameEmptyErrorMessage = "Please enter your name";

  static const String  unameIncorrectErrorMessage = "Invalid Name Format";

  static const String todoIncorrectErrorMessage = "Empty title field";
  static const String todoIncorrectDescErrorMessage = "Empty description field";
  //Regex

  //Home Page
  static const String homeTitle = "Hello";

  //Resetpassword page
  static const String errorResetPasswordMessage = "Invalid email id";
  static const String successResetPasswordMessage = "Successfully send reset password link to your registered  mail id ";
  static const String resetPasswordTitle = "Reset Password";


  //TodoPage
  static const String errorAddTodo = "Error in adding your Todo List";
  static const String successAddTodo = "Successfully add your Todo List  ";
  static const String todonote = "Reminder Your Note";
  static const String todoCreateDate = "Created Date";
  static const String todoRemindDate = "Remind Date";
  static const String description = "Description";
  static const String statusPassword = "Status";
  static const String todoButton = "Add Now";
  static const String errorUpdateTodo = "Error in updated your Todo List";
  static const String successUpdateTodo = "Successfully updated your Todo List ";
  static const String errorLoading = "Error in Loading";
  static const String todoErrorMessage = "Fail to fetch data";
  static const String todomenu = "edit";

}
