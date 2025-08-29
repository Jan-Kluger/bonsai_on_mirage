type token =
  | UNDEF of (
# 6 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * string 
# 6 "duniverse/cppo/src/cppo_parser.mli"
)
  | INCLUDE of (
# 6 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * string 
# 11 "duniverse/cppo/src/cppo_parser.mli"
)
  | WARNING of (
# 6 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * string 
# 16 "duniverse/cppo/src/cppo_parser.mli"
)
  | ERROR of (
# 6 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * string 
# 21 "duniverse/cppo/src/cppo_parser.mli"
)
  | DEF of (
# 7 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * string * (string * Cppo_types.shape) list 
# 26 "duniverse/cppo/src/cppo_parser.mli"
)
  | LINE of (
# 8 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * string option * int 
# 31 "duniverse/cppo/src/cppo_parser.mli"
)
  | IFDEF of (
# 9 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * Cppo_types.bool_expr 
# 36 "duniverse/cppo/src/cppo_parser.mli"
)
  | EXT of (
# 10 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * string * string 
# 41 "duniverse/cppo/src/cppo_parser.mli"
)
  | ENDEF of (
# 11 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 46 "duniverse/cppo/src/cppo_parser.mli"
)
  | SCOPE of (
# 11 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 51 "duniverse/cppo/src/cppo_parser.mli"
)
  | ENDSCOPE of (
# 11 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 56 "duniverse/cppo/src/cppo_parser.mli"
)
  | IF of (
# 11 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 61 "duniverse/cppo/src/cppo_parser.mli"
)
  | ELIF of (
# 11 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 66 "duniverse/cppo/src/cppo_parser.mli"
)
  | ELSE of (
# 11 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 71 "duniverse/cppo/src/cppo_parser.mli"
)
  | ENDIF of (
# 11 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 76 "duniverse/cppo/src/cppo_parser.mli"
)
  | ENDTEST of (
# 11 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 81 "duniverse/cppo/src/cppo_parser.mli"
)
  | TRUE
  | FALSE
  | DEFINED
  | NOT
  | AND
  | OR
  | EQ
  | LT
  | GT
  | NE
  | LE
  | GE
  | PLUS
  | MINUS
  | STAR
  | LNOT
  | LSL
  | LSR
  | ASR
  | LAND
  | LOR
  | LXOR
  | OP_PAREN of (
# 16 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 108 "duniverse/cppo/src/cppo_parser.mli"
)
  | SLASH of (
# 16 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 113 "duniverse/cppo/src/cppo_parser.mli"
)
  | MOD of (
# 16 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 118 "duniverse/cppo/src/cppo_parser.mli"
)
  | INT of (
# 17 "duniverse/cppo/src/cppo_parser.mly"
         int64 
# 123 "duniverse/cppo/src/cppo_parser.mli"
)
  | CL_PAREN of (
# 21 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 128 "duniverse/cppo/src/cppo_parser.mli"
)
  | COMMA of (
# 21 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 133 "duniverse/cppo/src/cppo_parser.mli"
)
  | CURRENT_LINE of (
# 21 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 138 "duniverse/cppo/src/cppo_parser.mli"
)
  | CURRENT_FILE of (
# 21 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 143 "duniverse/cppo/src/cppo_parser.mli"
)
  | IDENT of (
# 22 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * string 
# 148 "duniverse/cppo/src/cppo_parser.mli"
)
  | FUNIDENT of (
# 22 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * string 
# 153 "duniverse/cppo/src/cppo_parser.mli"
)
  | TEXT of (
# 23 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * bool * string 
# 158 "duniverse/cppo/src/cppo_parser.mli"
)
  | EOF

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf ->  Cppo_types.node list 
