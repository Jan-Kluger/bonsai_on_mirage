type token =
  | UNDEF of (
# 6 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * string 
# 6 "duniverse/cppo/src/cppo_parser.ml"
)
  | INCLUDE of (
# 6 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * string 
# 11 "duniverse/cppo/src/cppo_parser.ml"
)
  | WARNING of (
# 6 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * string 
# 16 "duniverse/cppo/src/cppo_parser.ml"
)
  | ERROR of (
# 6 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * string 
# 21 "duniverse/cppo/src/cppo_parser.ml"
)
  | DEF of (
# 7 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * string * (string * Cppo_types.shape) list 
# 26 "duniverse/cppo/src/cppo_parser.ml"
)
  | LINE of (
# 8 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * string option * int 
# 31 "duniverse/cppo/src/cppo_parser.ml"
)
  | IFDEF of (
# 9 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * Cppo_types.bool_expr 
# 36 "duniverse/cppo/src/cppo_parser.ml"
)
  | EXT of (
# 10 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * string * string 
# 41 "duniverse/cppo/src/cppo_parser.ml"
)
  | ENDEF of (
# 11 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 46 "duniverse/cppo/src/cppo_parser.ml"
)
  | SCOPE of (
# 11 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 51 "duniverse/cppo/src/cppo_parser.ml"
)
  | ENDSCOPE of (
# 11 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 56 "duniverse/cppo/src/cppo_parser.ml"
)
  | IF of (
# 11 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 61 "duniverse/cppo/src/cppo_parser.ml"
)
  | ELIF of (
# 11 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 66 "duniverse/cppo/src/cppo_parser.ml"
)
  | ELSE of (
# 11 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 71 "duniverse/cppo/src/cppo_parser.ml"
)
  | ENDIF of (
# 11 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 76 "duniverse/cppo/src/cppo_parser.ml"
)
  | ENDTEST of (
# 11 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 81 "duniverse/cppo/src/cppo_parser.ml"
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
# 108 "duniverse/cppo/src/cppo_parser.ml"
)
  | SLASH of (
# 16 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 113 "duniverse/cppo/src/cppo_parser.ml"
)
  | MOD of (
# 16 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 118 "duniverse/cppo/src/cppo_parser.ml"
)
  | INT of (
# 17 "duniverse/cppo/src/cppo_parser.mly"
         int64 
# 123 "duniverse/cppo/src/cppo_parser.ml"
)
  | CL_PAREN of (
# 21 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 128 "duniverse/cppo/src/cppo_parser.ml"
)
  | COMMA of (
# 21 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 133 "duniverse/cppo/src/cppo_parser.ml"
)
  | CURRENT_LINE of (
# 21 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 138 "duniverse/cppo/src/cppo_parser.ml"
)
  | CURRENT_FILE of (
# 21 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc 
# 143 "duniverse/cppo/src/cppo_parser.ml"
)
  | IDENT of (
# 22 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * string 
# 148 "duniverse/cppo/src/cppo_parser.ml"
)
  | FUNIDENT of (
# 22 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * string 
# 153 "duniverse/cppo/src/cppo_parser.ml"
)
  | TEXT of (
# 23 "duniverse/cppo/src/cppo_parser.mly"
         Cppo_types.loc * bool * string 
# 158 "duniverse/cppo/src/cppo_parser.ml"
)
  | EOF

open Parsing
let _ = parse_error;;
# 2 "duniverse/cppo/src/cppo_parser.mly"
  open Cppo_types
