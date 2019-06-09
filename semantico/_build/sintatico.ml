
(* This generated code requires the following version of MenhirLib: *)

let () =
  MenhirLib.StaticVersion.require_20180905

module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE of (
# 26 "sintatico.mly"
       (Lexing.position)
# 16 "sintatico.ml"
  )
    | VIRG of (
# 22 "sintatico.mly"
       (Lexing.position)
# 21 "sintatico.ml"
  )
    | VAR of (
# 16 "sintatico.mly"
       (Lexing.position)
# 26 "sintatico.ml"
  )
    | SWITCH of (
# 26 "sintatico.mly"
       (Lexing.position)
# 31 "sintatico.ml"
  )
    | SAIDA_LINHA of (
# 25 "sintatico.mly"
       (Lexing.position)
# 36 "sintatico.ml"
  )
    | SAIDA of (
# 25 "sintatico.mly"
       (Lexing.position)
# 41 "sintatico.ml"
  )
    | RETURN of (
# 26 "sintatico.mly"
       (Lexing.position)
# 46 "sintatico.ml"
  )
    | RESTO of (
# 21 "sintatico.mly"
       (Lexing.position)
# 51 "sintatico.ml"
  )
    | REAL of (
# 16 "sintatico.mly"
       (Lexing.position)
# 56 "sintatico.ml"
  )
    | PROGRAMA of (
# 14 "sintatico.mly"
       (Lexing.position)
# 61 "sintatico.ml"
  )
    | POTEN of (
# 21 "sintatico.mly"
       (Lexing.position)
# 66 "sintatico.ml"
  )
    | OR of (
# 23 "sintatico.mly"
       (Lexing.position)
# 71 "sintatico.ml"
  )
    | MULTI of (
# 15 "sintatico.mly"
       (Lexing.position)
# 76 "sintatico.ml"
  )
    | MENOS of (
# 15 "sintatico.mly"
       (Lexing.position)
# 81 "sintatico.ml"
  )
    | MAIS of (
# 15 "sintatico.mly"
       (Lexing.position)
# 86 "sintatico.ml"
  )
    | LTE of (
# 21 "sintatico.mly"
       (Lexing.position)
# 91 "sintatico.ml"
  )
    | LT of (
# 21 "sintatico.mly"
       (Lexing.position)
# 96 "sintatico.ml"
  )
    | LITSTRING of (
# 8 "sintatico.mly"
       (string * Lexing.position)
# 101 "sintatico.ml"
  )
    | LITREAL of (
# 12 "sintatico.mly"
       (float * Lexing.position)
# 106 "sintatico.ml"
  )
    | LITINT of (
# 7 "sintatico.mly"
       (int * Lexing.position)
# 111 "sintatico.ml"
  )
    | LITCHAR of (
# 9 "sintatico.mly"
       (char * Lexing.position)
# 116 "sintatico.ml"
  )
    | LITBOOL of (
# 11 "sintatico.mly"
       (bool * Lexing.position)
# 121 "sintatico.ml"
  )
    | INTEGER of (
# 16 "sintatico.mly"
       (Lexing.position)
# 126 "sintatico.ml"
  )
    | INI of (
# 14 "sintatico.mly"
       (Lexing.position)
# 131 "sintatico.ml"
  )
    | IF of (
# 19 "sintatico.mly"
       (Lexing.position)
# 136 "sintatico.ml"
  )
    | ID of (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 141 "sintatico.ml"
  )
    | GTE of (
# 21 "sintatico.mly"
       (Lexing.position)
# 146 "sintatico.ml"
  )
    | GT of (
# 21 "sintatico.mly"
       (Lexing.position)
# 151 "sintatico.ml"
  )
    | FWHILE of (
# 26 "sintatico.mly"
       (Lexing.position)
# 156 "sintatico.ml"
  )
    | FUNCTION of (
# 13 "sintatico.mly"
       (Lexing.position)
# 161 "sintatico.ml"
  )
    | FSWITCH of (
# 26 "sintatico.mly"
       (Lexing.position)
# 166 "sintatico.ml"
  )
    | FPROGRAMA of (
# 14 "sintatico.mly"
       (Lexing.position)
# 171 "sintatico.ml"
  )
    | FPAR of (
# 17 "sintatico.mly"
       (Lexing.position)
# 176 "sintatico.ml"
  )
    | FOR of (
# 26 "sintatico.mly"
       (Lexing.position)
# 181 "sintatico.ml"
  )
    | FIF of (
# 28 "sintatico.mly"
       (Lexing.position)
# 186 "sintatico.ml"
  )
    | FFUNCTION of (
# 13 "sintatico.mly"
       (Lexing.position)
# 191 "sintatico.ml"
  )
    | FFOR of (
# 26 "sintatico.mly"
       (Lexing.position)
# 196 "sintatico.ml"
  )
    | EQUALS of (
# 21 "sintatico.mly"
       (Lexing.position)
# 201 "sintatico.ml"
  )
    | EOF
    | ENTRADA of (
# 25 "sintatico.mly"
       (Lexing.position)
# 207 "sintatico.ml"
  )
    | ENTAO of (
# 29 "sintatico.mly"
       (Lexing.position)
# 212 "sintatico.ml"
  )
    | END of (
# 29 "sintatico.mly"
       (Lexing.position)
# 217 "sintatico.ml"
  )
    | ELSE of (
# 20 "sintatico.mly"
       (Lexing.position)
# 222 "sintatico.ml"
  )
    | DO of (
# 27 "sintatico.mly"
       (Lexing.position)
# 227 "sintatico.ml"
  )
    | DIV of (
# 15 "sintatico.mly"
       (Lexing.position)
# 232 "sintatico.ml"
  )
    | DIFER of (
# 21 "sintatico.mly"
       (Lexing.position)
# 237 "sintatico.ml"
  )
    | DEF of (
# 24 "sintatico.mly"
       (Lexing.position)
# 242 "sintatico.ml"
  )
    | CASE_DEFAULT of (
# 26 "sintatico.mly"
       (Lexing.position)
# 247 "sintatico.ml"
  )
    | CASE of (
# 26 "sintatico.mly"
       (Lexing.position)
# 252 "sintatico.ml"
  )
    | CARACTER of (
# 16 "sintatico.mly"
       (Lexing.position)
# 257 "sintatico.ml"
  )
    | BOOL of (
# 16 "sintatico.mly"
       (Lexing.position)
# 262 "sintatico.ml"
  )
    | BEGIN of (
# 29 "sintatico.mly"
       (Lexing.position)
# 267 "sintatico.ml"
  )
    | ATRIB of (
# 18 "sintatico.mly"
       (Lexing.position)
# 272 "sintatico.ml"
  )
    | APAR of (
# 17 "sintatico.mly"
       (Lexing.position)
# 277 "sintatico.ml"
  )
    | AND of (
# 23 "sintatico.mly"
       (Lexing.position)
# 282 "sintatico.ml"
  )
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

# 1 "sintatico.mly"
  
open Lexing
open Ast
open Sast

# 298 "sintatico.ml"

