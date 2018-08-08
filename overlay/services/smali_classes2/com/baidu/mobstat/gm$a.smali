.class public Lcom/baidu/mobstat/gm$a;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/gm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:Z

.field private g:[B

.field private h:Z

.field private i:I

.field private j:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1890
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1891
    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/baidu/mobstat/gm$a;->f:Z

    .line 1892
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/baidu/mobstat/gm$a;->a:Z

    .line 1893
    iget-boolean v0, p0, Lcom/baidu/mobstat/gm$a;->a:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    iput v0, p0, Lcom/baidu/mobstat/gm$a;->d:I

    .line 1894
    iget v0, p0, Lcom/baidu/mobstat/gm$a;->d:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/mobstat/gm$a;->c:[B

    .line 1895
    iput v1, p0, Lcom/baidu/mobstat/gm$a;->b:I

    .line 1896
    iput v1, p0, Lcom/baidu/mobstat/gm$a;->e:I

    .line 1897
    iput-boolean v1, p0, Lcom/baidu/mobstat/gm$a;->h:Z

    .line 1898
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/baidu/mobstat/gm$a;->g:[B

    .line 1899
    iput p2, p0, Lcom/baidu/mobstat/gm$a;->i:I

    .line 1900
    invoke-static {p2}, Lcom/baidu/mobstat/gm;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/gm$a;->j:[B

    .line 1901
    return-void

    :cond_1
    move v0, v2

    .line 1891
    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    .line 1893
    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1994
    iget v0, p0, Lcom/baidu/mobstat/gm$a;->b:I

    if-gtz v0, :cond_0

    .line 2004
    :goto_0
    return-void

    .line 1995
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/gm$a;->a:Z

    if-nez v0, :cond_1

    .line 2000
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1996
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/gm$a;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/baidu/mobstat/gm$a;->g:[B

    iget-object v2, p0, Lcom/baidu/mobstat/gm$a;->c:[B

    iget v3, p0, Lcom/baidu/mobstat/gm$a;->b:I

    iget v4, p0, Lcom/baidu/mobstat/gm$a;->i:I

    invoke-static {v1, v2, v3, v4}, Lcom/baidu/mobstat/gm;->a([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1997
    iput v5, p0, Lcom/baidu/mobstat/gm$a;->b:I

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2015
    invoke-virtual {p0}, Lcom/baidu/mobstat/gm$a;->a()V

    .line 2019
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 2021
    iput-object v0, p0, Lcom/baidu/mobstat/gm$a;->c:[B

    .line 2022
    iput-object v0, p0, Lcom/baidu/mobstat/gm$a;->out:Ljava/io/OutputStream;

    .line 2023
    return-void
.end method

.method public write(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x5

    const/4 v5, 0x0

    .line 1920
    iget-boolean v0, p0, Lcom/baidu/mobstat/gm$a;->h:Z

    if-nez v0, :cond_1

    .line 1926
    iget-boolean v0, p0, Lcom/baidu/mobstat/gm$a;->a:Z

    if-nez v0, :cond_2

    .line 1945
    iget-object v0, p0, Lcom/baidu/mobstat/gm$a;->j:[B

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-gt v0, v2, :cond_5

    .line 1954
    iget-object v0, p0, Lcom/baidu/mobstat/gm$a;->j:[B

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-ne v0, v2, :cond_6

    .line 1958
    :cond_0
    :goto_0
    return-void

    .line 1921
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/gm$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1922
    return-void

    .line 1927
    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/gm$a;->c:[B

    iget v1, p0, Lcom/baidu/mobstat/gm$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/baidu/mobstat/gm$a;->b:I

    int-to-byte v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1928
    iget v0, p0, Lcom/baidu/mobstat/gm$a;->b:I

    iget v1, p0, Lcom/baidu/mobstat/gm$a;->d:I

    if-lt v0, v1, :cond_0

    .line 1930
    iget-object v0, p0, Lcom/baidu/mobstat/gm$a;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/baidu/mobstat/gm$a;->g:[B

    iget-object v2, p0, Lcom/baidu/mobstat/gm$a;->c:[B

    iget v3, p0, Lcom/baidu/mobstat/gm$a;->d:I

    iget v4, p0, Lcom/baidu/mobstat/gm$a;->i:I

    invoke-static {v1, v2, v3, v4}, Lcom/baidu/mobstat/gm;->a([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1932
    iget v0, p0, Lcom/baidu/mobstat/gm$a;->e:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/mobstat/gm$a;->e:I

    .line 1933
    iget-boolean v0, p0, Lcom/baidu/mobstat/gm$a;->f:Z

    if-nez v0, :cond_4

    .line 1938
    :cond_3
    :goto_1
    iput v5, p0, Lcom/baidu/mobstat/gm$a;->b:I

    goto :goto_0

    .line 1933
    :cond_4
    iget v0, p0, Lcom/baidu/mobstat/gm$a;->e:I

    const/16 v1, 0x4c

    if-lt v0, v1, :cond_3

    .line 1934
    iget-object v0, p0, Lcom/baidu/mobstat/gm$a;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1935
    iput v5, p0, Lcom/baidu/mobstat/gm$a;->e:I

    goto :goto_1

    .line 1946
    :cond_5
    iget-object v0, p0, Lcom/baidu/mobstat/gm$a;->c:[B

    iget v1, p0, Lcom/baidu/mobstat/gm$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/baidu/mobstat/gm$a;->b:I

    int-to-byte v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1947
    iget v0, p0, Lcom/baidu/mobstat/gm$a;->b:I

    iget v1, p0, Lcom/baidu/mobstat/gm$a;->d:I

    if-lt v0, v1, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/baidu/mobstat/gm$a;->c:[B

    iget-object v1, p0, Lcom/baidu/mobstat/gm$a;->g:[B

    iget v2, p0, Lcom/baidu/mobstat/gm$a;->i:I

    invoke-static {v0, v5, v1, v5, v2}, Lcom/baidu/mobstat/gm;->a([BI[BII)I

    move-result v0

    .line 1950
    iget-object v1, p0, Lcom/baidu/mobstat/gm$a;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/baidu/mobstat/gm$a;->g:[B

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1951
    iput v5, p0, Lcom/baidu/mobstat/gm$a;->b:I

    goto :goto_0

    .line 1955
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Invalid character in Base64 data."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1975
    iget-boolean v1, p0, Lcom/baidu/mobstat/gm$a;->h:Z

    if-nez v1, :cond_0

    .line 1980
    :goto_0
    if-lt v0, p3, :cond_1

    .line 1984
    return-void

    .line 1976
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/gm$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1977
    return-void

    .line 1981
    :cond_1
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/gm$a;->write(I)V

    .line 1980
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
