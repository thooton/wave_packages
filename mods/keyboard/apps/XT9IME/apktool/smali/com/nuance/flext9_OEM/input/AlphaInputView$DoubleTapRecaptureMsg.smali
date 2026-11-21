.class Lcom/nuance/flext9_OEM/input/AlphaInputView$DoubleTapRecaptureMsg;
.super Ljava/lang/Object;
.source "AlphaInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/AlphaInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleTapRecaptureMsg"
.end annotation


# instance fields
.field mContextBuffer:Ljava/lang/CharSequence;

.field mRecaptureBuffer:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView$DoubleTapRecaptureMsg;->mContextBuffer:Ljava/lang/CharSequence;

    .line 221
    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView$DoubleTapRecaptureMsg;->mRecaptureBuffer:Ljava/lang/CharSequence;

    .line 222
    return-void
.end method
