.class public Luk/co/immediate/mobile/visordown/ProgressDialogExt;
.super Landroid/app/Dialog;
.source "ProgressDialogExt.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const v0, 0x7f0b005f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 59
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Luk/co/immediate/mobile/visordown/ProgressDialogExt;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Luk/co/immediate/mobile/visordown/ProgressDialogExt;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Luk/co/immediate/mobile/visordown/ProgressDialogExt;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Luk/co/immediate/mobile/visordown/ProgressDialogExt;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z

    .prologue
    .line 20
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Luk/co/immediate/mobile/visordown/ProgressDialogExt;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Luk/co/immediate/mobile/visordown/ProgressDialogExt;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Luk/co/immediate/mobile/visordown/ProgressDialogExt;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .prologue
    .line 25
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Luk/co/immediate/mobile/visordown/ProgressDialogExt;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Luk/co/immediate/mobile/visordown/ProgressDialogExt;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Luk/co/immediate/mobile/visordown/ProgressDialogExt;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 31
    new-instance v0, Luk/co/immediate/mobile/visordown/ProgressDialogExt;

    invoke-direct {v0, p0}, Luk/co/immediate/mobile/visordown/ProgressDialogExt;-><init>(Landroid/content/Context;)V

    .line 32
    .local v0, "dialog":Luk/co/immediate/mobile/visordown/ProgressDialogExt;
    invoke-virtual {v0, p1}, Luk/co/immediate/mobile/visordown/ProgressDialogExt;->setTitle(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {v0, p4}, Luk/co/immediate/mobile/visordown/ProgressDialogExt;->setCancelable(Z)V

    .line 34
    invoke-virtual {v0, p5}, Luk/co/immediate/mobile/visordown/ProgressDialogExt;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 37
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 40
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 42
    .local v2, "progressBar":Landroid/widget/ProgressBar;
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 43
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 46
    const/16 v4, 0x14

    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 48
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 49
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Luk/co/immediate/mobile/visordown/ProgressDialogExt;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {v0}, Luk/co/immediate/mobile/visordown/ProgressDialogExt;->show()V

    .line 54
    return-object v0
.end method
