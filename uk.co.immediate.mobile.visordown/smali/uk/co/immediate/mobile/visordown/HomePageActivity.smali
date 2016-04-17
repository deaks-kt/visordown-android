.class public Luk/co/immediate/mobile/visordown/HomePageActivity;
.super Lcom/actionbarsherlock/app/SherlockActivity;
.source "HomePageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;
    }
.end annotation


# instance fields
.field private listView:Landroid/widget/ListView;

.field private loadedData:Z

.field private scrollView:Landroid/widget/ScrollView;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/immediate/mobile/visordown/HomePageActivity;->loadedData:Z

    .line 30
    return-void
.end method

.method static synthetic access$0(Luk/co/immediate/mobile/visordown/HomePageActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/HomePageActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1(Luk/co/immediate/mobile/visordown/HomePageActivity;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/HomePageActivity;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$2(Luk/co/immediate/mobile/visordown/HomePageActivity;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Luk/co/immediate/mobile/visordown/HomePageActivity;->showError(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3(Luk/co/immediate/mobile/visordown/HomePageActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Luk/co/immediate/mobile/visordown/HomePageActivity;->loadData(Ljava/lang/String;)V

    return-void
.end method

.method private static getDisplaySize(Landroid/view/Display;)Landroid/graphics/Point;
    .locals 3
    .param p0, "display"    # Landroid/view/Display;

    .prologue
    .line 84
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 86
    .local v1, "point":Landroid/graphics/Point;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "ignore":Ljava/lang/NoSuchMethodError;
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 89
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private loadData(Ljava/lang/String;)V
    .locals 3
    .param p1, "resetView"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;

    invoke-direct {v0, p0, p0}, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;-><init>(Luk/co/immediate/mobile/visordown/HomePageActivity;Luk/co/immediate/mobile/visordown/HomePageActivity;)V

    .line 97
    .local v0, "task":Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 98
    return-void
.end method

.method private showError(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "resetView"    # Ljava/lang/String;
    .param p2, "activeConnection"    # Z

    .prologue
    .line 102
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 104
    .local v0, "warningDialog":Landroid/app/AlertDialog;
    if-eqz p2, :cond_0

    .line 106
    const-string v1, "An error occurred"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    const-string v1, "Visordown encountered an error whilst downloading content"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 114
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 115
    const-string v1, "Retry"

    new-instance v2, Luk/co/immediate/mobile/visordown/HomePageActivity$2;

    invoke-direct {v2, p0, p1}, Luk/co/immediate/mobile/visordown/HomePageActivity$2;-><init>(Luk/co/immediate/mobile/visordown/HomePageActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 122
    const-string v1, "Quit"

    new-instance v2, Luk/co/immediate/mobile/visordown/HomePageActivity$3;

    invoke-direct {v2, p0}, Luk/co/immediate/mobile/visordown/HomePageActivity$3;-><init>(Luk/co/immediate/mobile/visordown/HomePageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 129
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 130
    return-void

    .line 111
    :cond_0
    const-string v1, "No network connection"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    const-string v1, "Visordown requires an active internet connection to download content"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v7, 0x7f030016

    invoke-virtual {p0, v7}, Luk/co/immediate/mobile/visordown/HomePageActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Luk/co/immediate/mobile/visordown/HomePageActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 45
    .local v0, "actionBar":Lcom/actionbarsherlock/app/ActionBar;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 46
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 48
    const v7, 0x7f050036

    invoke-virtual {p0, v7}, Luk/co/immediate/mobile/visordown/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Luk/co/immediate/mobile/visordown/HomePageActivity;->listView:Landroid/widget/ListView;

    .line 49
    const v7, 0x7f050032

    invoke-virtual {p0, v7}, Luk/co/immediate/mobile/visordown/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    iput-object v7, p0, Luk/co/immediate/mobile/visordown/HomePageActivity;->scrollView:Landroid/widget/ScrollView;

    .line 50
    const v7, 0x7f050034

    invoke-virtual {p0, v7}, Luk/co/immediate/mobile/visordown/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    iput-object v7, p0, Luk/co/immediate/mobile/visordown/HomePageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 52
    iget-object v7, p0, Luk/co/immediate/mobile/visordown/HomePageActivity;->listView:Landroid/widget/ListView;

    new-instance v8, Luk/co/immediate/mobile/visordown/HomePageActivity$1;

    invoke-direct {v8, p0}, Luk/co/immediate/mobile/visordown/HomePageActivity$1;-><init>(Luk/co/immediate/mobile/visordown/HomePageActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    invoke-virtual {p0}, Luk/co/immediate/mobile/visordown/HomePageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 70
    .local v1, "display":Landroid/view/Display;
    invoke-static {v1}, Luk/co/immediate/mobile/visordown/HomePageActivity;->getDisplaySize(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v4

    .line 72
    .local v4, "size":Landroid/graphics/Point;
    iget v2, v4, Landroid/graphics/Point;->y:I

    .line 73
    .local v2, "height":I
    int-to-double v7, v2

    const-wide v9, 0x3fd51eb851eb851fL

    mul-double/2addr v7, v9

    double-to-int v5, v7

    .line 74
    .local v5, "viewPagerHeight":I
    const v7, 0x7f050033

    invoke-virtual {p0, v7}, Luk/co/immediate/mobile/visordown/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 76
    .local v6, "viewpagercontainer":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 77
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 78
    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    const-string v7, "false"

    invoke-direct {p0, v7}, Luk/co/immediate/mobile/visordown/HomePageActivity;->loadData(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 265
    invoke-virtual {p0}, Luk/co/immediate/mobile/visordown/HomePageActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 266
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 267
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 273
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 294
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 275
    :pswitch_0
    new-instance v2, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;

    invoke-direct {v2, p0, p0}, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;-><init>(Luk/co/immediate/mobile/visordown/HomePageActivity;Luk/co/immediate/mobile/visordown/HomePageActivity;)V

    .line 276
    .local v2, "task":Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;
    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "true"

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 283
    .end local v2    # "task":Luk/co/immediate/mobile/visordown/HomePageActivity$DownloadData;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Luk/co/immediate/mobile/visordown/HomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 284
    const-class v5, Luk/co/immediate/mobile/visordown/SettingsActivity;

    .line 283
    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Luk/co/immediate/mobile/visordown/HomePageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 290
    .end local v1    # "i":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "http://www.visordown.com"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 291
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Luk/co/immediate/mobile/visordown/HomePageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x7f05003b
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
