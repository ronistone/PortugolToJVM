; Nano10.j

; Generated by ClassFileAnalyzer (Can)
; Analyzer and Disassembler for Java class files
; (Jasmin syntax 2, http://jasmin.sourceforge.net)
;
; ClassFileAnalyzer, version 0.7.0 


.bytecode 52.0
.source Nano10.java
.class public Nano10
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
  .limit locals 3
  .line 4
  0: iconst_1
  1: istore_1
  .line 5
  2: iconst_2
  3: istore_2
  .line 6
  4: iload_1
  5: iload_2
  6: if_icmpne Label19
  .line 7
  9: getstatic java/lang/System/out Ljava/io/PrintStream;
  12: iload_1
  13: invokevirtual java/io/PrintStream/println(I)V
  16: goto Label26
Label19:
  .line 9
  19: getstatic java/lang/System/out Ljava/io/PrintStream;
  22: iconst_0
  23: invokevirtual java/io/PrintStream/println(I)V
Label26:
  .line 11
  26: return
  ; append_frame (frameNumber = 0)
  ; frame_type = 253, offset_delta = 19
  ; frame bytes: 253 0 19 1 1 
  .stack 
    offset 19
    locals Integer
    locals Integer
    .end stack
  ; same_frame (frameNumber = 1)
  ; frame_type = 6, offset_delta = 6
  ; frame bytes: 6 
  .stack 
    offset 26
    locals Integer
    locals Integer
    .end stack
.end method