# 166 "duniverse/cppo/src/cppo_parser.ml"
let yytransl_const = [|
  273 (* TRUE *);
  274 (* FALSE *);
  275 (* DEFINED *);
  276 (* NOT *);
  277 (* AND *);
  278 (* OR *);
  279 (* EQ *);
  280 (* LT *);
  281 (* GT *);
  282 (* NE *);
  283 (* LE *);
  284 (* GE *);
  285 (* PLUS *);
  286 (* MINUS *);
  287 (* STAR *);
  288 (* LNOT *);
  289 (* LSL *);
  290 (* LSR *);
  291 (* ASR *);
  292 (* LAND *);
  293 (* LOR *);
  294 (* LXOR *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* UNDEF *);
  258 (* INCLUDE *);
  259 (* WARNING *);
  260 (* ERROR *);
  261 (* DEF *);
  262 (* LINE *);
  263 (* IFDEF *);
  264 (* EXT *);
  265 (* ENDEF *);
  266 (* SCOPE *);
  267 (* ENDSCOPE *);
  268 (* IF *);
  269 (* ELIF *);
  270 (* ELSE *);
  271 (* ENDIF *);
  272 (* ENDTEST *);
  295 (* OP_PAREN *);
  296 (* SLASH *);
  297 (* MOD *);
  298 (* INT *);
  299 (* CL_PAREN *);
  300 (* COMMA *);
  301 (* CURRENT_LINE *);
  302 (* CURRENT_FILE *);
  303 (* IDENT *);
  304 (* FUNIDENT *);
  305 (* TEXT *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\003\000\003\000\004\000\005\000\005\000\007\000\
\002\000\002\000\002\000\002\000\006\000\006\000\008\000\008\000\
\008\000\008\000\008\000\008\000\008\000\008\000\008\000\008\000\
\008\000\008\000\008\000\008\000\008\000\008\000\008\000\008\000\
\008\000\008\000\012\000\012\000\012\000\010\000\010\000\009\000\
\009\000\009\000\011\000\013\000\013\000\013\000\013\000\013\000\
\013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
\014\000\014\000\014\000\014\000\014\000\014\000\014\000\014\000\
\014\000\014\000\014\000\014\000\014\000\014\000\014\000\014\000\
\015\000\015\000\000\000"

let yylen = "\002\000\
\002\000\001\000\002\000\000\000\001\000\002\000\000\000\001\000\
\001\000\001\000\001\000\001\000\001\000\003\000\001\000\001\000\
\003\000\002\000\001\000\001\000\003\000\003\000\003\000\003\000\
\001\000\001\000\001\000\001\000\001\000\005\000\005\000\004\000\
\004\000\001\000\004\000\002\000\000\000\003\000\001\000\002\000\
\002\000\000\000\002\000\001\000\001\000\002\000\003\000\002\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\001\000\001\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\002\000\002\000\
\003\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\025\000\028\000\026\000\027\000\000\000\034\000\
\000\000\029\000\000\000\000\000\010\000\011\000\012\000\019\000\
\020\000\016\000\000\000\015\000\002\000\075\000\000\000\009\000\
\000\000\005\000\000\000\000\000\000\000\044\000\045\000\000\000\
\000\000\000\000\000\000\000\000\057\000\058\000\000\000\000\000\
\000\000\018\000\000\000\008\000\000\000\000\000\013\000\000\000\
\001\000\003\000\021\000\022\000\000\000\000\000\000\000\023\000\
\024\000\046\000\048\000\000\000\072\000\071\000\000\000\000\000\
\000\000\000\000\043\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\006\000\000\000\017\000\000\000\036\000\033\000\032\000\
\000\000\047\000\000\000\059\000\000\000\049\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\065\000\066\000\067\000\068\000\069\000\070\000\000\000\064\000\
\041\000\040\000\014\000\038\000\000\000\073\000\031\000\030\000\
\035\000"

let yydgoto = "\002\000\
\022\000\025\000\026\000\027\000\044\000\045\000\046\000\024\000\
\089\000\048\000\039\000\055\000\040\000\041\000\065\000"

let yysindex = "\026\000\
\001\000\000\000\000\000\000\000\000\000\000\000\097\255\000\000\
\097\255\000\000\097\255\154\255\000\000\000\000\000\000\000\000\
\000\000\000\000\085\255\000\000\000\000\000\000\001\000\000\000\
\097\255\000\000\007\000\018\255\003\000\000\000\000\000\238\254\
\154\255\153\255\153\255\154\255\000\000\000\000\097\255\166\255\
\214\255\000\000\109\255\000\000\158\255\255\254\000\000\036\255\
\000\000\000\000\000\000\000\000\154\255\097\255\068\255\000\000\
\000\000\000\000\000\000\153\255\000\000\000\000\249\254\106\000\
\037\255\018\255\000\000\154\255\154\255\153\255\153\255\153\255\
\153\255\153\255\153\255\153\255\153\255\153\255\153\255\153\255\
\153\255\153\255\153\255\153\255\153\255\153\255\109\255\109\255\
\038\255\000\000\158\255\000\000\097\255\000\000\000\000\000\000\
\253\255\000\000\153\255\000\000\108\255\000\000\061\255\122\000\
\122\000\122\000\122\000\122\000\122\000\193\255\193\255\036\000\
\000\000\000\000\000\000\000\000\000\000\000\000\036\000\000\000\
\000\000\000\000\000\000\000\000\018\255\000\000\000\000\000\000\
\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\008\000\000\000\
\020\255\000\000\004\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\251\254\000\000\000\000\000\000\000\000\000\000\
\010\000\000\000\000\000\135\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\020\255\000\000\
\000\000\000\000\063\255\000\000\251\254\075\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\137\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\086\255\
\000\000\135\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\063\255\063\255\
\000\000\000\000\251\254\000\000\020\255\000\000\000\000\000\000\
\086\255\000\000\000\000\000\000\000\000\000\000\053\255\001\255\
\003\255\051\255\104\255\106\255\159\255\060\000\084\000\192\255\
\000\000\000\000\000\000\000\000\000\000\000\000\035\000\000\000\
\000\000\000\000\000\000\000\000\135\255\000\000\000\000\000\000\
\000\000"

let yygindex = "\000\000\
\115\000\017\000\247\255\128\000\124\000\234\255\000\000\239\255\
\246\255\076\000\098\000\195\255\229\255\233\255\077\000"

let yytablesize = 419
let yytable = "\028\000\
\021\000\047\000\057\000\004\000\101\000\059\000\052\000\004\000\
\063\000\004\000\061\000\062\000\064\000\068\000\069\000\050\000\
\051\000\023\000\052\000\004\000\088\000\051\000\051\000\052\000\
\052\000\047\000\001\000\047\000\058\000\066\000\053\000\054\000\
\004\000\004\000\004\000\098\000\097\000\007\000\007\000\023\000\
\102\000\103\000\091\000\051\000\094\000\052\000\104\000\105\000\
\106\000\107\000\108\000\109\000\110\000\111\000\112\000\113\000\
\114\000\115\000\116\000\117\000\118\000\119\000\120\000\129\000\
\088\000\088\000\053\000\095\000\050\000\047\000\047\000\053\000\
\053\000\047\000\050\000\097\000\121\000\122\000\092\000\100\000\
\123\000\068\000\096\000\125\000\042\000\003\000\004\000\005\000\
\006\000\007\000\008\000\009\000\010\000\053\000\011\000\050\000\
\012\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\
\010\000\042\000\011\000\127\000\012\000\003\000\004\000\005\000\
\006\000\007\000\008\000\009\000\010\000\039\000\011\000\054\000\
\012\000\055\000\128\000\043\000\054\000\054\000\055\000\055\000\
\074\000\016\000\017\000\018\000\019\000\020\000\037\000\013\000\
\004\000\049\000\029\000\014\000\015\000\016\000\017\000\018\000\
\019\000\020\000\054\000\043\000\055\000\037\000\093\000\004\000\
\087\000\016\000\017\000\018\000\019\000\020\000\003\000\004\000\
\005\000\006\000\007\000\008\000\009\000\010\000\124\000\011\000\
\090\000\012\000\030\000\031\000\032\000\033\000\056\000\126\000\
\000\000\000\000\000\000\056\000\056\000\067\000\034\000\034\000\
\035\000\035\000\068\000\069\000\000\000\000\000\000\000\060\000\
\036\000\000\000\037\000\037\000\043\000\000\000\000\000\038\000\
\038\000\056\000\016\000\017\000\018\000\019\000\020\000\062\000\
\000\000\000\000\000\000\000\000\062\000\062\000\062\000\062\000\
\062\000\062\000\062\000\062\000\062\000\062\000\062\000\078\000\
\000\000\079\000\080\000\081\000\082\000\083\000\084\000\062\000\
\085\000\086\000\062\000\062\000\070\000\071\000\072\000\073\000\
\074\000\075\000\076\000\077\000\078\000\000\000\079\000\080\000\
\081\000\082\000\083\000\084\000\000\000\085\000\086\000\000\000\
\000\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\
\010\000\004\000\011\000\000\000\012\000\056\000\004\000\051\000\
\004\000\000\000\004\000\000\000\004\000\000\000\004\000\004\000\
\004\000\076\000\077\000\078\000\000\000\079\000\080\000\081\000\
\082\000\083\000\084\000\000\000\085\000\086\000\000\000\013\000\
\099\000\000\000\000\000\014\000\015\000\016\000\017\000\018\000\
\019\000\020\000\063\000\000\000\000\000\000\000\000\000\063\000\
\063\000\063\000\063\000\063\000\063\000\063\000\063\000\063\000\
\063\000\063\000\000\000\000\000\079\000\080\000\081\000\082\000\
\083\000\084\000\063\000\060\000\086\000\063\000\063\000\000\000\
\060\000\060\000\060\000\060\000\060\000\060\000\060\000\060\000\
\060\000\060\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\061\000\000\000\000\000\060\000\060\000\
\061\000\061\000\061\000\061\000\061\000\061\000\061\000\061\000\
\061\000\061\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\061\000\061\000\
\070\000\071\000\072\000\073\000\074\000\075\000\076\000\077\000\
\078\000\000\000\079\000\080\000\081\000\082\000\083\000\084\000\
\000\000\085\000\086\000\000\000\000\000\099\000\076\000\077\000\
\078\000\000\000\079\000\080\000\081\000\082\000\083\000\084\000\
\000\000\085\000\086\000"

let yycheck = "\009\000\
\000\000\019\000\000\000\000\000\066\000\033\000\000\000\000\000\
\036\000\000\000\034\000\035\000\036\000\021\001\022\001\025\000\
\016\001\001\000\016\001\000\001\043\000\021\001\022\001\021\001\
\022\001\043\000\001\000\045\000\047\001\039\000\013\001\014\001\
\013\001\014\001\015\001\043\001\060\000\043\001\044\001\023\000\
\068\000\069\000\044\001\043\001\054\000\043\001\070\000\071\000\
\072\000\073\000\074\000\075\000\076\000\077\000\078\000\079\000\
\080\000\081\000\082\000\083\000\084\000\085\000\086\000\125\000\
\087\000\088\000\016\001\000\001\016\001\087\000\088\000\021\001\
\022\001\091\000\022\001\099\000\087\000\088\000\043\001\043\001\
\043\001\021\001\015\001\093\000\000\001\001\001\002\001\003\001\
\004\001\005\001\006\001\007\001\008\001\043\001\010\001\043\001\
\012\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\
\008\001\043\001\010\001\000\001\012\001\001\001\002\001\003\001\
\004\001\005\001\006\001\007\001\008\001\043\001\010\001\016\001\
\012\001\016\001\015\001\039\001\021\001\022\001\021\001\022\001\
\043\001\045\001\046\001\047\001\048\001\049\001\000\001\039\001\
\000\001\023\000\011\000\043\001\044\001\045\001\046\001\047\001\
\048\001\049\001\043\001\039\001\043\001\015\001\053\000\015\001\
\044\001\045\001\046\001\047\001\048\001\049\001\001\001\002\001\
\003\001\004\001\005\001\006\001\007\001\008\001\091\000\010\001\
\045\000\012\001\017\001\018\001\019\001\020\001\016\001\099\000\
\255\255\255\255\255\255\021\001\022\001\016\001\030\001\030\001\
\032\001\032\001\021\001\022\001\255\255\255\255\255\255\039\001\
\039\001\255\255\042\001\042\001\039\001\255\255\255\255\047\001\
\047\001\043\001\045\001\046\001\047\001\048\001\049\001\016\001\
\255\255\255\255\255\255\255\255\021\001\022\001\023\001\024\001\
\025\001\026\001\027\001\028\001\029\001\030\001\031\001\031\001\
\255\255\033\001\034\001\035\001\036\001\037\001\038\001\040\001\
\040\001\041\001\043\001\044\001\023\001\024\001\025\001\026\001\
\027\001\028\001\029\001\030\001\031\001\255\255\033\001\034\001\
\035\001\036\001\037\001\038\001\255\255\040\001\041\001\255\255\
\255\255\001\001\002\001\003\001\004\001\005\001\006\001\007\001\
\008\001\000\001\010\001\255\255\012\001\011\001\011\001\009\001\
\009\001\255\255\009\001\255\255\011\001\255\255\013\001\014\001\
\015\001\029\001\030\001\031\001\255\255\033\001\034\001\035\001\
\036\001\037\001\038\001\255\255\040\001\041\001\255\255\039\001\
\044\001\255\255\255\255\043\001\044\001\045\001\046\001\047\001\
\048\001\049\001\016\001\255\255\255\255\255\255\255\255\021\001\
\022\001\023\001\024\001\025\001\026\001\027\001\028\001\029\001\
\030\001\031\001\255\255\255\255\033\001\034\001\035\001\036\001\
\037\001\038\001\040\001\016\001\041\001\043\001\044\001\255\255\
\021\001\022\001\023\001\024\001\025\001\026\001\027\001\028\001\
\029\001\030\001\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\016\001\255\255\255\255\043\001\044\001\
\021\001\022\001\023\001\024\001\025\001\026\001\027\001\028\001\
\029\001\030\001\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\043\001\044\001\
\023\001\024\001\025\001\026\001\027\001\028\001\029\001\030\001\
\031\001\255\255\033\001\034\001\035\001\036\001\037\001\038\001\
\255\255\040\001\041\001\255\255\255\255\044\001\029\001\030\001\
\031\001\255\255\033\001\034\001\035\001\036\001\037\001\038\001\
\255\255\040\001\041\001"

let yynames_const = "\
  TRUE\000\
  FALSE\000\
  DEFINED\000\
  NOT\000\
  AND\000\
  OR\000\
  EQ\000\
  LT\000\
  GT\000\
  NE\000\
  LE\000\
  GE\000\
  PLUS\000\
  MINUS\000\
  STAR\000\
  LNOT\000\
  LSL\000\
  LSR\000\
  ASR\000\
  LAND\000\
  LOR\000\
  LXOR\000\
  EOF\000\
  "

let yynames_block = "\
  UNDEF\000\
  INCLUDE\000\
  WARNING\000\
  ERROR\000\
  DEF\000\
  LINE\000\
  IFDEF\000\
  EXT\000\
  ENDEF\000\
  SCOPE\000\
  ENDSCOPE\000\
  IF\000\
  ELIF\000\
  ELSE\000\
  ENDIF\000\
  ENDTEST\000\
  OP_PAREN\000\
  SLASH\000\
  MOD\000\
  INT\000\
  CL_PAREN\000\
  COMMA\000\
  CURRENT_LINE\000\
  CURRENT_FILE\000\
  IDENT\000\
  FUNIDENT\000\
  TEXT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'unode) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.node list ) in
    Obj.repr(
# 43 "duniverse/cppo/src/cppo_parser.mly"
             ( _1 :: _2 )
# 487 "duniverse/cppo/src/cppo_parser.ml"
               :  Cppo_types.node list ))
; (fun __caml_parser_env ->
    Obj.repr(
# 44 "duniverse/cppo/src/cppo_parser.mly"
             ( [] )
# 493 "duniverse/cppo/src/cppo_parser.ml"
               :  Cppo_types.node list ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'unode) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'unode_list0) in
    Obj.repr(
# 48 "duniverse/cppo/src/cppo_parser.mly"
                     ( _1 :: _2 )
# 501 "duniverse/cppo/src/cppo_parser.ml"
               : 'unode_list0))
; (fun __caml_parser_env ->
    Obj.repr(
# 49 "duniverse/cppo/src/cppo_parser.mly"
                     ( [] )
# 507 "duniverse/cppo/src/cppo_parser.ml"
               : 'unode_list0))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'unode_list0) in
    Obj.repr(
# 54 "duniverse/cppo/src/cppo_parser.mly"
    ( let pos1 = Parsing.symbol_start_pos()
      and pos2 = Parsing.symbol_end_pos() in
      let loc = (pos1, pos2) in
      (loc, _1) )
# 517 "duniverse/cppo/src/cppo_parser.ml"
               : 'body))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'pnode) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'pnode_list0) in
    Obj.repr(
# 60 "duniverse/cppo/src/cppo_parser.mly"
                     ( _1 :: _2 )
# 525 "duniverse/cppo/src/cppo_parser.ml"
               : 'pnode_list0))
; (fun __caml_parser_env ->
    Obj.repr(
# 61 "duniverse/cppo/src/cppo_parser.mly"
                     ( [] )
# 531 "duniverse/cppo/src/cppo_parser.ml"
               : 'pnode_list0))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'pnode_list0) in
    Obj.repr(
# 65 "duniverse/cppo/src/cppo_parser.mly"
                     ( let pos1 = Parsing.symbol_start_pos()
                       and pos2 = Parsing.symbol_end_pos() in
                       let loc = (pos1, pos2) in
                       `Seq (loc, _1) )
# 541 "duniverse/cppo/src/cppo_parser.ml"
               : 'actual))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'node) in
    Obj.repr(
# 73 "duniverse/cppo/src/cppo_parser.mly"
                ( _1 )
# 548 "duniverse/cppo/src/cppo_parser.ml"
               : 'unode))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc ) in
    Obj.repr(
# 74 "duniverse/cppo/src/cppo_parser.mly"
                ( `Text (_1, false, "(") )
# 555 "duniverse/cppo/src/cppo_parser.ml"
               : 'unode))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc ) in
    Obj.repr(
# 75 "duniverse/cppo/src/cppo_parser.mly"
                ( `Text (_1, false, ")") )
# 562 "duniverse/cppo/src/cppo_parser.ml"
               : 'unode))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc ) in
    Obj.repr(
# 76 "duniverse/cppo/src/cppo_parser.mly"
                ( `Text (_1, false, ",") )
# 569 "duniverse/cppo/src/cppo_parser.ml"
               : 'unode))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'node) in
    Obj.repr(
# 81 "duniverse/cppo/src/cppo_parser.mly"
                ( _1 )
# 576 "duniverse/cppo/src/cppo_parser.ml"
               : 'pnode))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 :  Cppo_types.loc ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'pnode_or_comma_list0) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc ) in
    Obj.repr(
# 83 "duniverse/cppo/src/cppo_parser.mly"
                ( let nodes =
                    `Text (_1, false, "(") ::
                    _2 @
                    `Text (_3, false, ")") ::
                    []
                  in
                  let pos1, _ = _1
                  and _, pos2 = _3 in
                  let loc = (pos1, pos2) in
                  `Seq (loc, nodes) )
# 594 "duniverse/cppo/src/cppo_parser.ml"
               : 'pnode))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc * bool * string ) in
    Obj.repr(
# 97 "duniverse/cppo/src/cppo_parser.mly"
                ( `Text _1 )
# 601 "duniverse/cppo/src/cppo_parser.ml"
               : 'node))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc * string ) in
    Obj.repr(
# 99 "duniverse/cppo/src/cppo_parser.mly"
                ( let loc, name = _1 in
                  `Ident (loc, name, []) )
# 609 "duniverse/cppo/src/cppo_parser.ml"
               : 'node))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 :  Cppo_types.loc * string ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'actuals1) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc ) in
    Obj.repr(
# 103 "duniverse/cppo/src/cppo_parser.mly"
                (
                (* macro application that receives at least one argument,
                   possibly empty.  We cannot distinguish syntactically between
                   zero argument and one empty argument.
                *)
                  let (pos1, _), name = _1 in
                  let _, pos2 = _3 in
                  assert (_2 <> []);
                  `Ident ((pos1, pos2), name, _2) )
# 626 "duniverse/cppo/src/cppo_parser.ml"
               : 'node))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 :  Cppo_types.loc * string ) in
    Obj.repr(
# 113 "duniverse/cppo/src/cppo_parser.mly"
                ( error (fst _1) "Invalid macro application" )
# 633 "duniverse/cppo/src/cppo_parser.ml"
               : 'node))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc ) in
    Obj.repr(
# 115 "duniverse/cppo/src/cppo_parser.mly"
                ( `Current_line _1 )
# 640 "duniverse/cppo/src/cppo_parser.ml"
               : 'node))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc ) in
    Obj.repr(
# 116 "duniverse/cppo/src/cppo_parser.mly"
                ( `Current_file _1 )
# 647 "duniverse/cppo/src/cppo_parser.ml"
               : 'node))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 :  Cppo_types.loc * string * (string * Cppo_types.shape) list ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'body) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc ) in
    Obj.repr(
# 119 "duniverse/cppo/src/cppo_parser.mly"
                ( let (pos1, _), name, formals = _1 in
                  let loc, body = _2 in
                  (* Additional spacing is needed for cases like 'foo()bar'
                     where 'foo()' expands into 'abc', giving 'abcbar'
                     instead of 'abc bar';
                     Also needed for '+foo()+' expanding into '++' instead
                     of '+ +'. *)
                  let safe_space = `Text (_3, true, " ") in
                  let body = body @ [safe_space] in
                  let body = `Seq (loc, body) in
                  let _, pos2 = _3 in
                  `Def ((pos1, pos2), name, formals, body) )
# 667 "duniverse/cppo/src/cppo_parser.ml"
               : 'node))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 :  Cppo_types.loc * string * (string * Cppo_types.shape) list ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'body) in
    Obj.repr(
# 133 "duniverse/cppo/src/cppo_parser.mly"
                ( let loc, _name, _formals = _1 in
                  error loc "This #def is never closed: perhaps #enddef is missing" )
# 676 "duniverse/cppo/src/cppo_parser.ml"
               : 'node))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 :  Cppo_types.loc ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'body) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc ) in
    Obj.repr(
# 139 "duniverse/cppo/src/cppo_parser.mly"
                ( let body = `Seq _2 in
                  `Scope body )
# 686 "duniverse/cppo/src/cppo_parser.ml"
               : 'node))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 :  Cppo_types.loc ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'body) in
    Obj.repr(
# 143 "duniverse/cppo/src/cppo_parser.mly"
                ( let loc = _1 in
                  error loc "This #scope is never closed: perhaps #endscope is missing" )
# 695 "duniverse/cppo/src/cppo_parser.ml"
               : 'node))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc * string ) in
    Obj.repr(
# 149 "duniverse/cppo/src/cppo_parser.mly"
                ( `Undef _1 )
# 702 "duniverse/cppo/src/cppo_parser.ml"
               : 'node))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc * string ) in
    Obj.repr(
# 151 "duniverse/cppo/src/cppo_parser.mly"
                ( `Warning _1 )
# 709 "duniverse/cppo/src/cppo_parser.ml"
               : 'node))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc * string ) in
    Obj.repr(
# 153 "duniverse/cppo/src/cppo_parser.mly"
                ( `Error _1 )
# 716 "duniverse/cppo/src/cppo_parser.ml"
               : 'node))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc * string ) in
    Obj.repr(
# 156 "duniverse/cppo/src/cppo_parser.mly"
                ( `Include _1 )
# 723 "duniverse/cppo/src/cppo_parser.ml"
               : 'node))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc * string * string ) in
    Obj.repr(
# 159 "duniverse/cppo/src/cppo_parser.mly"
                ( `Ext _1 )
# 730 "duniverse/cppo/src/cppo_parser.ml"
               : 'node))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 :  Cppo_types.loc ) in
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'test) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'unode_list0) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'elif_list) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc ) in
    Obj.repr(
# 162 "duniverse/cppo/src/cppo_parser.mly"
                ( let pos1, _ = _1 in
                  let _, pos2 = _5 in
                  let loc = (pos1, pos2) in
                  let test = _2 in
                  let if_true = _3 in
                  let if_false =
                    List.fold_right (
                      fun (loc, test, if_true) if_false ->
                        [`Cond (loc, test, if_true, if_false) ]
                    ) _4 []
                  in
                  `Cond (loc, test, if_true, if_false)
                )
# 753 "duniverse/cppo/src/cppo_parser.ml"
               : 'node))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 :  Cppo_types.loc ) in
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'test) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'unode_list0) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'elif_list) in
    Obj.repr(
# 177 "duniverse/cppo/src/cppo_parser.mly"
                ( (* BUG? ocamlyacc fails to reduce that rule but not menhir *)
                  error _1 "missing #endif" )
# 764 "duniverse/cppo/src/cppo_parser.ml"
               : 'node))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 :  Cppo_types.loc * Cppo_types.bool_expr ) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'unode_list0) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'elif_list) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc ) in
    Obj.repr(
# 181 "duniverse/cppo/src/cppo_parser.mly"
                ( let (pos1, _), test = _1 in
                  let _, pos2 = _4 in
                  let loc = (pos1, pos2) in
                  let if_true = _2 in
                  let if_false =
                    List.fold_right (
                      fun (loc, test, if_true) if_false ->
                        [`Cond (loc, test, if_true, if_false) ]
                    ) _3 []
                  in
                  `Cond (loc, test, if_true, if_false)
                )
# 785 "duniverse/cppo/src/cppo_parser.ml"
               : 'node))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 :  Cppo_types.loc * Cppo_types.bool_expr ) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'unode_list0) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'elif_list) in
    Obj.repr(
# 195 "duniverse/cppo/src/cppo_parser.mly"
                ( error (fst _1) "missing #endif" )
# 794 "duniverse/cppo/src/cppo_parser.ml"
               : 'node))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc * string option * int ) in
    Obj.repr(
# 197 "duniverse/cppo/src/cppo_parser.mly"
                ( `Line _1 )
# 801 "duniverse/cppo/src/cppo_parser.ml"
               : 'node))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 :  Cppo_types.loc ) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'test) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'unode_list0) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'elif_list) in
    Obj.repr(
# 203 "duniverse/cppo/src/cppo_parser.mly"
                   ( let pos1, _ = _1 in
                     let pos2 = Parsing.rhs_end_pos 4 in
                     ((pos1, pos2), _2, _3) :: _4 )
# 813 "duniverse/cppo/src/cppo_parser.ml"
               : 'elif_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 :  Cppo_types.loc ) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'unode_list0) in
    Obj.repr(
# 207 "duniverse/cppo/src/cppo_parser.mly"
                   ( let pos1, _ = _1 in
                     let pos2 = Parsing.rhs_end_pos 2 in
                     [ ((pos1, pos2), `True, _2) ] )
# 823 "duniverse/cppo/src/cppo_parser.ml"
               : 'elif_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 210 "duniverse/cppo/src/cppo_parser.mly"
                   ( [] )
# 829 "duniverse/cppo/src/cppo_parser.ml"
               : 'elif_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'actual) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 :  Cppo_types.loc ) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'actuals1) in
    Obj.repr(
# 214 "duniverse/cppo/src/cppo_parser.mly"
                        ( _1 :: _3  )
# 838 "duniverse/cppo/src/cppo_parser.ml"
               : 'actuals1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'actual) in
    Obj.repr(
# 215 "duniverse/cppo/src/cppo_parser.mly"
                        ( [ _1 ] )
# 845 "duniverse/cppo/src/cppo_parser.ml"
               : 'actuals1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'pnode) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'pnode_or_comma_list0) in
    Obj.repr(
# 219 "duniverse/cppo/src/cppo_parser.mly"
                               ( _1 :: _2 )
# 853 "duniverse/cppo/src/cppo_parser.ml"
               : 'pnode_or_comma_list0))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 :  Cppo_types.loc ) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'pnode_or_comma_list0) in
    Obj.repr(
# 220 "duniverse/cppo/src/cppo_parser.mly"
                               ( `Text (_1, false, ",") :: _2 )
# 861 "duniverse/cppo/src/cppo_parser.ml"
               : 'pnode_or_comma_list0))
; (fun __caml_parser_env ->
    Obj.repr(
# 221 "duniverse/cppo/src/cppo_parser.mly"
                               ( [] )
# 867 "duniverse/cppo/src/cppo_parser.ml"
               : 'pnode_or_comma_list0))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'bexpr) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc ) in
    Obj.repr(
# 225 "duniverse/cppo/src/cppo_parser.mly"
                ( _1 )
# 875 "duniverse/cppo/src/cppo_parser.ml"
               : 'test))
; (fun __caml_parser_env ->
    Obj.repr(
# 230 "duniverse/cppo/src/cppo_parser.mly"
                                    ( `True )
# 881 "duniverse/cppo/src/cppo_parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    Obj.repr(
# 231 "duniverse/cppo/src/cppo_parser.mly"
                                    ( `False )
# 887 "duniverse/cppo/src/cppo_parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc * string ) in
    Obj.repr(
# 232 "duniverse/cppo/src/cppo_parser.mly"
                                    ( `Defined (snd _2) )
# 894 "duniverse/cppo/src/cppo_parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 :  Cppo_types.loc ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'bexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc ) in
    Obj.repr(
# 233 "duniverse/cppo/src/cppo_parser.mly"
                                    ( _2 )
# 903 "duniverse/cppo/src/cppo_parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'bexpr) in
    Obj.repr(
# 234 "duniverse/cppo/src/cppo_parser.mly"
                                    ( `Not _2 )
# 910 "duniverse/cppo/src/cppo_parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'bexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'bexpr) in
    Obj.repr(
# 235 "duniverse/cppo/src/cppo_parser.mly"
                                    ( `And (_1, _3) )
# 918 "duniverse/cppo/src/cppo_parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'bexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'bexpr) in
    Obj.repr(
# 236 "duniverse/cppo/src/cppo_parser.mly"
                                    ( `Or (_1, _3) )
# 926 "duniverse/cppo/src/cppo_parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aexpr) in
    Obj.repr(
# 237 "duniverse/cppo/src/cppo_parser.mly"
                                    ( `Eq (_1, _3) )
# 934 "duniverse/cppo/src/cppo_parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aexpr) in
    Obj.repr(
# 238 "duniverse/cppo/src/cppo_parser.mly"
                                    ( `Lt (_1, _3) )
# 942 "duniverse/cppo/src/cppo_parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aexpr) in
    Obj.repr(
# 239 "duniverse/cppo/src/cppo_parser.mly"
                                    ( `Gt (_1, _3) )
# 950 "duniverse/cppo/src/cppo_parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aexpr) in
    Obj.repr(
# 240 "duniverse/cppo/src/cppo_parser.mly"
                                    ( `Not (`Eq (_1, _3)) )
# 958 "duniverse/cppo/src/cppo_parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aexpr) in
    Obj.repr(
# 241 "duniverse/cppo/src/cppo_parser.mly"
                                    ( `Not (`Gt (_1, _3)) )
# 966 "duniverse/cppo/src/cppo_parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aexpr) in
    Obj.repr(
# 242 "duniverse/cppo/src/cppo_parser.mly"
                                    ( `Not (`Lt (_1, _3)) )
# 974 "duniverse/cppo/src/cppo_parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 :  int64 ) in
    Obj.repr(
# 247 "duniverse/cppo/src/cppo_parser.mly"
                             ( `Int _1 )
# 981 "duniverse/cppo/src/cppo_parser.ml"
               : 'aexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc * string ) in
    Obj.repr(
# 248 "duniverse/cppo/src/cppo_parser.mly"
                             ( `Ident _1 )
# 988 "duniverse/cppo/src/cppo_parser.ml"
               : 'aexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 :  Cppo_types.loc ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'aexpr_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 :  Cppo_types.loc ) in
    Obj.repr(
# 250 "duniverse/cppo/src/cppo_parser.mly"
                             ( match _2 with
                               | [x] -> x
                               | l ->
                                 let pos1, _ = _1 in
                                 let _, pos2 = _3 in
                                 `Tuple ((pos1, pos2), l)
                             )
# 1003 "duniverse/cppo/src/cppo_parser.ml"
               : 'aexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aexpr) in
    Obj.repr(
# 257 "duniverse/cppo/src/cppo_parser.mly"
                             ( `Add (_1, _3) )
# 1011 "duniverse/cppo/src/cppo_parser.ml"
               : 'aexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aexpr) in
    Obj.repr(
# 258 "duniverse/cppo/src/cppo_parser.mly"
                             ( `Sub (_1, _3) )
# 1019 "duniverse/cppo/src/cppo_parser.ml"
               : 'aexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aexpr) in
    Obj.repr(
# 259 "duniverse/cppo/src/cppo_parser.mly"
                             ( `Mul (_1, _3) )
# 1027 "duniverse/cppo/src/cppo_parser.ml"
               : 'aexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aexpr) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 :  Cppo_types.loc ) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aexpr) in
    Obj.repr(
# 260 "duniverse/cppo/src/cppo_parser.mly"
                             ( `Div (_2, _1, _3) )
# 1036 "duniverse/cppo/src/cppo_parser.ml"
               : 'aexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aexpr) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 :  Cppo_types.loc ) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aexpr) in
    Obj.repr(
# 261 "duniverse/cppo/src/cppo_parser.mly"
                             ( `Mod (_2, _1, _3) )
# 1045 "duniverse/cppo/src/cppo_parser.ml"
               : 'aexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aexpr) in
    Obj.repr(
# 262 "duniverse/cppo/src/cppo_parser.mly"
                             ( `Lsl (_1, _3) )
# 1053 "duniverse/cppo/src/cppo_parser.ml"
               : 'aexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aexpr) in
    Obj.repr(
# 263 "duniverse/cppo/src/cppo_parser.mly"
                             ( `Lsr (_1, _3) )
# 1061 "duniverse/cppo/src/cppo_parser.ml"
               : 'aexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aexpr) in
    Obj.repr(
# 264 "duniverse/cppo/src/cppo_parser.mly"
                             ( `Asr (_1, _3) )
# 1069 "duniverse/cppo/src/cppo_parser.ml"
               : 'aexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aexpr) in
    Obj.repr(
# 265 "duniverse/cppo/src/cppo_parser.mly"
                             ( `Land (_1, _3) )
# 1077 "duniverse/cppo/src/cppo_parser.ml"
               : 'aexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aexpr) in
    Obj.repr(
# 266 "duniverse/cppo/src/cppo_parser.mly"
                             ( `Lor (_1, _3) )
# 1085 "duniverse/cppo/src/cppo_parser.ml"
               : 'aexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aexpr) in
    Obj.repr(
# 267 "duniverse/cppo/src/cppo_parser.mly"
                             ( `Lxor (_1, _3) )
# 1093 "duniverse/cppo/src/cppo_parser.ml"
               : 'aexpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'aexpr) in
    Obj.repr(
# 268 "duniverse/cppo/src/cppo_parser.mly"
                             ( `Lnot _2 )
# 1100 "duniverse/cppo/src/cppo_parser.ml"
               : 'aexpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'aexpr) in
    Obj.repr(
# 269 "duniverse/cppo/src/cppo_parser.mly"
                             ( `Neg _2 )
# 1107 "duniverse/cppo/src/cppo_parser.ml"
               : 'aexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aexpr) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 :  Cppo_types.loc ) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aexpr_list) in
    Obj.repr(
# 273 "duniverse/cppo/src/cppo_parser.mly"
                             ( _1 :: _3 )
# 1116 "duniverse/cppo/src/cppo_parser.ml"
               : 'aexpr_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'aexpr) in
    Obj.repr(
# 274 "duniverse/cppo/src/cppo_parser.mly"
                             ( [_1] )
# 1123 "duniverse/cppo/src/cppo_parser.ml"
               : 'aexpr_list))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf :  Cppo_types.node list )
