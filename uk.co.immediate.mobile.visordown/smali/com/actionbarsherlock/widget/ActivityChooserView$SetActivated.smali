.class Lcom/actionbarsherlock/widget/ActivityChooserView$SetActivated;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetActivated"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invoke(Landroid/view/View;Z)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "activated"    # Z

    .prologue
    .line 617
    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 618
    return-void
.end method
