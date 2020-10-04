/// @description READ ME

/*
 If you have build errors about missing Google Play Services libraries, please make sure Android Studio
 is up-to-date and you have actually installed the API version you're targetting in Game Options.
 
 if you have opted-in to Google's managed app-signing system on your app's store page - BUILDING AN .APK WILL NOT WORK. 
 This is because Google won't be using your keystore's SHA1 value for your app when it is public. In order to actually 
 test your own project, be aware that you will always have to create an .aab and upload this to Google Play and then 
 get the game from the Play Store on your phone.
 
 We would recommend using an Internal track release, as this usually updates nice and quickly. Ensure you have turned 
 on Internal release support in your Play Store profile's settings by tapping the Play Store "Version" field 7 times and 
 then turn on allowing Internal versions, THEN follow the opt-in link for your specific app... (Yup, all that.)
 
 If you're retroactively adding Google Play Services to an already-published game and therefore you are still allowed to
 actually submit .apk files, then you should still be able to build and test your built packages on your phone.
 */

/*
Our test values - 
  <string name="achievement_done_the_tonne" translatable="false">CgkIvN_kkrwKEAIQAQ</string>   (Score 100)
  <string name="achievement_double_top" translatable="false">CgkIvN_kkrwKEAIQAg</string>   (Score 40)
  <string name="achievement_oneundredandeightyyyyy" translatable="false">CgkIvN_kkrwKEAIQAw</string>   (Score 180)

  (Highest score leaderboard, only shows scores between 10 and 350.)
  <string name="leaderboard_top_scorers" translatable="false">CgkIvN_kkrwKEAIQBA</string>
*/

// Create our variables
global.Score = 0;
global.OurName = "";
global.OurId = "0";
global.ads = true;
global.godsLeft = 0;

global.cloudSaveID = -1;
global.cloudLoadID = -1;
global.savedScore = -1;


#macro DEBUG true