.class final synthetic Lcom/android/providers/contacts/-$Lambda$sxkjP_IbDQdDF2vdIFaP2svxIsg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic $INST$0:Lcom/android/providers/contacts/-$Lambda$sxkjP_IbDQdDF2vdIFaP2svxIsg;

.field public static final synthetic $INST$1:Lcom/android/providers/contacts/-$Lambda$sxkjP_IbDQdDF2vdIFaP2svxIsg;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/android/providers/contacts/AbstractContactsProvider;->lambda$-com_android_providers_contacts_AbstractContactsProvider_5439()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/android/providers/contacts/AbstractContactsProvider;->lambda$-com_android_providers_contacts_AbstractContactsProvider_5529()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/providers/contacts/-$Lambda$sxkjP_IbDQdDF2vdIFaP2svxIsg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/-$Lambda$sxkjP_IbDQdDF2vdIFaP2svxIsg;-><init>(B)V

    sput-object v0, Lcom/android/providers/contacts/-$Lambda$sxkjP_IbDQdDF2vdIFaP2svxIsg;->$INST$0:Lcom/android/providers/contacts/-$Lambda$sxkjP_IbDQdDF2vdIFaP2svxIsg;

    new-instance v0, Lcom/android/providers/contacts/-$Lambda$sxkjP_IbDQdDF2vdIFaP2svxIsg;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/-$Lambda$sxkjP_IbDQdDF2vdIFaP2svxIsg;-><init>(B)V

    sput-object v0, Lcom/android/providers/contacts/-$Lambda$sxkjP_IbDQdDF2vdIFaP2svxIsg;->$INST$1:Lcom/android/providers/contacts/-$Lambda$sxkjP_IbDQdDF2vdIFaP2svxIsg;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/providers/contacts/-$Lambda$sxkjP_IbDQdDF2vdIFaP2svxIsg;->$id:B

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-byte v0, p0, Lcom/android/providers/contacts/-$Lambda$sxkjP_IbDQdDF2vdIFaP2svxIsg;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/providers/contacts/-$Lambda$sxkjP_IbDQdDF2vdIFaP2svxIsg;->$m$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/providers/contacts/-$Lambda$sxkjP_IbDQdDF2vdIFaP2svxIsg;->$m$1()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