module Tables = struct
  
  include MenhirBasics
  
  let token2terminal : token -> int =
    fun _tok ->
      match _tok with
      | AND _ ->
          55
      | APAR _ ->
          54
      | ATRIB _ ->
          53
      | BEGIN _ ->
          52
      | BOOL _ ->
          51
      | CARACTER _ ->
          50
      | CASE _ ->
          49
      | CASE_DEFAULT _ ->
          48
      | DEF _ ->
          47
      | DIFER _ ->
          46
      | DIV _ ->
          45
      | DO _ ->
          44
      | ELSE _ ->
          43
      | END _ ->
          42
      | ENTAO _ ->
          41
      | ENTRADA _ ->
          40
      | EOF ->
          39
      | EQUALS _ ->
          38
      | FFOR _ ->
          37
      | FFUNCTION _ ->
          36
      | FIF _ ->
          35
      | FOR _ ->
          34
      | FPAR _ ->
          33
      | FPROGRAMA _ ->
          32
      | FSWITCH _ ->
          31
      | FUNCTION _ ->
          30
      | FWHILE _ ->
          29
      | GT _ ->
          28
      | GTE _ ->
          27
      | ID _ ->
          26
      | IF _ ->
          25
      | INI _ ->
          24
      | INTEGER _ ->
          23
      | LITBOOL _ ->
          22
      | LITCHAR _ ->
          21
      | LITINT _ ->
          20
      | LITREAL _ ->
          19
      | LITSTRING _ ->
          18
      | LT _ ->
          17
      | LTE _ ->
          16
      | MAIS _ ->
          15
      | MENOS _ ->
          14
      | MULTI _ ->
          13
      | OR _ ->
          12
      | POTEN _ ->
          11
      | PROGRAMA _ ->
          10
      | REAL _ ->
          9
      | RESTO _ ->
          8
      | RETURN _ ->
          7
      | SAIDA _ ->
          6
      | SAIDA_LINHA _ ->
          5
      | SWITCH _ ->
          4
      | VAR _ ->
          3
      | VIRG _ ->
          2
      | WHILE _ ->
          1
  
  and error_terminal =
    0
  
  and token2value : token -> Obj.t =
    fun _tok ->
      match _tok with
      | AND _v ->
          Obj.repr _v
      | APAR _v ->
          Obj.repr _v
      | ATRIB _v ->
          Obj.repr _v
      | BEGIN _v ->
          Obj.repr _v
      | BOOL _v ->
          Obj.repr _v
      | CARACTER _v ->
          Obj.repr _v
      | CASE _v ->
          Obj.repr _v
      | CASE_DEFAULT _v ->
          Obj.repr _v
      | DEF _v ->
          Obj.repr _v
      | DIFER _v ->
          Obj.repr _v
      | DIV _v ->
          Obj.repr _v
      | DO _v ->
          Obj.repr _v
      | ELSE _v ->
          Obj.repr _v
      | END _v ->
          Obj.repr _v
      | ENTAO _v ->
          Obj.repr _v
      | ENTRADA _v ->
          Obj.repr _v
      | EOF ->
          Obj.repr ()
      | EQUALS _v ->
          Obj.repr _v
      | FFOR _v ->
          Obj.repr _v
      | FFUNCTION _v ->
          Obj.repr _v
      | FIF _v ->
          Obj.repr _v
      | FOR _v ->
          Obj.repr _v
      | FPAR _v ->
          Obj.repr _v
      | FPROGRAMA _v ->
          Obj.repr _v
      | FSWITCH _v ->
          Obj.repr _v
      | FUNCTION _v ->
          Obj.repr _v
      | FWHILE _v ->
          Obj.repr _v
      | GT _v ->
          Obj.repr _v
      | GTE _v ->
          Obj.repr _v
      | ID _v ->
          Obj.repr _v
      | IF _v ->
          Obj.repr _v
      | INI _v ->
          Obj.repr _v
      | INTEGER _v ->
          Obj.repr _v
      | LITBOOL _v ->
          Obj.repr _v
      | LITCHAR _v ->
          Obj.repr _v
      | LITINT _v ->
          Obj.repr _v
      | LITREAL _v ->
          Obj.repr _v
      | LITSTRING _v ->
          Obj.repr _v
      | LT _v ->
          Obj.repr _v
      | LTE _v ->
          Obj.repr _v
      | MAIS _v ->
          Obj.repr _v
      | MENOS _v ->
          Obj.repr _v
      | MULTI _v ->
          Obj.repr _v
      | OR _v ->
          Obj.repr _v
      | POTEN _v ->
          Obj.repr _v
      | PROGRAMA _v ->
          Obj.repr _v
      | REAL _v ->
          Obj.repr _v
      | RESTO _v ->
          Obj.repr _v
      | RETURN _v ->
          Obj.repr _v
      | SAIDA _v ->
          Obj.repr _v
      | SAIDA_LINHA _v ->
          Obj.repr _v
      | SWITCH _v ->
          Obj.repr _v
      | VAR _v ->
          Obj.repr _v
      | VIRG _v ->
          Obj.repr _v
      | WHILE _v ->
          Obj.repr _v
  
  and default_reduction =
    (8, "\000\000\000\000\000\000B\000\000\000FEGHI7\025\000\000\000\031\"\030 !\000\000\000\029\000\000\000\000%\028\000&\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0001\000\000\000\003\000\000D\000\000\000J\000\000\000\000\000\000\021\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\017\000\000\000\000\018\011\005\b\007\012\n\006\t\r\004\000;\015\000\000=\000\022\002\000\000\027\000\023?\0009\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\024\0003\000@\0005\001")
  
  and error =
    (56, "\000 \000\000\000\000\000\000\000 \000\000\000\000\016\000\000\128\000\000\000\000\000\000\160\000\000\000 \000\000\000\000\001\000\000\000\000 \000\000\000\000\000\000\000\000\000\000\000\000\000\160@\000\000\000\000\000\000\000\001\000\000@\001\000\000\0000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\128\000\000\000O\000\000`\160\128\000\000\000> \000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000o\159\192}\254\254\199\000\000> \000\000\002\000\000> \000\000\002\000\000\000\000\000\000\000\000\159\192\024B\006\001\000\000> \000\000\002o\159\192}\254\254\193\000\000> \000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000> \000\000\002\000\000\000\000\000\000\000\000\000> \000\000\002o\159\192}\254\254\193\000\000> \000\000\002o\159\192}\254\254\193\000\000> \000\000\002o\159\192}\254\254\193\000\000> \000\000\002o\159\192}\254\254\193\000\000> \000\000\002o\159\192}\254\254\193\000\000> \000\000\002o\159\192}\254\254\193\000\000> \000\000\002o\159\192}\254\254\193\000\000> \000\000\002o\159\192}\254\254\193\000\000> \000\000\002o\159\192}\254\254\193\000\000> \000\000\002o\159\192}\254\254\193\000\000\000\000\000\000\000\000\000> \000\000\002o\159\192}\254\254\193\000\000\000\000@\000\000\000\000\000\000\000\000\000 \159\192\024B\006\001\000\000> \000\000\002\000\000\000\000\000\000\000\000\159\192\024\002\014\001O\000\000` \128\000\000\000\000 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000> \000\000\002O\159\192x\"\134\001\000\000\000\000\000\000\002\000\000> \000\000\002\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000> \000\000\002\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000> \000\000\002O\159\192}\190\150\193\000\000> \000\000\002\000\159\192\024\002F\001O\000\000` \128\000\000\000\000 \000\000\000\000\000\000\000\000\000\b\000\000> \000\000\002\000\159\192\024\002&\001\000\000> \000\000\002\000\159\192\024\002\014\001O\000\000` \128\000\000\000\000\000\000\000\002\000\000> \000\000\002\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000> \000\000\002O\159\192}\190\150\193\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000O\000\000e4\144\192\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\016\000O\000\000` \128\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\128O\000\000` \128\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\192\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\128\000\000\000\000\000\002\001\000\000\000\000\000 \000\000\000\000\000\000\000\000\000\002\000\000\000 @\000\000\000\000\000\000@\000\000\000\000\000\000\000\001\000\000@\001\000\000\0000\016\000\000\128\000\000\000\000\000\000\128\000\000\000O\000\000`(\128\000\000\000\000\000\b\000\000\000\000\000 \000\000\000\000\000\000\000\000\000\000O\000\000`\168\128\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\002\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  
  and start =
    1
  
  and action =
    ((16, "\000\003\000B\000\028\000\007\000 \000\007\000\000\000f\000\020\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000b\005\248\005\248\000\000\000\000\000\000\000\000\000\000\000\003\005\248\005\248\000\000\005@\005\248\000l\005\248\000\000\000\000\005\248\000\000\005\248\000\212\005\248\001<\005\248\001\164\005\248\002\012\005\248\002t\005\248\002\220\005\248\003D\005\248\003\172\005\248\004\020\005\248\004|\000\000\005\248\004\228\000R\000\000\006R\005\248\000\000\005@\005\248\000d\000\000\000;\005\248\005\248\0000\005\248\000x\000\000\000^\005\248\000\142\000\000\005\248\005@\005\248\005@\005\248\000d\000j\005\248\005@\005\248\005\156\005\248\000|\005\248\000\182\000\000\000\144\005\248\005\156\000\178\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\248\000\000\000\000\000:\005\248\000\000\000\184\000\000\000\000\000\005\005\248\000\000\000\194\000\000\000\000\000;\000\000\000\200\000\000\000\196\000\152\000\220\000\182\000f\000\240\000\218\000\003\000\028\001\n\005\248\000\244\001\026\000\000\005\248\000\000\001\002\000\000\000\152\000\000\000\000"), (16, "\001%\001%\000\221\001%\001%\001%\001%\001%\000*\000\006\001%\001%\001%\001%\001%\001%\001%\000\014\000\022\000\221\001\026\000\213\000.\000\018\001%\001%\001%\001%\001%\000\245\001%\001%\001%\001%\001%\001%\001%\001%\000e\001%\001%\001%\001%\001%\001%\001%\001\230\001%\001%\0002\0006\000\n\001%\000j\001%\000\153\000\153\000&\000\153\000\153\000\153\000\153\000\153\001\001\000\237\000\153\000\153\000\130\000\153\000\153\000\153\000\153\001\206\000J\000\246\000\213\001\018\000\018\001&\000\153\000\153\000\153\000\153\000\153\000\213\000\153\000\153\000\153\000\153\000\153\000\153\000\153\000\153\001.\000\153\000\153\000\153\000\153\000\153\000\142\000\153\0016\000\153\000\153\001>\001^\002\018\000\157\000\157\000\153\000\157\000\157\000\157\000\157\000z\000\205\001v\000\150\000\157\000\130\000\158\000\166\000\157\000\157\001~\001\134\001\146\001\218\001\242\002\006\002\014\000\157\000\157\000\157\000\157\000\157\002\022\000\157\000\157\000\157\000\157\000\157\000\157\000\157\000\157\002\026\000\157\000\157\000\157\000\157\000\157\000\142\000\157\002\"\000\157\000\157\002&\0022\002:\000\141\000\141\000\157\000\141\000\141\000\141\000\141\000\141\002>\002O\000\141\000\141\000\130\000\141\000\141\000\141\000\141\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\141\000\141\000\141\000\141\000\141\000\000\000\141\000\141\000\141\000\141\000\141\000\141\000\141\000\141\000\000\000\141\000\141\000\141\000\141\000\141\000\142\000\141\000\000\000\141\000\141\000\000\000\000\000\000\000\137\000\137\000\141\000\137\000\137\000\137\000\137\000\137\000\000\000\000\000\137\000\137\000\130\000\137\000\137\000\137\000\137\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\137\000\137\000\137\000\137\000\137\000\000\000\137\000\137\000\137\000\137\000\137\000\137\000\137\000\137\000\000\000\137\000\137\000\137\000\137\000\137\000\142\000\137\000\000\000\137\000\137\000\000\000\000\000\000\000\189\000\189\000\137\000\189\000\189\000\189\000\189\000z\000\000\000\000\000\150\000\189\000\130\000\158\000\166\000\182\000\190\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\189\000\189\000\198\000\206\000\189\000\000\000\189\000\189\000\189\000\189\000\189\000\189\000\189\000\214\000\000\000\189\000\189\000\189\000\189\000\189\000\142\000\222\000\000\000\189\000\189\000\000\000\000\000\000\000\169\000\169\000\189\000\169\000\169\000\169\000\169\000z\000\000\000\000\000\150\000\169\000\130\000\158\000\166\000\169\000\169\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\169\000\169\000\169\000\169\000\169\000\000\000\169\000\169\000\169\000\169\000\169\000\169\000\169\000\169\000\000\000\169\000\169\000\169\000\169\000\169\000\142\000\169\000\000\000\169\000\169\000\000\000\000\000\000\000\161\000\161\000\169\000\161\000\161\000\161\000\161\000z\000\000\000\000\000\150\000\161\000\130\000\158\000\166\000\161\000\161\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\161\000\161\000\161\000\161\000\161\000\000\000\161\000\161\000\161\000\161\000\161\000\161\000\161\000\161\000\000\000\161\000\161\000\161\000\161\000\161\000\142\000\161\000\000\000\161\000\161\000\000\000\000\000\000\000\173\000\173\000\161\000\173\000\173\000\173\000\173\000z\000\000\000\000\000\150\000\173\000\130\000\158\000\166\000\173\000\173\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\173\000\173\000\173\000\173\000\173\000\000\000\173\000\173\000\173\000\173\000\173\000\173\000\173\000\173\000\000\000\173\000\173\000\173\000\173\000\173\000\142\000\173\000\000\000\173\000\173\000\000\000\000\000\000\000\165\000\165\000\173\000\165\000\165\000\165\000\165\000z\000\000\000\000\000\150\000\165\000\130\000\158\000\166\000\165\000\165\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\165\000\165\000\165\000\165\000\165\000\000\000\165\000\165\000\165\000\165\000\165\000\165\000\165\000\165\000\000\000\165\000\165\000\165\000\165\000\165\000\142\000\165\000\000\000\165\000\165\000\000\000\000\000\000\000\177\000\177\000\165\000\177\000\177\000\177\000\177\000z\000\000\000\000\000\150\000\177\000\130\000\158\000\166\000\182\000\190\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\177\000\177\000\198\000\206\000\177\000\000\000\177\000\177\000\177\000\177\000\177\000\177\000\177\000\177\000\000\000\177\000\177\000\177\000\177\000\177\000\142\000\177\000\000\000\177\000\177\000\000\000\000\000\000\000\181\000\181\000\177\000\181\000\181\000\181\000\181\000z\000\000\000\000\000\150\000\181\000\130\000\158\000\166\000\182\000\190\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\181\000\181\000\198\000\206\000\181\000\000\000\181\000\181\000\181\000\181\000\181\000\181\000\181\000\181\000\000\000\181\000\181\000\181\000\181\000\181\000\142\000\181\000\000\000\181\000\181\000\000\000\000\000\000\000\185\000\185\000\181\000\185\000\185\000\185\000\185\000z\000\000\000\000\000\150\000\185\000\130\000\158\000\166\000\182\000\190\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\185\000\185\000\198\000\206\000\185\000\000\000\185\000\185\000\185\000\185\000\185\000\185\000\185\000\214\000\000\000\185\000\185\000\185\000\185\000\185\000\142\000\222\000I\000\185\000\185\000I\000I\000I\000I\000z\000\185\000\000\000\150\000\174\000\130\000\158\000\166\000\182\000\190\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000I\000I\000\198\000\206\000I\000\000\000I\000I\000\230\000I\000I\000I\000I\000\214\000\000\000I\001R\001f\000I\001\n\000\142\000\222\0005\000I\000I\0005\0005\0005\0005\000z\000\234\000\000\000\150\000\174\000\130\000\158\000\166\000\182\000\190\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0005\0005\000\198\000\206\0005\000\000\0005\0005\000\000\0005\0005\0005\0005\000\214\000\000\0005\000\000\000\000\0005\001n\000\142\000\222\000N\0005\0005\001\014\001\"\0012\001B\000z\000\234\000\000\000\150\000\174\000\130\000\158\000\166\000\182\000\190\000R\000V\000Z\000^\000b\000\000\000\000\001J\000f\000\198\000\206\000\229\000\000\000\229\000\197\000\000\001V\000\229\000\197\000\229\000\214\000\000\001r\000\000\000\000\000\229\000\000\000\142\000\222\000\254\000\229\000\229\000\000\000\000\000\000\000z\000n\000\234\000\150\000\174\000\130\000\158\000\166\000\182\000\190\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\198\000\206\000\000\000\000\000\000\000\000\001\t\000\000\000\000\000\000\000\000\000\214\000\000\000\000\000\000\000\000\000\000\000\000\000\142\000\222\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\234"))
  
  and lhs =
    (8, "\000\030\029\028\028\028\028\028\028\028\028\028\028\027\026\025\024\023\022\021\020\019\018\017\016\016\015\014\014\014\014\014\014\014\014\014\014\014\014\014\014\014\014\014\014\014\014\014\014\r\r\012\012\011\011\n\n\t\t\b\b\007\007\006\005\005\004\004\003\003\003\003\002\001")
  
  and goto =
    ((16, "\000\002\000\000\000\015\000\003\000\000\000\012\000\000\000>\000\000\000H\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\236\000\000\000\000\000\000\000\000\000\000\000\000\000\002\001&\000\000\000\000\001`\000\000\001\154\000\000\000\000\001\212\000\000\002\n\000\000\002\014\000\000\002D\000\000\002H\000\000\002J\000\000\002L\000\000\002N\000\000\002P\000\000\002R\000\000\002T\000\000\000\000\002V\000\000\000\000\000\000\000\000\000\004\000\000\000\000\0008\000N\000\000\000\b\002X\000r\000\000\000>\000\000\000\000\000\000\000x\000\000\000\000\002Z\000\000\002\\\000\000\000\172\000P\000\000\002`\000\000\002\150\000\000\000\230\000\000\000\178\000\000\000\000\000\000\002\154\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001 \000\000\000\000\000H\001Z\000\000\000\000\000\000\000\000\000p\001\148\000\000\000\000\000\000\000\000\000|\000\000\000\000\000\000\000\000\000\t\000\000\000\000\000r\000\000\000\000\000|\000f\000\000\001\206\000\000\000\000\000\000\002\b\000\000\000\000\000\000\0004\000\000\000\000"), (8, "a\b\029\029\t=A\151\147\018\017\007\131\149y??fghijklmno\145ra##\029\b\127K\t\129\150\015FW\016\149v?fghijklmnopra\b#\029\t|O\139x\140\136\000\000~\128\000?fghijklmnopra\000#\029\000\127_\000s\000\000\000\000\000\000\000?fghijklmnopra\000#\029\000\000\000\000d\000\000\000\000\000\000\000Bfghijklmnopra\000#\029\000\000\000\000q\000\000\000\000\000\000\000\030fghijklmnopra\000#\029\000\000\000\000u\000\000\000\000\000\000\000 fghijklmnopra\000#\029\000\000\000\000{\000\000\000\000\000\000\000\"fghijklmnopra\000#\029\000\000\000\000\000\000\000\000\142\000\000\000%fghijklmno\145ra\029#\029\000\000\000\000\000\000\000\000\146\000'\000)fghijklmno\145r#\029#\029\029\029\029\029\029\029\029\029\029\029+\029-/13579<HRT\000Y#\000###########\029#\029\000\000\000\000\000\000\000\000\000\000[\000c\000\000\000\000\000\000\000\000\000\000\000\000#\000#"))
  
  and semantic_action =
    [|
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = e;
            MenhirLib.EngineTypes.startp = _startpos_e_;
            MenhirLib.EngineTypes.endp = _endpos_e_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comandos) = Obj.magic c in
        let e : (Sast.expressao) = Obj.magic e in
        let _1 : (
# 26 "sintatico.mly"
       (Lexing.position)
# 579 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.case) = 
# 134 "sintatico.mly"
                     (
            CmdCase(e, c)
          )
# 589 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = xs;
            MenhirLib.EngineTypes.startp = _startpos_xs_;
            MenhirLib.EngineTypes.endp = _endpos_xs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = i;
                MenhirLib.EngineTypes.startp = _startpos_i_;
                MenhirLib.EngineTypes.endp = _endpos_i_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 625 "sintatico.ml"
        ) = Obj.magic _4 in
        let xs : (Sast.expressao Ast.expressoes) = Obj.magic xs in
        let _2 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 631 "sintatico.ml"
        ) = Obj.magic _2 in
        let i : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 636 "sintatico.ml"
        ) = Obj.magic i in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_i_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao) = 
