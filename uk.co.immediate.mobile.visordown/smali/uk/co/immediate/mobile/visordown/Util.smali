.class public Luk/co/immediate/mobile/visordown/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 8
    .param p0, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 11
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 12
    .local v2, "listAdapter":Landroid/widget/ListAdapter;
    if-nez v2, :cond_0

    .line 29
    :goto_0
    return-void

    .line 17
    :cond_0
    const/4 v5, 0x0

    .line 18
    .local v5, "totalHeight":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v6

    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 19
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lt v1, v6, :cond_1

    .line 25
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 26
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v6

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v6, v5

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 27
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_0

    .line 20
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v6, 0x0

    invoke-interface {v2, v1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 21
    .local v3, "listItem":Landroid/view/View;
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6}, Landroid/view/View;->measure(II)V

    .line 22
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 19
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
