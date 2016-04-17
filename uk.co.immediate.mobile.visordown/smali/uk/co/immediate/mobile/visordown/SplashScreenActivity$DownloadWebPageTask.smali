.class public Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadWebPageTask;
.super Landroid/os/AsyncTask;
.source "SplashScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/immediate/mobile/visordown/SplashScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadWebPageTask"
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
.field final synthetic this$0:Luk/co/immediate/mobile/visordown/SplashScreenActivity;


# direct methods
.method public constructor <init>(Luk/co/immediate/mobile/visordown/SplashScreenActivity;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadWebPageTask;->this$0:Luk/co/immediate/mobile/visordown/SplashScreenActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadWebPageTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 141
    iget-object v1, p0, Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadWebPageTask;->this$0:Luk/co/immediate/mobile/visordown/SplashScreenActivity;

    invoke-virtual {v1}, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication;

    .line 142
    .local v0, "appState":Luk/co/immediate/mobile/visordown/RSSReaderApplication;
    iget-object v1, v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication;->service:Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;

    invoke-virtual {v1}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getFeedItems()Ljava/util/List;

    .line 144
    const-string v1, ""

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadWebPageTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadWebPageTask;->this$0:Luk/co/immediate/mobile/visordown/SplashScreenActivity;

    invoke-virtual {v1}, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 151
    const-class v2, Luk/co/immediate/mobile/visordown/HomePageActivity;

    .line 150
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "reset"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v1, p0, Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadWebPageTask;->this$0:Luk/co/immediate/mobile/visordown/SplashScreenActivity;

    invoke-virtual {v1, v0}, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 157
    iget-object v1, p0, Luk/co/immediate/mobile/visordown/SplashScreenActivity$DownloadWebPageTask;->this$0:Luk/co/immediate/mobile/visordown/SplashScreenActivity;

    invoke-virtual {v1}, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->finish()V

    .line 159
    return-void
.end method
