.class final Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneKey;
.super Ljava/lang/Object;
.source "AlphaInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/AlphaInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PerfForOneKey"
.end annotation


# instance fields
.field mCh:C

.field mSpellTime:J

.field mWordCount:I


# direct methods
.method public constructor <init>(C)V
    .locals 0

    .prologue
    .line 3358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3359
    iput-char p1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView$PerfForOneKey;->mCh:C

    .line 3360
    return-void
.end method
