.class public Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;
.super Landroid/preference/ListPreference;
.source "ListPreferenceMultiSelect.java"


# static fields
.field private static final DEFAULT_SEPARATOR:Ljava/lang/String; = "/"


# instance fields
.field private checkAllKey:Ljava/lang/String;

.field private mClickedDialogEntryIndices:[Z

.field private separator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v4, 0x0

    iput-object v4, p0, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->checkAllKey:Ljava/lang/String;

    .line 42
    sget-object v4, Luk/co/immediate/mobile/visordown/R$styleable;->ListPreferenceMultiSelect:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->checkAllKey:Ljava/lang/String;

    .line 44
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 46
    iput-object v2, p0, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->separator:Ljava/lang/String;

    .line 51
    :goto_0
    invoke-virtual {p0}, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 52
    .local v1, "entries":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    array-length v3, v1

    :cond_0
    new-array v3, v3, [Z

    iput-object v3, p0, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->mClickedDialogEntryIndices:[Z

    .line 53
    return-void

    .line 48
    .end local v1    # "entries":[Ljava/lang/CharSequence;
    :cond_1
    const-string v4, "/"

    iput-object v4, p0, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->separator:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$0(Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;I)Z
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0, p1}, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->isCheckAllValue(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;Landroid/content/DialogInterface;Z)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->checkAll(Landroid/content/DialogInterface;Z)V

    return-void
.end method

.method static synthetic access$2(Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;)[Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->mClickedDialogEntryIndices:[Z

    return-object v0
.end method

.method private checkAll(Landroid/content/DialogInterface;Z)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "val"    # Z

    .prologue
    .line 96
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 97
    .local v1, "lv":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 98
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 102
    return-void

    .line 99
    :cond_0
    invoke-virtual {v1, v0, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 100
    iget-object v3, p0, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->mClickedDialogEntryIndices:[Z

    aput-boolean p2, v3, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static contains(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "straw"    # Ljava/lang/String;
    .param p1, "haystack"    # Ljava/lang/String;
    .param p2, "separator"    # Ljava/lang/String;

    .prologue
    .line 175
    if-nez p2, :cond_0

    .line 176
    const-string p2, "/"

    .line 178
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "vals":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 184
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 180
    :cond_1
    aget-object v2, v1, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    const/4 v2, 0x1

    goto :goto_1

    .line 179
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isCheckAllValue(I)Z
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 88
    invoke-virtual {p0}, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 89
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    iget-object v1, p0, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->checkAllKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 90
    aget-object v1, v0, p1

    iget-object v2, p0, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->checkAllKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 92
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "pColl":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Object;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "oIter":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 159
    .end local v1    # "oIter":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Object;>;"
    :cond_0
    const-string v2, ""

    .line 163
    :goto_0
    return-object v2

    .line 160
    .restart local v1    # "oIter":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Object;>;"
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "oBuilder":Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private restoreCheckedEntries()V
    .locals 7

    .prologue
    .line 114
    invoke-virtual {p0}, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 117
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "vals":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 120
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 122
    .local v4, "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-lt v2, v5, :cond_1

    .line 129
    .end local v2    # "i":I
    .end local v4    # "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 123
    .restart local v2    # "i":I
    .restart local v4    # "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    aget-object v0, v1, v2

    .line 124
    .local v0, "entry":Ljava/lang/CharSequence;
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    iget-object v5, p0, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->mClickedDialogEntryIndices:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v2

    .line 122
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 5
    .param p1, "positiveResult"    # Z

    .prologue
    .line 134
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 137
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-lt v1, v4, :cond_1

    .line 148
    invoke-virtual {p0, v3}, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->callChangeListener(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    iget-object v4, p0, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->separator:Ljava/lang/String;

    invoke-static {v3, v4}, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->setValue(Ljava/lang/String;)V

    .line 152
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 139
    .restart local v1    # "i":I
    :cond_1
    iget-object v4, p0, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->mClickedDialogEntryIndices:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_3

    .line 141
    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/String;

    .line 142
    .local v2, "val":Ljava/lang/String;
    iget-object v4, p0, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->checkAllKey:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->checkAllKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 143
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v2    # "val":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 68
    invoke-virtual {p0}, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 69
    .local v0, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 70
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_1

    .line 71
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 72
    const-string v3, "ListPreference requires an entries array and an entryValues array which are both the same length"

    .line 71
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_1
    invoke-direct {p0}, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->restoreCheckedEntries()V

    .line 76
    iget-object v2, p0, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->mClickedDialogEntryIndices:[Z

    .line 77
    new-instance v3, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect$1;

    invoke-direct {v3, p0}, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect$1;-><init>(Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;)V

    .line 76
    invoke-virtual {p1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    return-void
.end method

.method public parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 1
    .param p1, "val"    # Ljava/lang/CharSequence;

    .prologue
    .line 105
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 109
    .end local p1    # "val":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local p1    # "val":Ljava/lang/CharSequence;
    :cond_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "val":Ljava/lang/CharSequence;
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 59
    if-eqz p1, :cond_0

    array-length v0, p1

    :goto_0
    new-array v0, v0, [Z

    iput-object v0, p0, Luk/co/immediate/mobile/visordown/ListPreferenceMultiSelect;->mClickedDialogEntryIndices:[Z

    .line 60
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
