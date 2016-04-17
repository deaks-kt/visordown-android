.class Luk/co/immediate/mobile/visordown/SplashScreenActivity$1;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/immediate/mobile/visordown/SplashScreenActivity;->checkConnectionAndLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/immediate/mobile/visordown/SplashScreenActivity;


# direct methods
.method constructor <init>(Luk/co/immediate/mobile/visordown/SplashScreenActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/SplashScreenActivity$1;->this$0:Luk/co/immediate/mobile/visordown/SplashScreenActivity;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 59
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/SplashScreenActivity$1;->this$0:Luk/co/immediate/mobile/visordown/SplashScreenActivity;

    # invokes: Luk/co/immediate/mobile/visordown/SplashScreenActivity;->checkConnectionAndLoad()V
    invoke-static {v0}, Luk/co/immediate/mobile/visordown/SplashScreenActivity;->access$2(Luk/co/immediate/mobile/visordown/SplashScreenActivity;)V

    .line 60
    return-void
.end method
