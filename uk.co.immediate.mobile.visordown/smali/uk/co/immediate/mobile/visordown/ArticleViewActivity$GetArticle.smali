.class public Luk/co/immediate/mobile/visordown/ArticleViewActivity$GetArticle;
.super Landroid/os/AsyncTask;
.source "ArticleViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/immediate/mobile/visordown/ArticleViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetArticle"
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
.field private activity:Luk/co/immediate/mobile/visordown/ArticleViewActivity;

.field private feedItem:Luk/co/immediate/mobile/visordown/FeedItem;

.field private params:[Ljava/lang/String;

.field final synthetic this$0:Luk/co/immediate/mobile/visordown/ArticleViewActivity;


# direct methods
.method public constructor <init>(Luk/co/immediate/mobile/visordown/ArticleViewActivity;Luk/co/immediate/mobile/visordown/ArticleViewActivity;)V
    .locals 0
    .param p2, "activity"    # Luk/co/immediate/mobile/visordown/ArticleViewActivity;

    .prologue
    .line 104
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/ArticleViewActivity$GetArticle;->this$0:Luk/co/immediate/mobile/visordown/ArticleViewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 105
    iput-object p2, p0, Luk/co/immediate/mobile/visordown/ArticleViewActivity$GetArticle;->activity:Luk/co/immediate/mobile/visordown/ArticleViewActivity;

    .line 106
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Luk/co/immediate/mobile/visordown/ArticleViewActivity$GetArticle;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/ArticleViewActivity$GetArticle;->params:[Ljava/lang/String;

    .line 112
    iget-object v1, p0, Luk/co/immediate/mobile/visordown/ArticleViewActivity$GetArticle;->this$0:Luk/co/immediate/mobile/visordown/ArticleViewActivity;

    invoke-virtual {v1}, Luk/co/immediate/mobile/visordown/ArticleViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication;

    .line 113
    .local v0, "appState":Luk/co/immediate/mobile/visordown/RSSReaderApplication;
    iget-object v1, v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication;->service:Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;

    iget-object v2, p0, Luk/co/immediate/mobile/visordown/ArticleViewActivity$GetArticle;->this$0:Luk/co/immediate/mobile/visordown/ArticleViewActivity;

    iget-object v2, v2, Luk/co/immediate/mobile/visordown/ArticleViewActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getFeedItemByUrl(Ljava/lang/String;)Luk/co/immediate/mobile/visordown/FeedItem;

    move-result-object v1

    iput-object v1, p0, Luk/co/immediate/mobile/visordown/ArticleViewActivity$GetArticle;->feedItem:Luk/co/immediate/mobile/visordown/FeedItem;

    .line 115
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Luk/co/immediate/mobile/visordown/ArticleViewActivity$GetArticle;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 120
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/ArticleViewActivity$GetArticle;->activity:Luk/co/immediate/mobile/visordown/ArticleViewActivity;

    iget-object v1, p0, Luk/co/immediate/mobile/visordown/ArticleViewActivity$GetArticle;->feedItem:Luk/co/immediate/mobile/visordown/FeedItem;

    invoke-virtual {v0, v1}, Luk/co/immediate/mobile/visordown/ArticleViewActivity;->renderArticle(Luk/co/immediate/mobile/visordown/FeedItem;)V

    .line 121
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method
