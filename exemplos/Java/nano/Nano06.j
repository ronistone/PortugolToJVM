; Nano06.j

; Generated by ClassFileAnalyzer (Can)
; Analyzer and Disassembler for Java class files
; (Jasmin syntax 2, http://jasmin.sourceforge.net)
;
; ClassFileAnalyzer, version 0.7.0 


.bytecode 52.0
.source Nano06.java
.class public Nano06
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
  0: iconst_m1
  1: istore_1
  .line 5
  2: getstatic java/lang/System/out Ljava/io/PrintStream;
  5: iload_1
  6: invokevirtual java/io/PrintStream/println(I)V
  .line 6
  9: return
.end method


