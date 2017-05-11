#-injars 打包的jar\ucf_plugin_wallet.jar
#-outjars 混淆后的sdk\ucfwallet_sdk.jar

-libraryjars libs\android-support-v4.jar
-libraryjars libs\gson-2.2.4.jar
-libraryjars 'E:\Android_SDk\Android_SDk\sdk\platforms\android-19\android.jar'
-libraryjars libs\banksdk.jar
-libraryjars libs\libammsdk.jar

-dontoptimize
-dontusemixedcaseclassnames
-keepattributes Signature,*Annotation*
-dontpreverify
-verbose
-dontwarn com.google.gson.**,android.support.**


-keep class com.google.gson.** {
    <fields>;
    <methods>;
}

# Gson specific classes
-keep class sun.misc.Unsafe {
    <fields>;
    <methods>;
}

# -keep class com.google.gson.stream.** { *; }
# Application classes that will be serialized/deserialized over Gson
-keep class com.google.gson.examples.android.model.** {
    <fields>;
    <methods>;
}

-keep class com.ucfwallet.plugin.model.** {
    <fields>;
    <methods>;
}

-keep public class com.google.vending.licensing.ILicensingService

-keep public class com.android.vending.licensing.ILicensingService

# keep setters in Views so that animations can still work.
# see http://proguard.sourceforge.net/manual/examples.html#beans
-keepclassmembers public class * extends android.view.View {
    void set*(***);
    *** get*();
}

# We want to keep methods in Activity that could be used in the XML attribute onClick
-keepclassmembers class * extends android.app.Activity {
    public void *(android.view.View);
}

-keep class * extends android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

-keepclassmembers class **.R$* {
    public static <fields>;
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context,android.util.AttributeSet);
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context,android.util.AttributeSet,int);
}

-keepclassmembers class * extends android.app.Activity {
    public void *(android.view.View);
}

-keep class * extends android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

-keep public class * extends java.io.Serializable {
    public private protected <fields>;
    public private protected <methods>;
}

-keep class com.ucfwallet.plugin.walletView.** {
    protected <fields>;
    public <fields>;
    private <fields>;
    protected <methods>;
    public <methods>;
    private <methods>;
}

-keep class com.ucfwallet.plugin.model.** {
    protected <fields>;
    public <fields>;
    private <fields>;
    protected <methods>;
    public <methods>;
    private <methods>;
}

-keep class com.ucfwallet.plugin.views.** {
    protected <fields>;
    public <fields>;
    private <fields>;
    protected <methods>;
    public <methods>;
    private <methods>;
}

-keep class com.ucfwallet.plugin.activity.** {
    protected <fields>;
    public <fields>;
    private <fields>;
    protected <methods>;
    public <methods>;
    private <methods>;
}

-keep class com.ucfwallet.plugin.utils.UcfWalletInterface {
    public <fields>;
    public <methods>;
}
-keep class com.ucfwallet.plugin.utils.WalletListener {
    public <fields>;
    public <methods>;
}

-keep class com.ucfwallet.plugin.utils.Constants {
    protected <fields>;
    public <fields>;
    private <fields>;
    protected <methods>;
    public <methods>;
    private <methods>;
}

# Also keep - Enumerations. Keep the special static methods that are required in
# enumeration classes.
-keepclassmembers enum  *,* {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# Keep names - Native method names. Keep all native class/method names.
-keepclasseswithmembers,allowshrinking class * {
    native <methods>;
}
-keep class com.zbar.lib.** {
    protected <fields>;
    public <fields>;
    private <fields>;
    protected <methods>;
    public <methods>;
    private <methods>;
}
##---------------Begin: proguard configuration for weixin  ----------
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*
-ignorewarning
-keep class org.doubango.** {*;}
-keepclasseswithmembernames class * {
    native <methods>;
}
-keep public class com.switfpass.pay.activity.PayPlugin{
    public <fields>;
    public <methods>;
}
##---------------End: proguard configuration for weixin  ----------