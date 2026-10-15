.class Lcom/sun/jna/ELFAnalyser$ELFSectionHeaders;
.super Ljava/lang/Object;
.source "ELFAnalyser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/ELFAnalyser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ELFSectionHeaders"
.end annotation


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZLjava/nio/ByteBuffer;Ljava/io/RandomAccessFile;)V
    .locals 17
    .param p1, "_64bit"    # Z
    .param p2, "bigEndian"    # Z
    .param p3, "headerData"    # Ljava/nio/ByteBuffer;
    .param p4, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 245
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaders;->entries:Ljava/util/List;

    .line 253
    if-eqz v1, :cond_0

    .line 254
    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v3

    .line 255
    .local v3, "shoff":J
    const/16 v5, 0x3a

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    .line 256
    .local v5, "shentsize":I
    const/16 v6, 0x3c

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    .line 257
    .local v6, "shnum":I
    const/16 v7, 0x3e

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v7

    .local v7, "shstrndx":I
    goto :goto_0

    .line 259
    .end local v3    # "shoff":J
    .end local v5    # "shentsize":I
    .end local v6    # "shnum":I
    .end local v7    # "shstrndx":I
    :cond_0
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    .line 260
    .restart local v3    # "shoff":J
    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    .line 261
    .restart local v5    # "shentsize":I
    const/16 v6, 0x30

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    .line 262
    .restart local v6    # "shnum":I
    const/16 v7, 0x32

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v7

    .line 265
    .restart local v7    # "shstrndx":I
    :goto_0
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 266
    .local v8, "sectionBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p4 .. p4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    invoke-virtual {v9, v8, v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 267
    new-instance v9, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;

    invoke-direct {v9, v1, v8}, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;-><init>(ZLjava/nio/ByteBuffer;)V

    .line 269
    .local v9, "section0":Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;
    if-nez v6, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-eqz v10, :cond_1

    .line 270
    invoke-virtual {v9}, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->getSize()J

    move-result-wide v10

    long-to-int v10, v10

    .local v10, "sectionCount":I
    goto :goto_1

    .line 272
    .end local v10    # "sectionCount":I
    :cond_1
    move v10, v6

    .line 275
    .restart local v10    # "sectionCount":I
    :goto_1
    const v11, 0xffff

    if-ne v7, v11, :cond_2

    .line 276
    invoke-virtual {v9}, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->getLink()I

    move-result v7

    .line 279
    :cond_2
    mul-int v11, v10, v5

    .line 281
    .local v11, "tableLength":I
    if-eqz v11, :cond_a

    if-nez v7, :cond_3

    move-wide v15, v3

    goto/16 :goto_8

    .line 287
    :cond_3
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 288
    .local v12, "data":Ljava/nio/ByteBuffer;
    if-eqz p2, :cond_4

    sget-object v13, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_2

    :cond_4
    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_2
    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 289
    invoke-virtual/range {p4 .. p4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v13

    invoke-virtual {v13, v12, v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 291
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    if-ge v13, v6, :cond_5

    .line 292
    mul-int v14, v13, v5

    invoke-virtual {v12, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 293
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 294
    .local v14, "header":Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 295
    invoke-virtual {v14, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 296
    iget-object v15, v0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaders;->entries:Ljava/util/List;

    new-instance v2, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;

    invoke-direct {v2, v1, v14}, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;-><init>(ZLjava/nio/ByteBuffer;)V

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    .end local v14    # "header":Ljava/nio/ByteBuffer;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p3

    goto :goto_3

    .line 299
    .end local v13    # "i":I
    :cond_5
    iget-object v2, v0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaders;->entries:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;

    .line 300
    .local v2, "stringTable":Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;
    invoke-virtual {v2}, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->getSize()J

    move-result-wide v13

    long-to-int v13, v13

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 301
    .local v13, "stringBuffer":Ljava/nio/ByteBuffer;
    if-eqz p2, :cond_6

    sget-object v14, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_4

    :cond_6
    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_4
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 302
    invoke-virtual/range {p4 .. p4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v14

    move-wide v15, v3

    .end local v3    # "shoff":J
    .local v15, "shoff":J
    invoke-virtual {v2}, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->getOffset()J

    move-result-wide v3

    invoke-virtual {v14, v13, v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 303
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 305
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 306
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v4, v0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaders;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;

    .line 307
    .local v14, "eshe":Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 309
    invoke-virtual {v14}, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->getNameOffset()I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 311
    :goto_6
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 312
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 313
    .local v0, "b":B
    if-nez v0, :cond_7

    .line 314
    goto :goto_7

    .line 316
    :cond_7
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 318
    .end local v0    # "b":B
    move/from16 v1, p1

    goto :goto_6

    .line 320
    :cond_8
    :goto_7
    const-string v0, "ASCII"

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;->setName(Ljava/lang/String;)V

    .line 321
    .end local v14    # "eshe":Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;
    move-object/from16 v0, p0

    move/from16 v1, p1

    goto :goto_5

    .line 322
    :cond_9
    return-void

    .line 281
    .end local v2    # "stringTable":Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;
    .end local v12    # "data":Ljava/nio/ByteBuffer;
    .end local v13    # "stringBuffer":Ljava/nio/ByteBuffer;
    .end local v15    # "shoff":J
    .local v3, "shoff":J
    :cond_a
    move-wide v15, v3

    .line 284
    .end local v3    # "shoff":J
    .restart local v15    # "shoff":J
    :goto_8
    return-void
.end method


# virtual methods
.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sun/jna/ELFAnalyser$ELFSectionHeaderEntry;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/sun/jna/ELFAnalyser$ELFSectionHeaders;->entries:Ljava/util/List;

    return-object v0
.end method
