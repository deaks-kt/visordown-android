.class Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData$1;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;


# direct methods
.method constructor <init>(Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData$1;->this$1:Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 244
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData$1;->this$1:Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;

    # getter for: Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;
    invoke-static {v0}, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->access$2(Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;)Luk/co/immediate/mobile/visordown/HomePageActivity;

    move-result-object v0

    # getter for: Luk/co/immediate/mobile/visordown/HomePageActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Luk/co/immediate/mobile/visordown/HomePageActivity;->access$0(Luk/co/immediate/mobile/visordown/HomePageActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Luk/co/immediate/mobile/visordown/Util;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    .line 245
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData$1;->this$1:Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;

    # getter for: Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;
    invoke-static {v0}, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->access$2(Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;)Luk/co/immediate/mobile/visordown/HomePageActivity;

    move-result-object v0

    # getter for: Luk/co/immediate/mobile/visordown/HomePageActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Luk/co/immediate/mobile/visordown/HomePageActivity;->access$1(Luk/co/immediate/mobile/visordown/HomePageActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 247
    return-void
.end method
