.class public Luk/co/immediate/mobile/visordown/RSSReaderApplication;
.super Landroid/app/Application;
.source "RSSReaderApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;
    }
.end annotation


# instance fields
.field public service:Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 32
    new-instance v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;

    invoke-direct {v0, p0}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;-><init>(Luk/co/immediate/mobile/visordown/RSSReaderApplication;)V

    iput-object v0, p0, Luk/co/immediate/mobile/visordown/RSSReaderApplication;->service:Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;

    .line 30
    return-void
.end method