# 158 "sintatico.mly"
                                                                    ( 
              ExpFuncao(i, xs) 
          )
# 646 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 73 "sintatico.mly"
                              ( c )
# 671 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 74 "sintatico.mly"
                              ( c )
# 696 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 75 "sintatico.mly"
                              ( c )
# 721 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 76 "sintatico.mly"
                              ( c )
# 746 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 77 "sintatico.mly"
                              ( c )
# 771 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 78 "sintatico.mly"
                              ( c )
# 796 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 79 "sintatico.mly"
                              ( c )
# 821 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 80 "sintatico.mly"
                              ( c )
# 846 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 81 "sintatico.mly"
                              ( c )
# 871 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comando) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.comando) = 
# 82 "sintatico.mly"
                               ( c )
# 896 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e;
          MenhirLib.EngineTypes.startp = _startpos_e_;
          MenhirLib.EngineTypes.endp = _endpos_e_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = v;
              MenhirLib.EngineTypes.startp = _startpos_v_;
              MenhirLib.EngineTypes.endp = _endpos_v_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e : (Sast.expressao) = Obj.magic e in
        let _2 : (
# 18 "sintatico.mly"
       (Lexing.position)
# 928 "sintatico.ml"
        ) = Obj.magic _2 in
        let v : (Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos_e_ in
        let _v : (Sast.expressao Ast.comando) = 
# 91 "sintatico.mly"
                                                 (
      CmdAtrib (v,e)
)
# 939 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = exp;
          MenhirLib.EngineTypes.startp = _startpos_exp_;
          MenhirLib.EngineTypes.endp = _endpos_exp_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let exp : (Sast.expressao) = Obj.magic exp in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_exp_ in
        let _endpos = _endpos_exp_ in
        let _v : (Sast.expressao Ast.comando) = 
# 89 "sintatico.mly"
                             ( CmdChamada(exp) )
# 964 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _5;
          MenhirLib.EngineTypes.startp = _startpos__5_;
          MenhirLib.EngineTypes.endp = _endpos__5_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = entao;
            MenhirLib.EngineTypes.startp = _startpos_entao_;
            MenhirLib.EngineTypes.endp = _endpos_entao_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _3;
              MenhirLib.EngineTypes.startp = _startpos__3_;
              MenhirLib.EngineTypes.endp = _endpos__3_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = teste;
                MenhirLib.EngineTypes.startp = _startpos_teste_;
                MenhirLib.EngineTypes.endp = _endpos_teste_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _menhir_s;
                  MenhirLib.EngineTypes.semv = _1;
                  MenhirLib.EngineTypes.startp = _startpos__1_;
                  MenhirLib.EngineTypes.endp = _endpos__1_;
                  MenhirLib.EngineTypes.next = _menhir_stack;
                };
              };
            };
          };
        } = _menhir_stack in
        let _5 : (
# 26 "sintatico.mly"
       (Lexing.position)
# 1005 "sintatico.ml"
        ) = Obj.magic _5 in
        let entao : (Sast.expressao Ast.comandos) = Obj.magic entao in
        let _3 : (
# 27 "sintatico.mly"
       (Lexing.position)
# 1011 "sintatico.ml"
        ) = Obj.magic _3 in
        let teste : (Sast.expressao) = Obj.magic teste in
        let _1 : (
# 26 "sintatico.mly"
       (Lexing.position)
# 1017 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Sast.expressao Ast.comando) = 
# 116 "sintatico.mly"
                         (
                    CmdEnquanto( teste, entao )
                  )
# 1027 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = xs;
            MenhirLib.EngineTypes.startp = _startpos_xs_;
            MenhirLib.EngineTypes.endp = _endpos_xs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = _1;
                MenhirLib.EngineTypes.startp = _startpos__1_;
                MenhirLib.EngineTypes.endp = _endpos__1_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1063 "sintatico.ml"
        ) = Obj.magic _4 in
        let xs : (Sast.expressao Ast.expressoes) = Obj.magic xs in
        let _2 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1069 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 25 "sintatico.mly"
       (Lexing.position)
