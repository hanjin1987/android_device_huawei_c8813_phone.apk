.class public Lcom/android/phone/multiwaveview/PointCloud;
.super Ljava/lang/Object;
.source "PointCloud.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/multiwaveview/PointCloud$Point;,
        Lcom/android/phone/multiwaveview/PointCloud$GlowManager;,
        Lcom/android/phone/multiwaveview/PointCloud$WaveManager;
    }
.end annotation


# instance fields
.field glowManager:Lcom/android/phone/multiwaveview/PointCloud$GlowManager;

.field private mCenterX:F

.field private mCenterY:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mOuterRadius:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPointCloud:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/multiwaveview/PointCloud$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mScale:F

.field waveManager:Lcom/android/phone/multiwaveview/PointCloud$WaveManager;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .parameter "drawable"

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0xff

    const/4 v2, 0x1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/multiwaveview/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    .line 39
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/phone/multiwaveview/PointCloud;->mScale:F

    .line 43
    new-instance v0, Lcom/android/phone/multiwaveview/PointCloud$WaveManager;

    invoke-direct {v0, p0}, Lcom/android/phone/multiwaveview/PointCloud$WaveManager;-><init>(Lcom/android/phone/multiwaveview/PointCloud;)V

    iput-object v0, p0, Lcom/android/phone/multiwaveview/PointCloud;->waveManager:Lcom/android/phone/multiwaveview/PointCloud$WaveManager;

    .line 44
    new-instance v0, Lcom/android/phone/multiwaveview/PointCloud$GlowManager;

    invoke-direct {v0, p0}, Lcom/android/phone/multiwaveview/PointCloud$GlowManager;-><init>(Lcom/android/phone/multiwaveview/PointCloud;)V

    iput-object v0, p0, Lcom/android/phone/multiwaveview/PointCloud;->glowManager:Lcom/android/phone/multiwaveview/PointCloud$GlowManager;

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/phone/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    .line 121
    iget-object v0, p0, Lcom/android/phone/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/phone/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v0, p0, Lcom/android/phone/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/phone/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 126
    iput-object p1, p0, Lcom/android/phone/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    iget-object v0, p0, Lcom/android/phone/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_50

    .line 128
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    :cond_50
    return-void
.end method

.method private static hypot(FF)F
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 172
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method private interp(FFF)F
    .registers 5
    .parameter "min"
    .parameter "max"
    .parameter "f"

    .prologue
    .line 201
    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    return v0
.end method

