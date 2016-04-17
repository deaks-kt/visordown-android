.class Luk/co/immediate/mobile/visordown/HomePageActivity$3;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/immediate/mobile/visordown/HomePageActivity;->showError(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;


# direct methods
.method constructor <init>(Luk/co/immediate/mobile/visordown/HomePageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$3;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 125
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$3;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;

    invoke-virtual {v0}, Luk/co/immediate/mobile/visordown/HomePageActivity;->finish()V

    .line 126
    return-void
.end method