# 1074 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao Ast.comando) = 
# 102 "sintatico.mly"
                                                                               (
                   CmdEntrada xs
               )
# 1084 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _9;
          MenhirLib.EngineTypes.startp = _startpos__9_;
          MenhirLib.EngineTypes.endp = _endpos__9_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = c;
            MenhirLib.EngineTypes.startp = _startpos_c_;
            MenhirLib.EngineTypes.endp = _endpos_c_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _7;
              MenhirLib.EngineTypes.startp = _startpos__7_;
              MenhirLib.EngineTypes.endp = _endpos__7_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = r;
                MenhirLib.EngineTypes.startp = _startpos_r_;
                MenhirLib.EngineTypes.endp = _endpos_r_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = _5;
                  MenhirLib.EngineTypes.startp = _startpos__5_;
                  MenhirLib.EngineTypes.endp = _endpos__5_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = l;
                    MenhirLib.EngineTypes.startp = _startpos_l_;
                    MenhirLib.EngineTypes.endp = _endpos_l_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.semv = _3;
                      MenhirLib.EngineTypes.startp = _startpos__3_;
                      MenhirLib.EngineTypes.endp = _endpos__3_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.semv = v;
                        MenhirLib.EngineTypes.startp = _startpos_v_;
                        MenhirLib.EngineTypes.endp = _endpos_v_;
                        MenhirLib.EngineTypes.next = {
                          MenhirLib.EngineTypes.state = _menhir_s;
                          MenhirLib.EngineTypes.semv = _1;
                          MenhirLib.EngineTypes.startp = _startpos__1_;
                          MenhirLib.EngineTypes.endp = _endpos__1_;
                          MenhirLib.EngineTypes.next = _menhir_stack;
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _9 : (
# 26 "sintatico.mly"
       (Lexing.position)
# 1145 "sintatico.ml"
        ) = Obj.magic _9 in
        let c : (Sast.expressao Ast.comandos) = Obj.magic c in
        let _7 : (
# 27 "sintatico.mly"
       (Lexing.position)
# 1151 "sintatico.ml"
        ) = Obj.magic _7 in
        let r : (Sast.expressao) = Obj.magic r in
        let _5 : (
# 29 "sintatico.mly"
       (Lexing.position)
# 1157 "sintatico.ml"
        ) = Obj.magic _5 in
        let l : (Sast.expressao) = Obj.magic l in
        let _3 : (
# 29 "sintatico.mly"
       (Lexing.position)
# 1163 "sintatico.ml"
        ) = Obj.magic _3 in
        let v : (Ast.variavel) = Obj.magic v in
        let _1 : (
# 26 "sintatico.mly"
       (Lexing.position)
# 1169 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__9_ in
        let _v : (Sast.expressao Ast.comando) = 
# 122 "sintatico.mly"
                   (
                CmdFor(v, l, r, c)
              )
# 1179 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e;
          MenhirLib.EngineTypes.startp = _startpos_e_;
          MenhirLib.EngineTypes.endp = _endpos_e_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let e : (Sast.expressao) = Obj.magic e in
        let _1 : (
# 26 "sintatico.mly"
       (Lexing.position)
# 1206 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_e_ in
        let _v : (Sast.expressao Ast.comando) = 
# 85 "sintatico.mly"
                                   (
      CmdReturn (e)
)
# 1216 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = xs;
            MenhirLib.EngineTypes.startp = _startpos_xs_;
            MenhirLib.EngineTypes.endp = _endpos_xs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = _1;
                MenhirLib.EngineTypes.startp = _startpos__1_;
                MenhirLib.EngineTypes.endp = _endpos__1_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1252 "sintatico.ml"
        ) = Obj.magic _4 in
        let xs : (Sast.expressao Ast.expressoes) = Obj.magic xs in
        let _2 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1258 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 25 "sintatico.mly"
       (Lexing.position)
# 1263 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao Ast.comando) = 
# 106 "sintatico.mly"
                                                                           (
                 CmdSaida xs
             )
# 1273 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = xs;
            MenhirLib.EngineTypes.startp = _startpos_xs_;
            MenhirLib.EngineTypes.endp = _endpos_xs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _2;
              MenhirLib.EngineTypes.startp = _startpos__2_;
              MenhirLib.EngineTypes.endp = _endpos__2_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = _1;
                MenhirLib.EngineTypes.startp = _startpos__1_;
                MenhirLib.EngineTypes.endp = _endpos__1_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let _4 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1309 "sintatico.ml"
        ) = Obj.magic _4 in
        let xs : (Sast.expressao Ast.expressoes) = Obj.magic xs in
        let _2 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1315 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 25 "sintatico.mly"
       (Lexing.position)
# 1320 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__4_ in
        let _v : (Sast.expressao Ast.comando) = 
# 110 "sintatico.mly"
                                                                                   (
                 CmdSaidaLine xs
             )
# 1330 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _6;
          MenhirLib.EngineTypes.startp = _startpos__6_;
          MenhirLib.EngineTypes.endp = _endpos__6_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = senao;
            MenhirLib.EngineTypes.startp = _startpos_senao_;
            MenhirLib.EngineTypes.endp = _endpos_senao_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = entao;
              MenhirLib.EngineTypes.startp = _startpos_entao_;
              MenhirLib.EngineTypes.endp = _endpos_entao_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _3;
                MenhirLib.EngineTypes.startp = _startpos__3_;
                MenhirLib.EngineTypes.endp = _endpos__3_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = teste;
                  MenhirLib.EngineTypes.startp = _startpos_teste_;
                  MenhirLib.EngineTypes.endp = _endpos_teste_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _menhir_s;
                    MenhirLib.EngineTypes.semv = _1;
                    MenhirLib.EngineTypes.startp = _startpos__1_;
                    MenhirLib.EngineTypes.endp = _endpos__1_;
                    MenhirLib.EngineTypes.next = _menhir_stack;
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _6 : (
# 28 "sintatico.mly"
       (Lexing.position)
# 1376 "sintatico.ml"
        ) = Obj.magic _6 in
        let senao : (Sast.expressao Ast.comandos option) = Obj.magic senao in
        let entao : (Sast.expressao Ast.comandos) = Obj.magic entao in
        let _3 : (
# 29 "sintatico.mly"
       (Lexing.position)
# 1383 "sintatico.ml"
        ) = Obj.magic _3 in
        let teste : (Sast.expressao) = Obj.magic teste in
        let _1 : (
# 19 "sintatico.mly"
       (Lexing.position)
# 1389 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__6_ in
        let _v : (Sast.expressao Ast.comando) = 
# 98 "sintatico.mly"
                (
              CmdSe (teste, entao, senao)
            )
# 1399 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _5;
          MenhirLib.EngineTypes.startp = _startpos__5_;
          MenhirLib.EngineTypes.endp = _endpos__5_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = d;
            MenhirLib.EngineTypes.startp = _startpos_d_;
            MenhirLib.EngineTypes.endp = _endpos_d_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = c;
              MenhirLib.EngineTypes.startp = _startpos_c_;
              MenhirLib.EngineTypes.endp = _endpos_c_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = v;
                MenhirLib.EngineTypes.startp = _startpos_v_;
                MenhirLib.EngineTypes.endp = _endpos_v_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _menhir_s;
                  MenhirLib.EngineTypes.semv = _1;
                  MenhirLib.EngineTypes.startp = _startpos__1_;
                  MenhirLib.EngineTypes.endp = _endpos__1_;
                  MenhirLib.EngineTypes.next = _menhir_stack;
                };
              };
            };
          };
        } = _menhir_stack in
        let _5 : (
# 26 "sintatico.mly"
       (Lexing.position)
# 1440 "sintatico.ml"
        ) = Obj.magic _5 in
        let d : (Sast.expressao Ast.caseDefault option) = Obj.magic d in
        let c : (Sast.expressao Ast.cases) = Obj.magic c in
        let v : (Ast.variavel) = Obj.magic v in
        let _1 : (
# 26 "sintatico.mly"
       (Lexing.position)
# 1448 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (Sast.expressao Ast.comando) = 
# 129 "sintatico.mly"
                        (
                  CmdSwitch(v, c, d)
                )
# 1458 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = b;
          MenhirLib.EngineTypes.startp = _startpos_b_;
          MenhirLib.EngineTypes.endp = _endpos_b_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _11;
            MenhirLib.EngineTypes.startp = _startpos__11_;
            MenhirLib.EngineTypes.endp = _endpos__11_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = corpo;
              MenhirLib.EngineTypes.startp = _startpos_corpo_;
              MenhirLib.EngineTypes.endp = _endpos_corpo_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = _9;
                MenhirLib.EngineTypes.startp = _startpos__9_;
                MenhirLib.EngineTypes.endp = _endpos__9_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = variables;
                  MenhirLib.EngineTypes.startp = _startpos_variables_;
                  MenhirLib.EngineTypes.endp = _endpos_variables_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = t;
                    MenhirLib.EngineTypes.startp = _startpos_t_;
                    MenhirLib.EngineTypes.endp = _endpos_t_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.semv = _6;
                      MenhirLib.EngineTypes.startp = _startpos__6_;
                      MenhirLib.EngineTypes.endp = _endpos__6_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.semv = _5;
                        MenhirLib.EngineTypes.startp = _startpos__5_;
                        MenhirLib.EngineTypes.endp = _endpos__5_;
                        MenhirLib.EngineTypes.next = {
                          MenhirLib.EngineTypes.semv = args;
                          MenhirLib.EngineTypes.startp = _startpos_args_;
                          MenhirLib.EngineTypes.endp = _endpos_args_;
                          MenhirLib.EngineTypes.next = {
                            MenhirLib.EngineTypes.semv = _3;
                            MenhirLib.EngineTypes.startp = _startpos__3_;
                            MenhirLib.EngineTypes.endp = _endpos__3_;
                            MenhirLib.EngineTypes.next = {
                              MenhirLib.EngineTypes.semv = a;
                              MenhirLib.EngineTypes.startp = _startpos_a_;
                              MenhirLib.EngineTypes.endp = _endpos_a_;
                              MenhirLib.EngineTypes.next = {
                                MenhirLib.EngineTypes.state = _menhir_s;
                                MenhirLib.EngineTypes.semv = _1;
                                MenhirLib.EngineTypes.startp = _startpos__1_;
                                MenhirLib.EngineTypes.endp = _endpos__1_;
                                MenhirLib.EngineTypes.next = _menhir_stack;
                              };
                            };
                          };
                        };
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let b : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 1534 "sintatico.ml"
        ) = Obj.magic b in
        let _11 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 1539 "sintatico.ml"
        ) = Obj.magic _11 in
        let corpo : (Sast.expressao Ast.comandos) = Obj.magic corpo in
        let _9 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 1545 "sintatico.ml"
        ) = Obj.magic _9 in
        let variables : ((Ast.ident Ast.pos * Ast.tipo) list list) = Obj.magic variables in
        let t : (Ast.tipo) = Obj.magic t in
        let _6 : (
# 24 "sintatico.mly"
       (Lexing.position)
# 1552 "sintatico.ml"
        ) = Obj.magic _6 in
        let _5 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1557 "sintatico.ml"
        ) = Obj.magic _5 in
        let args : ((Ast.ident Ast.pos * Ast.tipo) list list) = Obj.magic args in
        let _3 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 1563 "sintatico.ml"
        ) = Obj.magic _3 in
        let a : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 1568 "sintatico.ml"
        ) = Obj.magic a in
        let _1 : (
# 13 "sintatico.mly"
       (Lexing.position)
# 1573 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_b_ in
        let _v : (Sast.expressao Ast.funcao) = 
# 147 "sintatico.mly"
                               (  
                      Funcao {
                        fn_nome =        a;
                        fn_nome_fecha =  b;
                        fn_tiporet =     t;
                        fn_formais =     List.flatten args;
                        fn_locais =      List.flatten variables;
                        fn_corpo =       corpo
                      }
                  )
# 1590 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = v;
          MenhirLib.EngineTypes.startp = _startpos_v_;
          MenhirLib.EngineTypes.endp = _endpos_v_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let v : ((Ast.ident Ast.pos * Ast.tipo) list list) = Obj.magic v in
        let _1 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 1617 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_v_ in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list list) = 