.method private static max(FF)F
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 176
    cmpl-float v0, p0, p1

    if-lez v0, :cond_5

    .end local p0
    :goto_4
    return p0

    .restart local p0
    :cond_5
    move p0, p1

    goto :goto_4
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    .line 205
    iget-object v6, p0, Lcom/android/phone/multiwaveview/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    .line 206
    .local v6, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/multiwaveview/PointCloud$Point;>;"
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->save(I)I

    .line 207
    iget v10, p0, Lcom/android/phone/multiwaveview/PointCloud;->mScale:F

    iget v11, p0, Lcom/android/phone/multiwaveview/PointCloud;->mScale:F

    iget v12, p0, Lcom/android/phone/multiwaveview/PointCloud;->mCenterX:F

    iget v13, p0, Lcom/android/phone/multiwaveview/PointCloud;->mCenterY:F

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 208
    const/4 v3, 0x0

    .local v3, i:I
    :goto_12
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_85

    .line 209
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/multiwaveview/PointCloud$Point;

    .line 210
    .local v4, point:Lcom/android/phone/multiwaveview/PointCloud$Point;
    const/high16 v10, 0x4080

    const/high16 v11, 0x4000

    iget v12, v4, Lcom/android/phone/multiwaveview/PointCloud$Point;->radius:F

    iget v13, p0, Lcom/android/phone/multiwaveview/PointCloud;->mOuterRadius:F

    div-float/2addr v12, v13

    invoke-direct {p0, v10, v11, v12}, Lcom/android/phone/multiwaveview/PointCloud;->interp(FFF)F

    move-result v5

    .line 212
    .local v5, pointSize:F
    iget v10, v4, Lcom/android/phone/multiwaveview/PointCloud$Point;->x:F

    iget v11, p0, Lcom/android/phone/multiwaveview/PointCloud;->mCenterX:F

    add-float v7, v10, v11

    .line 213
    .local v7, px:F
    iget v10, v4, Lcom/android/phone/multiwaveview/PointCloud$Point;->y:F

    iget v11, p0, Lcom/android/phone/multiwaveview/PointCloud;->mCenterY:F

    add-float v8, v10, v11

    .line 214
    .local v8, py:F
    invoke-virtual {p0, v4}, Lcom/android/phone/multiwaveview/PointCloud;->getAlphaForPoint(Lcom/android/phone/multiwaveview/PointCloud$Point;)I

    move-result v0

    .line 216
    .local v0, alpha:I
    if-nez v0, :cond_40

    .line 208
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 218
    :cond_40
    iget-object v10, p0, Lcom/android/phone/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_7a

    .line 219
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->save(I)I

    .line 220
    iget-object v10, p0, Lcom/android/phone/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f00

    mul-float v1, v10, v11

    .line 221
    .local v1, cx:F
    iget-object v10, p0, Lcom/android/phone/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f00

    mul-float v2, v10, v11

    .line 222
    .local v2, cy:F
    const/high16 v10, 0x4080

    div-float v9, v5, v10

    .line 223
    .local v9, s:F
    invoke-virtual {p1, v9, v9, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 224
    sub-float v10, v7, v1

    sub-float v11, v8, v2

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 225
    iget-object v10, p0, Lcom/android/phone/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 226
    iget-object v10, p0, Lcom/android/phone/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3d

    .line 229
    .end local v1           #cx:F
    .end local v2           #cy:F
    .end local v9           #s:F
    :cond_7a
    iget-object v10, p0, Lcom/android/phone/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 230
    iget-object v10, p0, Lcom/android/phone/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v5, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3d

    .line 233
    .end local v0           #alpha:I
    .end local v4           #point:Lcom/android/phone/multiwaveview/PointCloud$Point;
    .end local v5           #pointSize:F
    .end local v7           #px:F
    .end local v8           #py:F
    :cond_85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 234
    return-void
.end method

.method public getAlphaForPoint(Lcom/android/phone/multiwaveview/PointCloud$Point;)I
    .registers 15
    .parameter "point"

    .prologue
    const v12, 0x3f490fdb

    const/4 v11, 0x0

    .line 181
    iget-object v6, p0, Lcom/android/phone/multiwaveview/PointCloud;->glowManager:Lcom/android/phone/multiwaveview/PointCloud$GlowManager;

    #getter for: Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->x:F
    invoke-static {v6}, Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->access$000(Lcom/android/phone/multiwaveview/PointCloud$GlowManager;)F

    move-result v6

    iget v7, p1, Lcom/android/phone/multiwaveview/PointCloud$Point;->x:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/phone/multiwaveview/PointCloud;->glowManager:Lcom/android/phone/multiwaveview/PointCloud$GlowManager;

    #getter for: Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->y:F
    invoke-static {v7}, Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->access$100(Lcom/android/phone/multiwaveview/PointCloud$GlowManager;)F

    move-result v7

    iget v8, p1, Lcom/android/phone/multiwaveview/PointCloud$Point;->y:F

    sub-float/2addr v7, v8

    invoke-static {v6, v7}, Lcom/android/phone/multiwaveview/PointCloud;->hypot(FF)F

    move-result v3

    .line 182
    .local v3, glowDistance:F
    const/4 v2, 0x0

    .line 183
    .local v2, glowAlpha:F
    iget-object v6, p0, Lcom/android/phone/multiwaveview/PointCloud;->glowManager:Lcom/android/phone/multiwaveview/PointCloud$GlowManager;

    #getter for: Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->radius:F
    invoke-static {v6}, Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->access$200(Lcom/android/phone/multiwaveview/PointCloud$GlowManager;)F

    move-result v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_46

    .line 184
    mul-float v6, v12, v3

    iget-object v7, p0, Lcom/android/phone/multiwaveview/PointCloud;->glowManager:Lcom/android/phone/multiwaveview/PointCloud$GlowManager;

    #getter for: Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->radius:F
    invoke-static {v7}, Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->access$200(Lcom/android/phone/multiwaveview/PointCloud$GlowManager;)F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 185
    .local v0, cosf:F
    iget-object v6, p0, Lcom/android/phone/multiwaveview/PointCloud;->glowManager:Lcom/android/phone/multiwaveview/PointCloud$GlowManager;

    #getter for: Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->alpha:F
    invoke-static {v6}, Lcom/android/phone/multiwaveview/PointCloud$GlowManager;->access$300(Lcom/android/phone/multiwaveview/PointCloud$GlowManager;)F

    move-result v6

    float-to-double v7, v0

    const-wide/high16 v9, 0x4024

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v11, v7}, Lcom/android/phone/multiwaveview/PointCloud;->max(FF)F

    move-result v7

    mul-float v2, v6, v7

    .line 189
    .end local v0           #cosf:F
    :cond_46
    iget v6, p1, Lcom/android/phone/multiwaveview/PointCloud$Point;->x:F

    iget v7, p1, Lcom/android/phone/multiwaveview/PointCloud$Point;->y:F

    invoke-static {v6, v7}, Lcom/android/phone/multiwaveview/PointCloud;->hypot(FF)F

    move-result v4

    .line 190
    .local v4, radius:F
    iget-object v6, p0, Lcom/android/phone/multiwaveview/PointCloud;->waveManager:Lcom/android/phone/multiwaveview/PointCloud$WaveManager;

    #getter for: Lcom/android/phone/multiwaveview/PointCloud$WaveManager;->radius:F
    invoke-static {v6}, Lcom/android/phone/multiwaveview/PointCloud$WaveManager;->access$400(Lcom/android/phone/multiwaveview/PointCloud$WaveManager;)F

    move-result v6

    sub-float v1, v4, v6

    .line 191
    .local v1, distanceToWaveRing:F
    const/4 v5, 0x0

    .line 192
    .local v5, waveAlpha:F
    iget-object v6, p0, Lcom/android/phone/multiwaveview/PointCloud;->waveManager:Lcom/android/phone/multiwaveview/PointCloud$WaveManager;

    #getter for: Lcom/android/phone/multiwaveview/PointCloud$WaveManager;->width:F
    invoke-static {v6}, Lcom/android/phone/multiwaveview/PointCloud$WaveManager;->access$500(Lcom/android/phone/multiwaveview/PointCloud$WaveManager;)F

    move-result v6

    const/high16 v7, 0x3f00

    mul-float/2addr v6, v7

    cmpg-float v6, v1, v6

    if-gez v6, :cond_89

    cmpg-float v6, v1, v11

    if-gez v6, :cond_89

    .line 193
    mul-float v6, v12, v1

    iget-object v7, p0, Lcom/android/phone/multiwaveview/PointCloud;->waveManager:Lcom/android/phone/multiwaveview/PointCloud$WaveManager;

    #getter for: Lcom/android/phone/multiwaveview/PointCloud$WaveManager;->width:F
    invoke-static {v7}, Lcom/android/phone/multiwaveview/PointCloud$WaveManager;->access$500(Lcom/android/phone/multiwaveview/PointCloud$WaveManager;)F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 194
    .restart local v0       #cosf:F
    iget-object v6, p0, Lcom/android/phone/multiwaveview/PointCloud;->waveManager:Lcom/android/phone/multiwaveview/PointCloud$WaveManager;

    #getter for: Lcom/android/phone/multiwaveview/PointCloud$WaveManager;->alpha:F
    invoke-static {v6}, Lcom/android/phone/multiwaveview/PointCloud$WaveManager;->access$600(Lcom/android/phone/multiwaveview/PointCloud$WaveManager;)F

    move-result v6

    float-to-double v7, v0

    const-wide/high16 v9, 0x4034

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v11, v7}, Lcom/android/phone/multiwaveview/PointCloud;->max(FF)F

    move-result v7

    mul-float v5, v6, v7

    .line 197
    .end local v0           #cosf:F
    :cond_89
    invoke-static {v2, v5}, Lcom/android/phone/multiwaveview/PointCloud;->max(FF)F

    move-result v6

    const/high16 v7, 0x437f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    return v6
