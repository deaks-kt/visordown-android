.class public Lcom/actionbarsherlock/internal/widget/ActionBarContainer;
.super Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;
.source "ActionBarContainer.java"


# instance fields
.field private mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mIsSplit:Z

.field private mIsStacked:Z

.field private mIsTransitioning:Z

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    sget-object v3, Lcom/actionbarsherlock/R$styleable;->SherlockActionBar:[I

    .line 57
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 61
    const/16 v3, 0xc

    .line 60
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getId()I

    move-result v3

    sget v4, Lcom/actionbarsherlock/R$id;->abs__split_action_bar:I

    if-ne v3, v4, :cond_0

    .line 64
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mIsSplit:Z

    .line 66
    const/4 v3, 0x3

    .line 65
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 68
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 72
    return-void

    :cond_2
    move v1, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getTabContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->onFinishInflate()V

    .line 77
    sget v0, Lcom/actionbarsherlock/R$id;->abs__action_bar:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    .line 78
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 196
    invoke-super/range {p0 .. p5}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->onLayout(ZIIII)V

    .line 198
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_3

    const/4 v4, 0x1

    .line 200
    .local v4, "hasTabs":Z
    :goto_0
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v2

    .line 202
    .local v2, "containerHeight":I
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 204
    .local v7, "tabHeight":I
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v8}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_7

    .line 206
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v3

    .line 207
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-lt v5, v3, :cond_4

    .line 216
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    const/4 v9, 0x0

    move/from16 v0, p4

    invoke-virtual {v8, p2, v9, v0, v7}, Landroid/view/View;->layout(IIII)V

    .line 222
    .end local v2    # "containerHeight":I
    .end local v3    # "count":I
    .end local v5    # "i":I
    .end local v7    # "tabHeight":I
    :cond_0
    :goto_2
    const/4 v6, 0x0

    .line 223
    .local v6, "needsInvalidate":Z
    iget-boolean v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v8, :cond_8

    .line 224
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    .line 225
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 226
    const/4 v6, 0x1

    .line 241
    :cond_1
    :goto_3
    if-eqz v6, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->invalidate()V

    .line 244
    :cond_2
    return-void

    .line 198
    .end local v4    # "hasTabs":Z
    .end local v6    # "needsInvalidate":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 208
    .restart local v2    # "containerHeight":I
    .restart local v3    # "count":I
    .restart local v4    # "hasTabs":Z
    .restart local v5    # "i":I
    .restart local v7    # "tabHeight":I
    :cond_4
    invoke-virtual {p0, v5}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 210
    .local v1, "child":Landroid/view/View;
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-ne v1, v8, :cond_6

    .line 207
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 212
    :cond_6
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v8}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v8

    if-nez v8, :cond_5

    .line 213
    invoke-virtual {v1, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_4

    .line 218
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "count":I
    .end local v5    # "i":I
    :cond_7
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    sub-int v9, v2, v7

    move/from16 v0, p4

    invoke-virtual {v8, p2, v9, v0, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 229
    .end local v2    # "containerHeight":I
    .end local v7    # "tabHeight":I
    .restart local v6    # "needsInvalidate":Z
    :cond_8
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_9

    .line 230
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v9}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v10}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getTop()I

    move-result v10

    .line 231
    iget-object v11, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v11}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getRight()I

    move-result v11

    iget-object v12, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v12}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getBottom()I

    move-result v12

    .line 230
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 232
    const/4 v6, 0x1

    .line 234
    :cond_9
    if-eqz v4, :cond_a

    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v8, :cond_1

    .line 235
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    .line 236
    iget-object v11, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    iget-object v12, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 235
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 237
    const/4 v6, 0x1

    goto :goto_3

    .line 234
    :cond_a
    const/4 v8, 0x0

    goto :goto_5
.end method

.method public onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 175
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->onMeasure(II)V

    .line 177
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-nez v4, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 180
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    .line 183
    .local v0, "actionBarViewHeight":I
    :goto_1
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 184
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 185
    .local v3, "mode":I
    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 186
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 187
    .local v2, "maxHeight":I
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v4

    .line 188
    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 187
    invoke-virtual {p0, v4, v5}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    goto :goto_0

    .line 181
    .end local v0    # "actionBarViewHeight":I
    .end local v2    # "maxHeight":I
    .end local v3    # "mode":I
    :cond_2
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v0, v4, v5

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->invalidate()V

    .line 83
    return-void
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->invalidate()V

    .line 93
    return-void
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 87
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->invalidate()V

    .line 88
    return-void
.end method

.method public setTabContainer(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;)V
    .locals 2
    .param p1, "tabView"    # Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 131
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 135
    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 137
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 138
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 139
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 140
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 142
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 1
    .param p1, "isTransitioning"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    .line 105
    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    :goto_0
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setDescendantFocusability(I)V

    .line 107
    return-void

    .line 106
    :cond_0
    const/high16 v0, 0x40000

    goto :goto_0
.end method
