; Nano11.j

; Generated by ClassFileAnalyzer (Can)
; Analyzer and Disassembler for Java class files
; (Jasmin syntax 2, http://jasmin.sourceforge.net)
;
; ClassFileAnalyzer, version 0.7.0 


.bytecode 52.0
.source Nano11.java
.class public Nano11
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
  .limit locals 4
  .line 5
  0: iconst_1
  1: istore_1
  .line 6
  2: iconst_2
  3: istore_2
  .line 7
  4: iconst_5
  5: istore_3
Label6:
  .line 8
  6: iload_3
  7: iload_1
  8: if_icmple Label25
  .line 9
  11: iload_1
  12: iload_2
  13: iadd
  14: istore_1
  .line 10
  15: getstatic java/lang/System/out Ljava/io/PrintStream;
  18: iload_1
  19: invokevirtual java/io/PrintStream/println(I)V
  22: goto Label6
Label25:
  .line 12
  25: return
  ; append_frame (frameNumber = 0)
  ; frame_type = 254, offset_delta = 6
  ; frame bytes: 254 0 6 1 1 1 
  .stack 
    offset 6
    locals Integer
    locals Integer
    locals Integer
    .end stack
  ; same_frame (frameNumber = 1)
  ; frame_type = 18, offset_delta = 18
  ; frame bytes: 18 
  .stack 
    offset 25
    locals Integer
    locals Integer
    locals Integer
    .end stack
.end method