.end method

.method public makePointCloud(FF)V
    .registers 20
    .parameter "innerRadius"
    .parameter "outerRadius"

    .prologue
    .line 138
    const/4 v15, 0x0

    cmpl-float v15, p1, v15

    if-nez v15, :cond_d

    .line 139
    const-string v15, "PointCloud"

    const-string v16, "Must specify an inner radius"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_c
    return-void

    .line 142
    :cond_d
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/multiwaveview/PointCloud;->mOuterRadius:F

    .line 143
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/multiwaveview/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 144
    sub-float v10, p2, p1

    .line 145
    .local v10, pointAreaRadius:F
    const v15, 0x40c90fdb

    mul-float v15, v15, p1

    const/high16 v16, 0x4100

    div-float v7, v15, v16

    .line 146
    .local v7, ds:F
    div-float v15, v10, v7

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 147
    .local v3, bands:I
    int-to-float v15, v3

    div-float v6, v10, v15

    .line 148
    .local v6, dr:F
    move/from16 v12, p1

    .line 149
    .local v12, r:F
    const/4 v2, 0x0

    .local v2, b:I
    :goto_31
    if-gt v2, v3, :cond_c

    .line 150
    const v15, 0x40c90fdb

    mul-float v4, v15, v12

    .line 151
    .local v4, circumference:F
    div-float v15, v4, v7

    float-to-int v11, v15

    .line 152
    .local v11, pointsInBand:I
    const v8, 0x3fc90fdb

    .line 153
    .local v8, eta:F
    const v15, 0x40c90fdb

    int-to-float v0, v11

    move/from16 v16, v0

    div-float v5, v15, v16

    .line 154
    .local v5, dEta:F
    const/4 v9, 0x0

    .local v9, i:I
    :goto_47
    if-ge v9, v11, :cond_69

    .line 155
    invoke-static {v8}, Landroid/util/FloatMath;->cos(F)F

    move-result v15

    mul-float v13, v12, v15

    .line 156
    .local v13, x:F
    invoke-static {v8}, Landroid/util/FloatMath;->sin(F)F

    move-result v15

    mul-float v14, v12, v15

    .line 157
    .local v14, y:F
    add-float/2addr v8, v5

    .line 158
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/multiwaveview/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    new-instance v16, Lcom/android/phone/multiwaveview/PointCloud$Point;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v14, v12}, Lcom/android/phone/multiwaveview/PointCloud$Point;-><init>(Lcom/android/phone/multiwaveview/PointCloud;FFF)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v9, v9, 0x1

    goto :goto_47

    .line 149
    .end local v13           #x:F
    .end local v14           #y:F
    :cond_69
    add-int/lit8 v2, v2, 0x1

    add-float/2addr v12, v6

    goto :goto_31
.end method

.method public setCenter(FF)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 133
    iput p1, p0, Lcom/android/phone/multiwaveview/PointCloud;->mCenterX:F

    .line 134
    iput p2, p0, Lcom/android/phone/multiwaveview/PointCloud;->mCenterY:F

    .line 135
    return-void
.end method