# 57 "sintatico.mly"
                   ( v )
# 1625 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list list) = 
# 58 "sintatico.mly"
      ( [] )
# 1643 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let c : (Sast.expressao Ast.comandos) = Obj.magic c in
        let _1 : (
# 26 "sintatico.mly"
       (Lexing.position)
# 1670 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao Ast.caseDefault) = 
# 139 "sintatico.mly"
                       (
              CmdCaseDefault(c)
            )
# 1680 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (Sast.expressao) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao) = 
# 163 "sintatico.mly"
                        ( c )
# 1705 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = v;
          MenhirLib.EngineTypes.startp = _startpos_v_;
          MenhirLib.EngineTypes.endp = _endpos_v_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let v : (Ast.variavel) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos_v_ in
        let _v : (Sast.expressao) = 
# 164 "sintatico.mly"
                        ( ExpVar v    )
# 1730 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = i;
          MenhirLib.EngineTypes.startp = _startpos_i_;
          MenhirLib.EngineTypes.endp = _endpos_i_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let i : (
# 7 "sintatico.mly"
       (int * Lexing.position)
# 1751 "sintatico.ml"
        ) = Obj.magic i in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_i_ in
        let _endpos = _endpos_i_ in
        let _v : (Sast.expressao) = 
# 165 "sintatico.mly"
                        ( ExpInt i    )
# 1759 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = s;
          MenhirLib.EngineTypes.startp = _startpos_s_;
          MenhirLib.EngineTypes.endp = _endpos_s_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let s : (
# 8 "sintatico.mly"
       (string * Lexing.position)
# 1780 "sintatico.ml"
        ) = Obj.magic s in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_s_ in
        let _endpos = _endpos_s_ in
        let _v : (Sast.expressao) = 
# 166 "sintatico.mly"
                        ( ExpString s )
# 1788 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (
# 9 "sintatico.mly"
       (char * Lexing.position)
# 1809 "sintatico.ml"
        ) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (Sast.expressao) = 
