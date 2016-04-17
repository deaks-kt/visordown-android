# Modified Android Visordown Application

The current Visordown Android Application tends to crash due to an issue with the RSS feed.
This is a slightly modified version which attempts to circumvent the issue.

I have tried to contact the Visordown team with details on how to fix the problem
but unfortunately not heard anything back despite repeated attempts.  I suspect no-one
is monitoring the support e-mail address.

## The problem

If you are interested in the gory details, the problem is actually that the RSS feed is
sending URLs for full size images as thumbnails, so when the feed has some large images
you tend to run out of memory on the device and see the following error:

```
--------- beginning of crash
04-26 10:37:47.593 E/AndroidRuntime(22952): FATAL EXCEPTION: AsyncTask #5
04-26 10:37:47.593 E/AndroidRuntime(22952): Process: uk.co.immediate.mobile.visordown, PID: 22952
04-26 10:37:47.593 E/AndroidRuntime(22952): java.lang.RuntimeException: An error occured while executing doInBackground()
04-26 10:37:47.593 E/AndroidRuntime(22952):     at android.os.AsyncTask$3.done(AsyncTask.java:300)
04-26 10:37:47.593 E/AndroidRuntime(22952):     at java.util.concurrent.FutureTask.finishCompletion(FutureTask.java:355)
04-26 10:37:47.593 E/AndroidRuntime(22952):     at java.util.concurrent.FutureTask.setException(FutureTask.java:222)
04-26 10:37:47.593 E/AndroidRuntime(22952):     at java.util.concurrent.FutureTask.run(FutureTask.java:242)
04-26 10:37:47.593 E/AndroidRuntime(22952):     at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1112)
04-26 10:37:47.593 E/AndroidRuntime(22952):     at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:587)
04-26 10:37:47.593 E/AndroidRuntime(22952):     at java.lang.Thread.run(Thread.java:818)
04-26 10:37:47.593 E/AndroidRuntime(22952): Caused by: java.lang.OutOfMemoryError: Failed to allocate a 10680012 byte allocation with 6491124 free bytes and 6MB until OOM
```

## The fix

Ugly but simple hack.  We just look for the string `original` in the RSS image URL and replace it with `tinycropped`.

## Building

You will need the following tools to rebuild this

1. Android Development Kit
2. apktool

```
$ apktool b -o uk.co.immediate.mobile.visordown_unaligned.apk uk.co.immediate.mobile.visordown
$ jarsigner -verbose -keystore ~/.android/debug.keystore -storepass android -keypass android uk.co.immediate.mobile.visordown_unaligned.apk androiddebugkey
$ zipalign -v -f 4 uk.co.immediate.mobile.visordown_unaligned.apk uk.co.immediate.mobile.visordown_mod.apk
```
