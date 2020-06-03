enum {
	_BEGIN = 256,
    L_IDENT,  // abc
	L_STRING, // "abc"
	L_INT,    // 123
	L_REAL,   // 1.23
	L_COMMA,  // ,
	L_COLON,  // :
	L_SEMI,   // ;
	L_LPAREN, // (
	L_RPAREN, // )
	L_LBRACK, // [
	L_RBRACK, // ]
	L_LBRACE, // {
	L_RBRACE, // }
	L_DOT,    // .
    L_PLUS,   // +
    L_MINUS,  // -
    L_STAR,   // *
    L_DIVIDE, // /
    L_MOD,    // %
    L_EQ,     // =
    L_NEQ,    // !=
    L_LT,     // <
    L_LE,     // <=
    L_GT,     // >
    L_GE,     // >=
    L_AND,    // &
    L_OR,     // |
    L_ASSIGN, // :=
	
    _TOKEN_BEGIN,
    L_WHILE,
    L_FOR,
    L_TO,
    L_BREAK,
    L_LET,
    L_IN,
    L_END,
    L_FUNC,
    L_VAR,
    L_TYPE,
    L_ARRAY,
    L_IF,
    L_THEN,
    L_ELSE,
    L_DO,
    L_OF,
    L_NIL,
    _TOKEN_END,

    L_NEWLINE, // \n
    L_WHITESPACE,
};
