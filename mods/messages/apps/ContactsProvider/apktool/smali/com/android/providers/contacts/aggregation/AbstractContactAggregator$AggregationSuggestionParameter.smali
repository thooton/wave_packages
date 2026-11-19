.class public final Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregationSuggestionParameter;
.super Ljava/lang/Object;
.source "AbstractContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AggregationSuggestionParameter"
.end annotation


# instance fields
.field public final kind:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregationSuggestionParameter;->kind:Ljava/lang/String;

    .line 198
    iput-object p2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregationSuggestionParameter;->value:Ljava/lang/String;

    .line 199
    return-void
.end method
