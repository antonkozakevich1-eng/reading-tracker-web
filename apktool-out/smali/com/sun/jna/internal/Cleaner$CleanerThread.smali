.class Lcom/sun/jna/internal/Cleaner$CleanerThread;
.super Ljava/lang/Thread;
.source "Cleaner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/internal/Cleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CleanerThread"
.end annotation


# static fields
.field private static final CLEANER_LINGER_TIME:J = 0x7530L


# instance fields
.field final synthetic this$0:Lcom/sun/jna/internal/Cleaner;


# direct methods
.method public constructor <init>(Lcom/sun/jna/internal/Cleaner;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/sun/jna/internal/Cleaner$CleanerThread;->this$0:Lcom/sun/jna/internal/Cleaner;

    .line 146
    const-string p1, "JNA Cleaner"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 147
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/jna/internal/Cleaner$CleanerThread;->setDaemon(Z)V

    .line 148
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 154
    nop

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sun/jna/internal/Cleaner$CleanerThread;->this$0:Lcom/sun/jna/internal/Cleaner;

    invoke-static {v1}, Lcom/sun/jna/internal/Cleaner;->access$100(Lcom/sun/jna/internal/Cleaner;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v2, v3}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    move-result-object v1

    .line 155
    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Ljava/lang/Object;>;"
    instance-of v2, v1, Lcom/sun/jna/internal/Cleaner$CleanerRef;

    if-eqz v2, :cond_0

    .line 156
    move-object v2, v1

    check-cast v2, Lcom/sun/jna/internal/Cleaner$CleanerRef;

    invoke-virtual {v2}, Lcom/sun/jna/internal/Cleaner$CleanerRef;->clean()V

    goto/16 :goto_2

    .line 157
    :cond_0
    if-nez v1, :cond_5

    .line 158
    iget-object v2, p0, Lcom/sun/jna/internal/Cleaner$CleanerThread;->this$0:Lcom/sun/jna/internal/Cleaner;

    invoke-static {v2}, Lcom/sun/jna/internal/Cleaner;->access$100(Lcom/sun/jna/internal/Cleaner;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :try_start_1
    const-class v3, Lcom/sun/jna/internal/Cleaner;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    .line 160
    .local v3, "logger":Ljava/util/logging/Logger;
    iget-object v4, p0, Lcom/sun/jna/internal/Cleaner$CleanerThread;->this$0:Lcom/sun/jna/internal/Cleaner;

    invoke-static {v4}, Lcom/sun/jna/internal/Cleaner;->access$200(Lcom/sun/jna/internal/Cleaner;)Lcom/sun/jna/internal/Cleaner$CleanerRef;

    move-result-object v4

    if-nez v4, :cond_1

    .line 161
    iget-object v4, p0, Lcom/sun/jna/internal/Cleaner$CleanerThread;->this$0:Lcom/sun/jna/internal/Cleaner;

    invoke-static {v4, v0}, Lcom/sun/jna/internal/Cleaner;->access$302(Lcom/sun/jna/internal/Cleaner;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 162
    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Shutting down CleanerThread"

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 163
    monitor-exit v2

    goto :goto_3

    .line 164
    :cond_1
    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v4, "registeredCleaners":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/sun/jna/internal/Cleaner$CleanerThread;->this$0:Lcom/sun/jna/internal/Cleaner;

    invoke-static {v5}, Lcom/sun/jna/internal/Cleaner;->access$200(Lcom/sun/jna/internal/Cleaner;)Lcom/sun/jna/internal/Cleaner$CleanerRef;

    move-result-object v5

    .local v5, "cleanerRef":Lcom/sun/jna/internal/Cleaner$CleanerRef;
    :goto_1
    if-eqz v5, :cond_3

    .line 167
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 168
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_2
    invoke-static {v5}, Lcom/sun/jna/internal/Cleaner$CleanerRef;->access$500(Lcom/sun/jna/internal/Cleaner$CleanerRef;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {v5}, Lcom/sun/jna/internal/Cleaner$CleanerRef;->access$400(Lcom/sun/jna/internal/Cleaner$CleanerRef;)Lcom/sun/jna/internal/Cleaner$CleanerRef;

    move-result-object v6

    move-object v5, v6

    goto :goto_1

    .line 172
    .end local v5    # "cleanerRef":Lcom/sun/jna/internal/Cleaner$CleanerRef;
    :cond_3
    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v6, "Registered Cleaners: {0}"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    .end local v3    # "logger":Ljava/util/logging/Logger;
    .end local v4    # "registeredCleaners":Ljava/lang/StringBuilder;
    :cond_4
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 182
    .end local v1    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 183
    .local v1, "ex":Ljava/lang/Exception;
    const-class v2, Lcom/sun/jna/internal/Cleaner;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_5
    :goto_2
    goto/16 :goto_0

    .line 176
    :catch_1
    move-exception v0

    .line 181
    .local v0, "ex":Ljava/lang/InterruptedException;
    nop

    .line 186
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :goto_3
    return-void
.end method
