.class public Luk/co/immediate/mobile/visordown/SettingsActivity;
.super Lcom/actionbarsherlock/app/SherlockPreferenceActivity;
.source "SettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v8, 0x7f040001

    invoke-virtual {p0, v8}, Luk/co/immediate/mobile/visordown/SettingsActivity;->addPreferencesFromResource(I)V

    .line 16
    const-string v8, "pref_news_categories"

    invoke-virtual {p0, v8}, Luk/co/immediate/mobile/visordown/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    .line 18
    .local v6, "newsCategories":Landroid/preference/ListPreference;
    invoke-virtual {p0}, Luk/co/immediate/mobile/visordown/SettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication;

    .line 19
    .local v0, "appState":Luk/co/immediate/mobile/visordown/RSSReaderApplication;
    iget-object v8, v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication;->service:Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;

    invoke-virtual {v8}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getCategories()Ljava/util/Map;

    move-result-object v1

    .line 21
    .local v1, "categories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v8

    new-array v3, v8, [Ljava/lang/String;

    .line 22
    .local v3, "entries":[Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v8

    new-array v4, v8, [Ljava/lang/String;

    .line 24
    .local v4, "entryValues":[Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 26
    .local v7, "x":I
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 35
    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 37
    return-void

    .line 27
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 29
    .local v2, "categoryId":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 30
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    aput-object v8, v3, v7

    .line 32
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method
