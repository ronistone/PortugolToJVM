; Nano08.j

; Generated by ClassFileAnalyzer (Can)
; Analyzer and Disassembler for Java class files
; (Jasmin syntax 2, http://jasmin.sourceforge.net)
;
; ClassFileAnalyzer, version 0.7.0 


.bytecode 52.0
.source Nano08.java
.class public Nano08
.super java/lang/Object

.method public <init>()V
  .limit stack 1
  .limit locals 1
  .line 1
  0: aload_0
  1: invokespecial java/lang/Object/<init>()V
  4: return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 2
  .limit locals 2
  .line 4
  0: iconst_1
  1: istore_1
  .line 5
  2: iload_1
  3: iconst_1
  4: if_icmpne Label17
  .line 6
  7: getstatic java/lang/System/out Ljava/io/PrintStream;
  10: iload_1
  11: invokevirtual java/io/PrintStream/println(I)V
  14: goto Label24
Label17:
  .line 8
  17: getstatic java/lang/System/out Ljava/io/PrintStream;
  20: iconst_0
  21: invokevirtual java/io/PrintStream/println(I)V
Label24:
  .line 10
  24: return
  ; append_frame (frameNumber = 0)
  ; frame_type = 252, offset_delta = 17
  ; frame bytes: 252 0 17 1 
  .stack 
    offset 17
    locals Integer
    .end stack
  ; same_frame (frameNumber = 1)
  ; frame_type = 6, offset_delta = 6
  ; frame bytes: 6 
  .stack 
    offset 24
    locals Integer
    .end stack
.end method


