.class Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadSplashScreenTask;
.super Landroid/os/AsyncTask;
.source "SplashScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/immediate/mobile/visordown/SplashScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadSplashScreenTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Luk/co/immediate/mobile/visordown/SplashScreenActivity;


# direct methods
.method private constructor <init>(Luk/co/immediate/mobile/visordown/SplashScreenActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadSplashScreenTask;->this$0:Luk/co/immediate/mobile/visordown/SplashScreenActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Luk/co/immediate/mobile/visordown/SplashScreenActivity;Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadSplashScreenTask;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadSplashScreenTask;-><init>(Luk/co/immediate/mobile/visordown/SplashScreenActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadSplashScreenTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 116
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadSplashScreenTask;->this$0:Luk/co/immediate/mobile/visordown/SplashScreenActivity;

    # getter for: Luk/co/immediate/mobile/visordown/SplashScreenActivity;->url:Ljava/lang/String;
    invoke-static {v3}, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->access$0(Luk/co/immediate/mobile/visordown/SplashScreenActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 124
    :goto_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadSplashScreenTask;->bitmap:Landroid/graphics/Bitmap;

    .line 126
    const-string v2, ""

    return-object v2

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadSplashScreenTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadSplashScreenTask;->this$0:Luk/co/immediate/mobile/visordown/SplashScreenActivity;

    # getter for: Luk/co/immediate/mobile/visordown/SplashScreenActivity;->imageView:Landroid/widget/ImageView;
    invoke-static {v0}, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->access$1(Luk/co/immediate/mobile/visordown/SplashScreenActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadSplashScreenTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    return-void
.end method