# 167 "sintatico.mly"
                        ( ExpChar c )
# 1817 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = b;
          MenhirLib.EngineTypes.startp = _startpos_b_;
          MenhirLib.EngineTypes.endp = _endpos_b_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let b : (
# 11 "sintatico.mly"
       (bool * Lexing.position)
# 1838 "sintatico.ml"
        ) = Obj.magic b in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_b_ in
        let _endpos = _endpos_b_ in
        let _v : (Sast.expressao) = 
# 168 "sintatico.mly"
                        ( ExpBool b )
# 1846 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = r;
          MenhirLib.EngineTypes.startp = _startpos_r_;
          MenhirLib.EngineTypes.endp = _endpos_r_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let r : (
# 12 "sintatico.mly"
       (float * Lexing.position)
# 1867 "sintatico.ml"
        ) = Obj.magic r in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_r_ in
        let _endpos = _endpos_r_ in
        let _v : (Sast.expressao) = 
# 169 "sintatico.mly"
                        ( ExpReal r )
# 1875 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 1907 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 175 "sintatico.mly"
               ( (Mais, pos)  )
# 1918 "sintatico.ml"
          
        in
        
# 170 "sintatico.mly"
                                            ( ExpOp (op, e1, e2) )
# 1924 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 1956 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 176 "sintatico.mly"
                ( (Menos, pos) )
