.class public Luk/co/immediate/mobile/visordown/Advert$DownloadCreativesTask;
.super Landroid/os/AsyncTask;
.source "Advert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/immediate/mobile/visordown/Advert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadCreativesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private advert:Luk/co/immediate/mobile/visordown/Advert;

.field private creatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Luk/co/immediate/mobile/visordown/Creative;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Luk/co/immediate/mobile/visordown/Advert;


# direct methods
.method public constructor <init>(Luk/co/immediate/mobile/visordown/Advert;Luk/co/immediate/mobile/visordown/Advert;)V
    .locals 0
    .param p2, "advert"    # Luk/co/immediate/mobile/visordown/Advert;

    .prologue
    .line 134
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/Advert$DownloadCreativesTask;->this$0:Luk/co/immediate/mobile/visordown/Advert;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 135
    iput-object p2, p0, Luk/co/immediate/mobile/visordown/Advert$DownloadCreativesTask;->advert:Luk/co/immediate/mobile/visordown/Advert;

    .line 136
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Luk/co/immediate/mobile/visordown/Advert$DownloadCreativesTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 141
    iget-object v1, p0, Luk/co/immediate/mobile/visordown/Advert$DownloadCreativesTask;->this$0:Luk/co/immediate/mobile/visordown/Advert;

    # getter for: Luk/co/immediate/mobile/visordown/Advert;->context:Landroid/content/Context;
    invoke-static {v1}, Luk/co/immediate/mobile/visordown/Advert;->access$0(Luk/co/immediate/mobile/visordown/Advert;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication;

    .line 142
    .local v0, "appState":Luk/co/immediate/mobile/visordown/RSSReaderApplication;
    iget-object v1, v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication;->service:Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;

    invoke-virtual {v1}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getCreatives()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Luk/co/immediate/mobile/visordown/Advert$DownloadCreativesTask;->creatives:Ljava/util/List;

    .line 144
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Luk/co/immediate/mobile/visordown/Advert$DownloadCreativesTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 149
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/Advert$DownloadCreativesTask;->advert:Luk/co/immediate/mobile/visordown/Advert;

    iget-object v1, p0, Luk/co/immediate/mobile/visordown/Advert$DownloadCreativesTask;->creatives:Ljava/util/List;

    invoke-static {v0, v1}, Luk/co/immediate/mobile/visordown/Advert;->access$1(Luk/co/immediate/mobile/visordown/Advert;Ljava/util/List;)V

    .line 151
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method
