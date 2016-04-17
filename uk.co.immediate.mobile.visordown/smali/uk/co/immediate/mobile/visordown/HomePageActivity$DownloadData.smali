.class public Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;
.super Landroid/os/AsyncTask;
.source "HomePageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/immediate/mobile/visordown/HomePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadData"
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
.field private activity:Luk/co/immediate/mobile/visordown/HomePageActivity;

.field private final dialog:Landroid/app/ProgressDialog;

.field private feedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Luk/co/immediate/mobile/visordown/FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private loadedData:Z

.field private params:[Ljava/lang/String;

.field final synthetic this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;


# direct methods
.method public constructor <init>(Luk/co/immediate/mobile/visordown/HomePageActivity;Luk/co/immediate/mobile/visordown/HomePageActivity;)V
    .locals 1
    .param p2, "activity"    # Luk/co/immediate/mobile/visordown/HomePageActivity;

    .prologue
    .line 147
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 136
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->dialog:Landroid/app/ProgressDialog;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->loadedData:Z

    .line 148
    iput-object p2, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->activity:Luk/co/immediate/mobile/visordown/HomePageActivity;

    .line 149
    return-void
.end method

.method static synthetic access$2(Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;)Luk/co/immediate/mobile/visordown/HomePageActivity;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;

    return-object v0
.end method

.method private checkConnectionAndLoad()Z
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->haveNetworkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0}, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->loadApp()Z

    move-result v0

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private haveNetworkConnection()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, "haveConnectedWifi":Z
    const/4 v1, 0x0

    .line 173
    .local v1, "haveConnectedMobile":Z
    iget-object v6, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Luk/co/immediate/mobile/visordown/HomePageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 174
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 175
    .local v3, "netInfo":[Landroid/net/NetworkInfo;
    array-length v7, v3

    move v6, v5

    :goto_0
    if-lt v6, v7, :cond_0

    .line 183
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    :goto_1
    return v5

    .line 175
    :cond_0
    aget-object v4, v3, v6

    .line 176
    .local v4, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WIFI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 177
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 178
    const/4 v2, 0x1

    .line 179
    :cond_1
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MOBILE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 180
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 181
    const/4 v1, 0x1

    .line 175
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 183
    .end local v4    # "ni":Landroid/net/NetworkInfo;
    :cond_3
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private loadApp()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 190
    :try_start_0
    iget-object v2, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;

    invoke-virtual {v2}, Luk/co/immediate/mobile/visordown/HomePageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication;

    .line 192
    .local v0, "appState":Luk/co/immediate/mobile/visordown/RSSReaderApplication;
    iget-object v2, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->params:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication;->service:Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;

    invoke-virtual {v2}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->clearData()V

    .line 195
    :cond_0
    iget-object v2, v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication;->service:Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;

    invoke-virtual {v2}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getCategories()Ljava/util/Map;

    .line 197
    iget-object v2, v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication;->service:Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;

    invoke-virtual {v2}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getFeedItems()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->feedItems:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    const/4 v1, 0x1

    .line 202
    .end local v0    # "appState":Luk/co/immediate/mobile/visordown/RSSReaderApplication;
    :goto_0
    return v1

    .line 200
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->params:[Ljava/lang/String;

    .line 154
    invoke-direct {p0}, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->checkConnectionAndLoad()Z

    move-result v0

    iput-boolean v0, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->loadedData:Z

    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 12
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    const v11, 0x6e6e6e6e

    const/4 v10, 0x0

    .line 208
    iget-boolean v7, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->loadedData:Z

    if-eqz v7, :cond_3

    .line 210
    new-instance v0, Luk/co/immediate/mobile/visordown/FeedItemArrayAdapter;

    iget-object v7, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;

    invoke-virtual {v7}, Luk/co/immediate/mobile/visordown/HomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 211
    const v8, 0x7f030015

    iget-object v9, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->feedItems:Ljava/util/List;

    .line 210
    invoke-direct {v0, v7, v8, v9}, Luk/co/immediate/mobile/visordown/FeedItemArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 213
    .local v0, "adapter":Luk/co/immediate/mobile/visordown/FeedItemArrayAdapter;
    iget-object v7, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;

    # getter for: Luk/co/immediate/mobile/visordown/HomePageActivity;->listView:Landroid/widget/ListView;
    invoke-static {v7}, Luk/co/immediate/mobile/visordown/HomePageActivity;->access$0(Luk/co/immediate/mobile/visordown/HomePageActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 215
    new-instance v3, Luk/co/immediate/mobile/visordown/ViewPagerAdapter;

    iget-object v7, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->activity:Luk/co/immediate/mobile/visordown/HomePageActivity;

    iget-object v8, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;

    invoke-virtual {v8}, Luk/co/immediate/mobile/visordown/HomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->feedItems:Ljava/util/List;

    invoke-direct {v3, v7, v8, v9}, Luk/co/immediate/mobile/visordown/ViewPagerAdapter;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;)V

    .line 216
    .local v3, "pageAdapter":Luk/co/immediate/mobile/visordown/ViewPagerAdapter;
    iget-object v7, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;

    const v8, 0x7f050034

    invoke-virtual {v7, v8}, Luk/co/immediate/mobile/visordown/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    .line 217
    .local v5, "pager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v5, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 219
    iget-object v7, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;

    const v8, 0x7f050035

    invoke-virtual {v7, v8}, Luk/co/immediate/mobile/visordown/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/viewpagerindicator/CirclePageIndicator;

    .line 220
    .local v4, "pageIndicator":Lcom/viewpagerindicator/CirclePageIndicator;
    invoke-virtual {v4, v10}, Lcom/viewpagerindicator/CirclePageIndicator;->setOrientation(I)V

    .line 222
    iget-object v7, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;

    invoke-virtual {v7}, Luk/co/immediate/mobile/visordown/HomePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->density:F

    .line 224
    .local v1, "density":F
    const v7, 0x33333333

    invoke-virtual {v4, v7}, Lcom/viewpagerindicator/CirclePageIndicator;->setBackgroundColor(I)V

    .line 225
    const/high16 v7, 0x40400000

    mul-float/2addr v7, v1

    invoke-virtual {v4, v7}, Lcom/viewpagerindicator/CirclePageIndicator;->setRadius(F)V

    .line 226
    invoke-virtual {v4, v11}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 227
    const/4 v7, -0x1

    invoke-virtual {v4, v7}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 228
    invoke-virtual {v4, v11}, Lcom/viewpagerindicator/CirclePageIndicator;->setStrokeColor(I)V

    .line 229
    const/high16 v7, 0x3f800000

    mul-float/2addr v7, v1

    invoke-virtual {v4, v7}, Lcom/viewpagerindicator/CirclePageIndicator;->setStrokeWidth(F)V

    .line 230
    invoke-virtual {v4, v5}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 232
    iget-object v7, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;

    invoke-virtual {v7}, Luk/co/immediate/mobile/visordown/HomePageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 233
    .local v2, "i":Landroid/content/Intent;
    const-string v7, "reset"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, "reset":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 237
    :cond_0
    const-string v6, "true"

    .line 240
    :cond_1
    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 241
    iget-object v7, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;

    # getter for: Luk/co/immediate/mobile/visordown/HomePageActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v7}, Luk/co/immediate/mobile/visordown/HomePageActivity;->access$1(Luk/co/immediate/mobile/visordown/HomePageActivity;)Landroid/widget/ScrollView;

    move-result-object v7

    new-instance v8, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData$1;

    invoke-direct {v8, p0}, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData$1;-><init>(Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;)V

    .line 248
    const-wide/16 v9, 0x14

    .line 241
    invoke-virtual {v7, v8, v9, v10}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    :goto_0
    iget-object v7, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 260
    .end local v0    # "adapter":Luk/co/immediate/mobile/visordown/FeedItemArrayAdapter;
    .end local v1    # "density":F
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "pageAdapter":Luk/co/immediate/mobile/visordown/ViewPagerAdapter;
    .end local v4    # "pageIndicator":Lcom/viewpagerindicator/CirclePageIndicator;
    .end local v5    # "pager":Landroid/support/v4/view/ViewPager;
    .end local v6    # "reset":Ljava/lang/String;
    :goto_1
    return-void

    .line 250
    .restart local v0    # "adapter":Luk/co/immediate/mobile/visordown/FeedItemArrayAdapter;
    .restart local v1    # "density":F
    .restart local v2    # "i":Landroid/content/Intent;
    .restart local v3    # "pageAdapter":Luk/co/immediate/mobile/visordown/ViewPagerAdapter;
    .restart local v4    # "pageIndicator":Lcom/viewpagerindicator/CirclePageIndicator;
    .restart local v5    # "pager":Landroid/support/v4/view/ViewPager;
    .restart local v6    # "reset":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;

    # getter for: Luk/co/immediate/mobile/visordown/HomePageActivity;->listView:Landroid/widget/ListView;
    invoke-static {v7}, Luk/co/immediate/mobile/visordown/HomePageActivity;->access$0(Luk/co/immediate/mobile/visordown/HomePageActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-static {v7}, Luk/co/immediate/mobile/visordown/Util;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    goto :goto_0

    .line 257
    .end local v0    # "adapter":Luk/co/immediate/mobile/visordown/FeedItemArrayAdapter;
    .end local v1    # "density":F
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "pageAdapter":Luk/co/immediate/mobile/visordown/ViewPagerAdapter;
    .end local v4    # "pageIndicator":Lcom/viewpagerindicator/CirclePageIndicator;
    .end local v5    # "pager":Landroid/support/v4/view/ViewPager;
    .end local v6    # "reset":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 258
    iget-object v7, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->activity:Luk/co/immediate/mobile/visordown/HomePageActivity;

    iget-object v8, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->params:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-direct {p0}, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->haveNetworkConnection()Z

    move-result v9

    # invokes: Luk/co/immediate/mobile/visordown/HomePageActivity;->showError(Ljava/lang/String;Z)V
    invoke-static {v7, v8, v9}, Luk/co/immediate/mobile/visordown/HomePageActivity;->access$2(Luk/co/immediate/mobile/visordown/HomePageActivity;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Fetching news..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 144
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 145
    return-void
.end method
