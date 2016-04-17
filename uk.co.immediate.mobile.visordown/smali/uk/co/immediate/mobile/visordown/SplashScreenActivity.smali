.class public Luk/co/immediate/mobile/visordown/SplashScreenActivity;
.super Landroid/app/Activity;
.source "SplashScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadSplashScreenTask;,
        Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadWebPageTask;
    }
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Luk/co/immediate/mobile/visordown/SplashScreenActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Luk/co/immediate/mobile/visordown/SplashScreenActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Luk/co/immediate/mobile/visordown/SplashScreenActivity;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->checkConnectionAndLoad()V

    return-void
.end method

.method private checkConnectionAndLoad()V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->haveNetworkConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-direct {p0}, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->loadApp()V

    .line 74
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 53
    .local v0, "dialog":Landroid/app/AlertDialog;
    const-string v1, "No network connection"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    const-string v1, "Visordown requires an active internet connection to download content"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 56
    const-string v1, "Retry"

    new-instance v2, Luk/co/immediate/mobile/visordown/SplashScreenActivity$1;

    invoke-direct {v2, p0}, Luk/co/immediate/mobile/visordown/SplashScreenActivity$1;-><init>(Luk/co/immediate/mobile/visordown/SplashScreenActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 63
    const-string v1, "Quit"

    new-instance v2, Luk/co/immediate/mobile/visordown/SplashScreenActivity$2;

    invoke-direct {v2, p0}, Luk/co/immediate/mobile/visordown/SplashScreenActivity$2;-><init>(Luk/co/immediate/mobile/visordown/SplashScreenActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 70
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 72
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    goto :goto_0
.end method

.method private haveNetworkConnection()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 91
    const/4 v2, 0x0

    .line 92
    .local v2, "haveConnectedWifi":Z
    const/4 v1, 0x0

    .line 94
    .local v1, "haveConnectedMobile":Z
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 95
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 96
    .local v3, "netInfo":[Landroid/net/NetworkInfo;
    array-length v7, v3

    move v6, v5

    :goto_0
    if-lt v6, v7, :cond_0

    .line 104
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    :goto_1
    return v5

    .line 96
    :cond_0
    aget-object v4, v3, v6

    .line 97
    .local v4, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WIFI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 98
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 99
    const/4 v2, 0x1

    .line 100
    :cond_1
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MOBILE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 101
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 102
    const/4 v1, 0x1

    .line 96
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 104
    .end local v4    # "ni":Landroid/net/NetworkInfo;
    :cond_3
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private loadApp()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 78
    new-instance v2, Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadSplashScreenTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadSplashScreenTask;-><init>(Luk/co/immediate/mobile/visordown/SplashScreenActivity;Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadSplashScreenTask;)V

    .line 79
    .local v2, "task":Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadSplashScreenTask;
    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadSplashScreenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    new-instance v1, Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadWebPageTask;

    invoke-direct {v1, p0}, Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadWebPageTask;-><init>(Luk/co/immediate/mobile/visordown/SplashScreenActivity;)V

    .line 82
    .local v1, "newtask":Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadWebPageTask;
    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadWebPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    const-string v3, ""

    .line 85
    const-string v4, "Loading. Please wait..."

    const/4 v5, 0x1

    .line 84
    invoke-static {p0, v3, v4, v5}, Luk/co/immediate/mobile/visordown/ProgressDialogExt;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Luk/co/immediate/mobile/visordown/ProgressDialogExt;

    move-result-object v0

    .line 87
    .local v0, "dialog":Luk/co/immediate/mobile/visordown/ProgressDialogExt;
    invoke-virtual {v0}, Luk/co/immediate/mobile/visordown/ProgressDialogExt;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 88
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->requestWindowFeature(I)Z

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->setContentView(I)V

    .line 34
    const-string v0, "http://s1.visordown.com/mobileapps/visordown/images/splashscreen_640x960.png"

    iput-object v0, p0, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->url:Ljava/lang/String;

    .line 36
    const v0, 0x7f050038

    invoke-virtual {p0, v0}, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->imageView:Landroid/widget/ImageView;

    .line 37
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->imageView:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 40
    invoke-direct {p0}, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->checkConnectionAndLoad()V

    .line 41
    return-void
.end method