# 1967 "sintatico.ml"
          
        in
        
# 170 "sintatico.mly"
                                            ( ExpOp (op, e1, e2) )
# 1973 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 2005 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 177 "sintatico.mly"
                 ( (Mult, pos)  )
# 2016 "sintatico.ml"
          
        in
        
# 170 "sintatico.mly"
                                            ( ExpOp (op, e1, e2) )
# 2022 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 15 "sintatico.mly"
       (Lexing.position)
# 2054 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 178 "sintatico.mly"
                ( (Div, pos)   )
# 2065 "sintatico.ml"
          
        in
        
# 170 "sintatico.mly"
                                            ( ExpOp (op, e1, e2) )
# 2071 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 21 "sintatico.mly"
       (Lexing.position)
# 2103 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 179 "sintatico.mly"
                ( (Resto, pos) )
# 2114 "sintatico.ml"
          
        in
        
# 170 "sintatico.mly"
                                            ( ExpOp (op, e1, e2) )
# 2120 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 21 "sintatico.mly"
       (Lexing.position)
# 2152 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 180 "sintatico.mly"
                ( (Potencia, pos) )
# 2163 "sintatico.ml"
          
        in
        
# 170 "sintatico.mly"
                                            ( ExpOp (op, e1, e2) )
# 2169 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 21 "sintatico.mly"
       (Lexing.position)
# 2201 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 181 "sintatico.mly"
             ( (Menor, pos) )
# 2212 "sintatico.ml"
          
        in
        
# 170 "sintatico.mly"
                                            ( ExpOp (op, e1, e2) )
# 2218 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 21 "sintatico.mly"
       (Lexing.position)
# 2250 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 182 "sintatico.mly"
             ( (Maior, pos) )
# 2261 "sintatico.ml"
          
        in
        
# 170 "sintatico.mly"
                                            ( ExpOp (op, e1, e2) )
# 2267 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 21 "sintatico.mly"
       (Lexing.position)
# 2299 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 183 "sintatico.mly"
              ( (MenorIgual, pos) )
# 2310 "sintatico.ml"
          
        in
        
# 170 "sintatico.mly"
                                            ( ExpOp (op, e1, e2) )
# 2316 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 21 "sintatico.mly"
       (Lexing.position)
# 2348 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 184 "sintatico.mly"
              ( (MaioIgual, pos) )
# 2359 "sintatico.ml"
          
        in
        
# 170 "sintatico.mly"
                                            ( ExpOp (op, e1, e2) )
# 2365 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 21 "sintatico.mly"
       (Lexing.position)
# 2397 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 185 "sintatico.mly"
                 ( (Igual, pos) )
# 2408 "sintatico.ml"
          
        in
        
# 170 "sintatico.mly"
                                            ( ExpOp (op, e1, e2) )
# 2414 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 21 "sintatico.mly"
       (Lexing.position)
# 2446 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 186 "sintatico.mly"
                ( (Difer, pos) )
# 2457 "sintatico.ml"
          
        in
        
# 170 "sintatico.mly"
                                            ( ExpOp (op, e1, e2) )
# 2463 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 23 "sintatico.mly"
       (Lexing.position)
# 2495 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 187 "sintatico.mly"
               ( (E, pos)     )
# 2506 "sintatico.ml"
          
        in
        
# 170 "sintatico.mly"
                                            ( ExpOp (op, e1, e2) )
# 2512 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = pos0;
            MenhirLib.EngineTypes.startp = _startpos_pos0_;
            MenhirLib.EngineTypes.endp = _endpos_pos0_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (Sast.expressao) = Obj.magic e2 in
        let pos0 : (
# 23 "sintatico.mly"
       (Lexing.position)
# 2544 "sintatico.ml"
        ) = Obj.magic pos0 in
        let e1 : (Sast.expressao) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (Sast.expressao) = let op =
          let pos = pos0 in
          
# 188 "sintatico.mly"
             ( (Ou, pos)    )
# 2555 "sintatico.ml"
          
        in
        
# 170 "sintatico.mly"
                                            ( ExpOp (op, e1, e2) )
# 2561 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = e;
            MenhirLib.EngineTypes.startp = _startpos_e_;
            MenhirLib.EngineTypes.endp = _endpos_e_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 2592 "sintatico.ml"
        ) = Obj.magic _3 in
        let e : (Sast.expressao) = Obj.magic e in
        let _1 : (
# 17 "sintatico.mly"
       (Lexing.position)
# 2598 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (Sast.expressao) = 
# 171 "sintatico.mly"
                                ( e )
# 2606 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.comandos) = 
# 199 "/home/roni/.opam/4.05.0/lib/menhir/standard.mly"
    ( [] )
# 2624 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.comandos) = Obj.magic xs in
        let x : (Sast.expressao Ast.comando) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.comandos) = 
# 201 "/home/roni/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 2655 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.funcoes) = 
# 199 "/home/roni/.opam/4.05.0/lib/menhir/standard.mly"
    ( [] )
# 2673 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.funcoes) = Obj.magic xs in
        let x : (Sast.expressao Ast.funcao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.funcoes) = 
# 201 "/home/roni/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 2704 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list list) = 
# 199 "/home/roni/.opam/4.05.0/lib/menhir/standard.mly"
    ( [] )
# 2722 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : ((Ast.ident Ast.pos * Ast.tipo) list list) = Obj.magic xs in
        let x : ((Ast.ident Ast.pos * Ast.tipo) list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list list) = 
# 201 "/home/roni/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 2753 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao Ast.case) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.cases) = 
# 209 "/home/roni/.opam/4.05.0/lib/menhir/standard.mly"
    ( [ x ] )
# 2778 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.cases) = Obj.magic xs in
        let x : (Sast.expressao Ast.case) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.cases) = 
# 211 "/home/roni/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 2809 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao Ast.comando) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.comandos) = 
# 209 "/home/roni/.opam/4.05.0/lib/menhir/standard.mly"
    ( [ x ] )
