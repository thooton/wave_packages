.class public Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;
.super Ljava/lang/Object;
.source "KeyboardViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/KeyboardViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Pointer"
.end annotation


# instance fields
.field public DownTime:J

.field public EventTime:J

.field public Path:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field public Pressed:Z

.field public RePress:Z

.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;


# direct methods
.method public constructor <init>(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 147
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Pressed:Z

    .line 150
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->RePress:Z

    .line 151
    iput-wide v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->DownTime:J

    .line 152
    iput-wide v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->EventTime:J

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    .line 147
    return-void
.end method
