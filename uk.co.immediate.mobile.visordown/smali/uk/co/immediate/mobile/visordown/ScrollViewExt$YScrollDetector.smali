.class Luk/co/immediate/mobile/visordown/ScrollViewExt$YScrollDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScrollViewExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/immediate/mobile/visordown/ScrollViewExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "YScrollDetector"
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/immediate/mobile/visordown/ScrollViewExt;


# direct methods
.method constructor <init>(Luk/co/immediate/mobile/visordown/ScrollViewExt;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/ScrollViewExt$YScrollDetector;->this$0:Luk/co/immediate/mobile/visordown/ScrollViewExt;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 31
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 32
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
