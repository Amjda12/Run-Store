import 'package:get/get.dart';
import 'language_all.dart';

class MyLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          StringKey.welcome: 'أهلا بك!',
          StringKey.discWelcome:
              'نحن فخورون بدعم الأشخاص الذين يستخدمون منصتنا للوصول إلى أحلامهم.',
          StringKey.start: 'ابدأ',
          StringKey.version: 'إصدار 2.0.4',
          StringKey.hint1:
              'انضم إلينا الآن واحصل على هدية شكر عند إكمال عملية التسجيل.',
          StringKey.hint2Name: 'سماعات الرأس',
          StringKey.hintTop: 'الأحدث',
          StringKey.hint2: 'JBL JR300BT',
          StringKey.hint22: 'سماعات رأس لاسلكية للأطفال',
          StringKey.hint3Name: 'تنقل',
          StringKey.hint3Top: 'الأحذية',
          StringKey.hint3:
              'نحن صانعو أحذية في القلب والروح. نعتقد أن التصميم الرائع لا يجب أن يكلف ثروة.',
          StringKey.hint4Top: 'ملابس',
          StringKey.hint4Name: 'قميص من النوع الثقيل المرقط الأصلي',
          StringKey.hint4:
              'قميص من النوع الثقيل المريح مع طباعة شعار أمامي كبير.',
          StringKey.craeteAccount: 'أنشئ مشروعك المميز',
          StringKey.craeteAccountdisc:
              'نفخر بدعم الأشخاص الذين يستخدمون منصتنا للوصول إلى أحلامهم.',
          StringKey.signin: 'تسجيل الدخول',
          StringKey.signup: 'اشتراك',
          StringKey.newAccount : 'حساب جديد',
          StringKey.fullname: 'الأسم كامل',
          StringKey.By: 'بالتسجيل , فإنك توافق على',
          StringKey.and: 'و',
          StringKey.password: 'كلمة المرور',
          StringKey.email: 'البريد الألكتروني',
          StringKey.terms: 'الشروط ',
          StringKey.conditions: ' شروط الاستخدام',
          StringKey.createAnAccount: 'انشئ حساب',
          StringKey.or: 'أو تسجيل الدخول باستخدام      ',
          StringKey.continuee: 'استمر',
          StringKey.correctName: 'أدخل أسم صحيح.',
          StringKey.correctEmail: 'أدخل ايميل صحيح.',
          StringKey.correctPassword:'يجب ادخال كلمة مرور اكبر او تساوي 6',
          StringKey.correctEmailSignin: 'أدخل الايميل الخاص بك بشكل صحيح',
          StringKey.forgetPassword: 'هل نسيت كلمة المرور ؟',
          StringKey.reset_password: 'إعادة تعيين كلمة المرور',
          StringKey.reset_password_Discription: "أدخل الايميل الخاص بك وسيتم ارسال رابط لإعادة تعيين كلمة المرور",
          StringKey.sendReset: 'أرسال رابط اعادة التعيين',
          StringKey.backSignIn: 'الرجوع الي تسجيل الدخول',
          StringKey.resend: 'إعادة ارسال الرمز؟',
          StringKey.verificationCode: 'رمز التأكيد',
          StringKey.verificationCodeDiscription: 'رجاء أدخل رمز التأكيد المرسل الي البريد الألكتروني الخاص بك.',
          StringKey.newPassword : 'أدخل كلمة المرور الجديدة لإعادة تعيين كلمة المرور',
          StringKey.all : 'الكل',
          StringKey.men : 'رجال',
          StringKey.women: 'نساء',
          StringKey.kid : 'اطفال',
          StringKey.hi : 'اهلا',
          StringKey.newarrivals : 'المنتجات الجديدة',
          StringKey.mostpopular: 'الأكثر شهرة',
          StringKey.catalog : 'قائمة المنتجات',
          StringKey.product: 'منتج',
          StringKey.viewAll: 'مشاهدة الكل',
          StringKey.clothing:'ملابس',
          StringKey.shoes: 'أحذية',
          StringKey.furniture: 'أثاث',
          StringKey.electronics: 'أجهزة الكترونية',
          StringKey.others:'اخرى',
          StringKey.shoppingCart:'عربة التسوق',
          StringKey.cartEmpty:'عربة التسوق فارغة',
          StringKey.goToCheckout: 'أذهب الي الشراء',
          StringKey.inYourCart: 'في عربتك',
          StringKey.wishlist: 'المفضلة',
          StringKey.favoriteEmpty: 'قائمة المفضلة فارغة',
          StringKey.perductCapital: 'المنتجات',
          StringKey.profile: 'الملف الشخصي',
          StringKey.cart: 'منتجاتي',
          StringKey.language: 'اللغة',
          StringKey.payment: 'الدفع',
          StringKey.volunteerSupports: 'الدعم الفني',
          StringKey.logout: 'تسجيل الخروج',
          StringKey.deleteAccount: 'حذف الحساب',
          StringKey.checkDelete: 'هل انت متأكد من حذف الحساب؟',
          StringKey.done: 'تم',
          StringKey.camera: 'كاميرا',
          StringKey.gallery: 'استيديو',
          StringKey.total: 'السعر الكلي',
          StringKey.arabic: 'عربي',
          StringKey.einglish: 'انجليزي',
          StringKey.address: 'العنوان',
          StringKey.delivery: 'التوصيل',
          StringKey.confirm: 'تأكيد',
          StringKey.name: 'الأسم',
          StringKey.city: 'المدينة',
          StringKey.zip: 'رمز zip',
          StringKey.state: 'الولاية',
          StringKey.phone: 'رقم الهاتف',
          StringKey.next: 'التالي',
          StringKey.confirmOrder: 'تأكيد الطلب',
          StringKey.correctAddress: 'أدخل عنوان صحيح.',
          StringKey.correctCity:'أدخل أسم مدينة صحيح.',
          StringKey.correctZip:'أدخل الكود بشكل صحيح.',
          StringKey.correctState:'أدخل الولاية بشكل صحيح.',
          StringKey.correctPhone:'أدخل رقم هاتف صحيح.',
          StringKey.freeShopping:'الشحن مجانا على',
          StringKey.freeReturn:'الإرجاع والأستبدال المجاني',
          StringKey.free:'مجانا',
          StringKey.standard:'قياسي',
          StringKey.express:'سريع',
          StringKey.dayDelivery:'ايام توصيل',
          StringKey.ordernow:'أطلب الأن',
          StringKey.category: 'قائمة',
          StringKey.search: 'ناتج البحث',
          StringKey.addCart:'إضافة الي السلة',
          StringKey.aboutBrand:'حول العلامة التجارية',
          StringKey.shipping:'الشحن',


        },
        "en": {
          StringKey.welcome: 'Welcome!',
          StringKey.discWelcome:
              'We’ve been proud to support people who use our platform to reach for their dreams.',
          StringKey.start: 'Get started',
          StringKey.version: 'Version 2.0.4',
          StringKey.hint1:
              'Join us now and receive a thank you gift when you complete the registration process.',
          StringKey.hint2Name: 'Headphones',
          StringKey.hintTop: 'Newest',
          StringKey.hint2: 'JBL JR300BT',
          StringKey.hint22: 'Kids wireless on-ear headphones',
          StringKey.hint3Name: 'Vagabond',
          StringKey.hint3Top: 'Footwear',
          StringKey.hint3:
              'We are shoemakers at heart and soul. We believe that great design does not have to cost a fortune.',
          StringKey.hint4Top: 'Clothing',
          StringKey.hint4Name: 'Originals speckled sweatshirt',
          StringKey.hint4:
              'The comfortable sweatshirt with a large front logo print.',
          StringKey.craeteAccount: 'Create your unique project',
          StringKey.craeteAccountdisc:
              'We have been proud to support people who use our platform to reach for their dreams.',
          StringKey.signin: 'Sign in',
          StringKey.signup: 'Sign up',
          StringKey.newAccount : 'New Account',
          StringKey.fullname: 'Full name',
          StringKey.By: 'By signing up, you agree to our',
          StringKey.and: 'and',
          StringKey.password: 'Password',
          StringKey.email: 'Email address',
          StringKey.terms: 'Terms ',
          StringKey.conditions: ' Conditions of Use',
          StringKey.createAnAccount: 'Create an account',
          StringKey.or: 'or sign in with       ',
          StringKey.continuee: 'Continue',
          StringKey.correctName: 'Enter correct name.',
          StringKey.correctEmail: 'Enter your email correctly .',
          StringKey.correctPassword : 'Password must br greater than or equal 6.',
          StringKey.correctEmailSignin: 'Enter your email correctly.',
          StringKey.forgetPassword: 'Forget your password ?',
          StringKey.reset_password: 'Reset password',
          StringKey.reset_password_Discription: "Enter your email and we'll send you a link to reset your password.",
          StringKey.sendReset: 'Send reset link',
          StringKey.backSignIn: 'Back to Sign in',
          StringKey.resend: 'Resend code?',
          StringKey.verificationCode: 'Verification code',
          StringKey.verificationCodeDiscription: 'Please enter the verification code we sent to your Email.',
          StringKey.newPassword: 'Enter your new password and confirm new password to reset old password.',
          StringKey.all : 'All',
          StringKey.men : 'Men',
          StringKey.women: 'Women',
          StringKey.kid : 'Kid',
          StringKey.hi : 'Hi',
          StringKey.newarrivals : 'New arrivals',
          StringKey.mostpopular: 'Most popular',
          StringKey.catalog : 'Catalog',
          StringKey.product: 'products',
          StringKey.viewAll: 'View all',
          StringKey.clothing:'Clothing',
          StringKey.shoes: 'Shoes',
          StringKey.furniture: 'Furniture',
          StringKey.electronics: 'Electronics',
          StringKey.others:'Others',
          StringKey.shoppingCart:'Shopping cart',
          StringKey.cartEmpty:'Cart Shopping Empty',
          StringKey.goToCheckout: 'Go to checkout',
          StringKey.inYourCart: 'In your cart',
          StringKey.wishlist: 'Wishlist',
          StringKey.favoriteEmpty: 'Favorite Empty',
          StringKey.perductCapital: 'Products',
          StringKey.profile: 'Profile',
          StringKey.cart: 'My Cart',
          StringKey.language: 'Language',
          StringKey.payment: 'Payment',
          StringKey.volunteerSupports: 'Volunteer Supports',
          StringKey.logout: 'Log Out',
          StringKey.deleteAccount: 'Delete Account',
          StringKey.checkDelete: 'Are You sure delete account?',
          StringKey.done: 'done',
          StringKey.camera: 'Camera',
          StringKey.gallery: 'Gallery',
          StringKey.total: 'total price',
          StringKey.arabic: 'Arabic',
          StringKey.einglish: 'Einglish',
          StringKey.address: 'Address',
          StringKey.delivery: 'Delivery',
          StringKey.confirm: 'Confirm',
          StringKey.name: 'Name',
          StringKey.city: 'City',
          StringKey.zip: 'ZIP code',
          StringKey.state: 'State',
          StringKey.phone: 'Phone Number',
          StringKey.next: 'Next',
          StringKey.confirmOrder: 'Confirm Order',
          StringKey.correctAddress: 'Enter correct Address.',
          StringKey.correctCity:'Enter correct City.',
          StringKey.correctZip:'Enter correct Zip code.',
          StringKey.correctState:'Enter correct State.',
          StringKey.correctPhone:'Enter correct Pone Number.',
          StringKey.free:'Free',
          StringKey.standard:'Standard',
          StringKey.express:'Express',
          StringKey.dayDelivery:'day delivery',
          StringKey.freeShopping:'Free shipping over',
          StringKey.freeReturn:'free returns and exchange',
          StringKey.ordernow:'Order now',
          StringKey.category: 'Category',
          StringKey.search: 'Search result',
          StringKey.addCart:'Add to Cart',
          StringKey.aboutBrand:'About brand',
          StringKey.shipping:'Shipping',

        },
      };
}
