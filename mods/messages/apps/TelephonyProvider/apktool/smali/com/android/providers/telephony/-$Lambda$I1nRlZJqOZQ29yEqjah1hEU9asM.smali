.class final synthetic Lcom/android/providers/telephony/-$Lambda$I1nRlZJqOZQ29yEqjah1hEU9asM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/providers/telephony/-$Lambda$I1nRlZJqOZQ29yEqjah1hEU9asM;->-$f0:Ljava/lang/Object;

    check-cast v0, Lorg/borqs/internal/TelephonyExtManager;

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->lambda$-com_android_providers_telephony_TelephonyProvider$DatabaseHelper_28458(Lorg/borqs/internal/TelephonyExtManager;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/providers/telephony/-$Lambda$I1nRlZJqOZQ29yEqjah1hEU9asM;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/providers/telephony/-$Lambda$I1nRlZJqOZQ29yEqjah1hEU9asM;->$m$0()V

    return-void
.end method
