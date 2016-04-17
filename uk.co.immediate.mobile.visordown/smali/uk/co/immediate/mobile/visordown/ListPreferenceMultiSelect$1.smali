.class Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect$1;
.super Ljava/lang/Object;
.source "ListPreferenceMultiSelect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;


# direct methods
.method constructor <init>(Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect$1;->this$0:Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "val"    # Z

    .prologue
    .line 79
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect$1;->this$0:Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;

    # invokes: Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->isCheckAllValue(I)Z
    invoke-static {v0, p2}, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->access$0(Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect$1;->this$0:Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;

    # invokes: Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->checkAll(Landroid/content/DialogInterface;Z)V
    invoke-static {v0, p1, p3}, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->access$1(Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;Landroid/content/DialogInterface;Z)V

    .line 82
    :cond_0
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect$1;->this$0:Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;

    # getter for: Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->mClickedDialogEntryIndices:[Z
    invoke-static {v0}, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->access$2(Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 83
    return-void
.end method
