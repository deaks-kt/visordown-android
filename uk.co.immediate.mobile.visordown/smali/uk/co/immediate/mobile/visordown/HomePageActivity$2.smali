.class Luk/co/immediate/mobile/visordown/HomePageActivity$2;
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

.field private final synthetic val$resetView:Ljava/lang/String;


# direct methods
.method constructor <init>(Luk/co/immediate/mobile/visordown/HomePageActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$2;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;

    iput-object p2, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$2;->val$resetView:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 118
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$2;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;

    iget-object v1, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$2;->val$resetView:Ljava/lang/String;

    # invokes: Luk/co/immediate/mobile/visordown/HomePageActivity;->loadData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Luk/co/immediate/mobile/visordown/HomePageActivity;->access$3(Luk/co/immediate/mobile/visordown/HomePageActivity;Ljava/lang/String;)V

    .line 119
    return-void
.end method