# 2834 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.comandos) = Obj.magic xs in
        let x : (Sast.expressao Ast.comando) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.comandos) = 
# 211 "/home/roni/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 2865 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.comandos option) = 
# 114 "/home/roni/.opam/4.05.0/lib/menhir/standard.mly"
    ( None )
# 2883 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = cs0;
          MenhirLib.EngineTypes.startp = _startpos_cs0_;
          MenhirLib.EngineTypes.endp = _endpos_cs0_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = _10;
            MenhirLib.EngineTypes.startp = _startpos__10_;
            MenhirLib.EngineTypes.endp = _endpos__10_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let cs0 : (Sast.expressao Ast.comandos) = Obj.magic cs0 in
        let _10 : (
# 20 "sintatico.mly"
       (Lexing.position)
# 2910 "sintatico.ml"
        ) = Obj.magic _10 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__10_ in
        let _endpos = _endpos_cs0_ in
        let _v : (Sast.expressao Ast.comandos option) = let x =
          let cs = cs0 in
          let _1 = _10 in
          
# 97 "sintatico.mly"
                                             (cs)
# 2921 "sintatico.ml"
          
        in
        
# 116 "/home/roni/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 2927 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (Sast.expressao Ast.caseDefault option) = 
# 114 "/home/roni/.opam/4.05.0/lib/menhir/standard.mly"
    ( None )
# 2945 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao Ast.caseDefault) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.caseDefault option) = 
# 116 "/home/roni/.opam/4.05.0/lib/menhir/standard.mly"
    ( Some x )
# 2970 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = _8;
          MenhirLib.EngineTypes.startp = _startpos__8_;
          MenhirLib.EngineTypes.endp = _endpos__8_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = dFunctions;
            MenhirLib.EngineTypes.startp = _startpos_dFunctions_;
            MenhirLib.EngineTypes.endp = _endpos_dFunctions_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.semv = _6;
              MenhirLib.EngineTypes.startp = _startpos__6_;
              MenhirLib.EngineTypes.endp = _endpos__6_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.semv = cs;
                MenhirLib.EngineTypes.startp = _startpos_cs_;
                MenhirLib.EngineTypes.endp = _endpos_cs_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.semv = _4;
                  MenhirLib.EngineTypes.startp = _startpos__4_;
                  MenhirLib.EngineTypes.endp = _endpos__4_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.semv = ds;
                    MenhirLib.EngineTypes.startp = _startpos_ds_;
                    MenhirLib.EngineTypes.endp = _endpos_ds_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.semv = _2;
                      MenhirLib.EngineTypes.startp = _startpos__2_;
                      MenhirLib.EngineTypes.endp = _endpos__2_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.state = _menhir_s;
                        MenhirLib.EngineTypes.semv = _1;
                        MenhirLib.EngineTypes.startp = _startpos__1_;
                        MenhirLib.EngineTypes.endp = _endpos__1_;
                        MenhirLib.EngineTypes.next = _menhir_stack;
                      };
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _8 : unit = Obj.magic _8 in
        let dFunctions : (Sast.expressao Ast.funcoes) = Obj.magic dFunctions in
        let _6 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 3028 "sintatico.ml"
        ) = Obj.magic _6 in
        let cs : (Sast.expressao Ast.comandos) = Obj.magic cs in
        let _4 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 3034 "sintatico.ml"
        ) = Obj.magic _4 in
        let ds : ((Ast.ident Ast.pos * Ast.tipo) list list) = Obj.magic ds in
        let _2 : (
# 8 "sintatico.mly"
       (string * Lexing.position)
# 3040 "sintatico.ml"
        ) = Obj.magic _2 in
        let _1 : (
# 14 "sintatico.mly"
       (Lexing.position)
# 3045 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__8_ in
        let _v : (
# 40 "sintatico.mly"
       (Sast.expressao Ast.programa)
# 3053 "sintatico.ml"
        ) = 
# 51 "sintatico.mly"
          (
         Programa (List.flatten ds, dFunctions, cs) )
# 3058 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 3079 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Ast.ident Ast.pos list) = 
# 229 "/home/roni/.opam/4.05.0/lib/menhir/standard.mly"
    ( [ x ] )
# 3087 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : (Ast.ident Ast.pos list) = Obj.magic xs in
        let _2 : (
# 22 "sintatico.mly"
       (Lexing.position)
# 3119 "sintatico.ml"
        ) = Obj.magic _2 in
        let x : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 3124 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Ast.ident Ast.pos list) = 
# 231 "/home/roni/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 3132 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (Sast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 229 "/home/roni/.opam/4.05.0/lib/menhir/standard.mly"
    ( [ x ] )
# 3157 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : (Sast.expressao Ast.expressoes) = Obj.magic xs in
        let _2 : (
# 22 "sintatico.mly"
       (Lexing.position)
# 3189 "sintatico.ml"
        ) = Obj.magic _2 in
        let x : (Sast.expressao) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (Sast.expressao Ast.expressoes) = 
# 231 "/home/roni/.opam/4.05.0/lib/menhir/standard.mly"
    ( x :: xs )
# 3198 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 3219 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 67 "sintatico.mly"
                ( TipoInt )
# 3227 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 3248 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 68 "sintatico.mly"
                ( TipoReal )
# 3256 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 3277 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 69 "sintatico.mly"
                ( TipoString )
# 3285 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : (
# 16 "sintatico.mly"
       (Lexing.position)
# 3306 "sintatico.ml"
        ) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (Ast.tipo) = 
# 70 "sintatico.mly"
                ( TipoBool )
# 3314 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.semv = t;
          MenhirLib.EngineTypes.startp = _startpos_t_;
          MenhirLib.EngineTypes.endp = _endpos_t_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = ids;
              MenhirLib.EngineTypes.startp = _startpos_ids_;
              MenhirLib.EngineTypes.endp = _endpos_ids_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let t : (Ast.tipo) = Obj.magic t in
        let _2 : (
# 24 "sintatico.mly"
       (Lexing.position)
# 3346 "sintatico.ml"
        ) = Obj.magic _2 in
        let ids : (Ast.ident Ast.pos list) = Obj.magic ids in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ids_ in
        let _endpos = _endpos_t_ in
        let _v : ((Ast.ident Ast.pos * Ast.tipo) list) = 
# 62 "sintatico.mly"
                                                       (
          List.map (fun id -> (id,t)) ids
    )
# 3357 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (
# 10 "sintatico.mly"
       (string * Lexing.position)
# 3378 "sintatico.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (Ast.variavel) = 
# 192 "sintatico.mly"
                     ( VarSimples x )
# 3386 "sintatico.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
    |]
  
  and trace =
    None
  
end

module MenhirInterpreter = struct
  
  module ET = MenhirLib.TableInterpreter.MakeEngineTable (Tables)
  
  module TI = MenhirLib.Engine.Make (ET)
  
  include TI
  
end

let prog =
  fun lexer lexbuf ->
    (Obj.magic (MenhirInterpreter.entry 0 lexer lexbuf) : (
# 40 "sintatico.mly"
       (Sast.expressao Ast.programa)
# 3417 "sintatico.ml"
    ))

module Incremental = struct
  
  let prog =
    fun initial_position ->
      (Obj.magic (MenhirInterpreter.start 0 initial_position) : (
# 40 "sintatico.mly"
       (Sast.expressao Ast.programa)
# 3427 "sintatico.ml"
      ) MenhirInterpreter.checkpoint)
  
end

# 233 "/home/roni/.opam/4.05.0/lib/menhir/standard.mly"
  

# 3435 "sintatico.ml"
