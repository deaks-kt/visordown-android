.class public Luk/co/immediate/mobile/visordown/ScrollViewExt;
.super Landroid/widget/ScrollView;
.source "ScrollViewExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/immediate/mobile/visordown/ScrollViewExt$YScrollDetector;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field mGestureListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Luk/co/immediate/mobile/visordown/ScrollViewExt$YScrollDetector;

    invoke-direct {v1, p0}, Luk/co/immediate/mobile/visordown/ScrollViewExt$YScrollDetector;-><init>(Luk/co/immediate/mobile/visordown/ScrollViewExt;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Luk/co/immediate/mobile/visordown/ScrollViewExt;->mGestureDetector:Landroid/view/GestureDetector;

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Luk/co/immediate/mobile/visordown/ScrollViewExt;->setFadingEdgeLength(I)V

    .line 20
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/immediate/mobile/visordown/ScrollViewExt;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
