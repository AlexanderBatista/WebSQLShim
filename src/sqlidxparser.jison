/*
 * SQLite Jison parser grammar rules
 * for SQLidx WebSQL shim over IndexedDB
 * 
 * 
 * The MIT License (MIT)
 *
 * Copyright (c) 2015 by Andrey Gershun, Nolan Lowson
 *
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following
 * conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 *
 * Project      : SQLidx: a JavaScript WebSQL shim over IndexedDB
 *                https://github.com/agershun/sqlidx
 * Developed by : Andrey Gerhsun, agershun@gmail.com
 				  Nolan Lowson, nolan@nolanlawson.com
 */

%lex
%options case-insensitive
%%

(['](\\.|[^']|\\\')*?['])+                       return 'QLITERAL'
(["](\\.|[^"]|\\\")*?["])+                       return 'STRING'


"--"(.*?)($|\r\n|\r|\n)							return /* return 'COMMENT' */

\s+                                             /* skip whitespace */

'ABORT'		return 'ABORT'
'ACTION'		return 'ACTION'
'ADD'		return 'ADD'
'AFTER'		return 'AFTER'
'ALL'		return 'ALL'
'ALTER'		return 'ALTER'
'ANALYZE'		return 'ANALYZE'
'AND'		return 'AND'
'AS'		return 'AS'
'ASC'		return 'ASC'
'ATTACH'		return 'ATTACH'
'AUTOINCREMENT'		return 'AUTOINCREMENT'
'BEFORE'		return 'BEFORE'
'BEGIN'		return 'BEGIN'
'BETWEEN'		return 'BETWEEN'
'BY'		return 'BY'
'CASCADE'		return 'CASCADE'
'CASE'		return 'CASE'
'CAST'		return 'CAST'
'CHECK'		return 'CHECK'
'COLLATE'		return 'COLLATE'
'COLUMN'		return 'COLUMN'
'COMMIT'		return 'COMMIT'
'CONFLICT'		return 'CONFLICT'
'CONSTRAINT'		return 'CONSTRAINT'
'CREATE'		return 'CREATE'
'CROSS'		return 'CROSS'
'CURRENT_DATE'		return 'CURRENT DATE'
'CURRENT_TIME'		return 'CURRENT TIME'
'CURRENT_TIMESTAMP'		return 'CURRENT TIMESTAMP'
'DATABASE'		return 'DATABASE'
'DEFAULT'		return 'DEFAULT'
'DEFERRABLE'		return 'DEFERRABLE'
'DEFERRED'		return 'DEFERRED'
'DELETE'		return 'DELETE'
'DESC'		return 'DESC'
'DETACH'		return 'DETACH'
'DISTINCT'		return 'DISTINCT'
'DROP'		return 'DROP'
'EACH'		return 'EACH'
'ELSE'		return 'ELSE'
'END'		return 'END'
'ESCAPE'		return 'ESCAPE'
'EXCEPT'		return 'EXCEPT'
'EXCLUSIVE'		return 'EXCLUSIVE'
'EXISTS'		return 'EXISTS'
'EXPLAIN'		return 'EXPLAIN'
'FAIL'		return 'FAIL'
'FOR'		return 'FOR'
'FOREIGN'		return 'FOREIGN'
'FROM'		return 'FROM'
'FULL'		return 'FULL'
'GLOB'		return 'GLOB'
'GROUP'		return 'GROUP'
'HAVING'		return 'HAVING'
'IF'		return 'IF'
'IGNORE'		return 'IGNORE'
'IMMEDIATE'		return 'IMMEDIATE'
'IN'		return 'IN'
'INDEX'		return 'INDEX'
'INDEXED'		return 'INDEXED'
'INITIALLY'		return 'INITIALLY'
'INNER'		return 'INNER'
'INSERT'		return 'INSERT'
'INSTEAD'		return 'INSTEAD'
'INTERSECT'		return 'INTERSECT'
'INTO'		return 'INTO'
'IS'		return 'IS'
'ISNULL'		return 'ISNULL'
'JOIN'		return 'JOIN'
'KEY'		return 'KEY'
'LEFT'		return 'LEFT'
'LIKE'		return 'LIKE'
'LIMIT'		return 'LMIT'
'MATCH'		return 'MATCH'
'NATURAL'		return 'NATURAL'
'NO'		return 'NO'
'NOT'		return 'NOT'
'NOTNULL'		return 'NOTNULL'
'NULL'		return 'NULL'
'OF'		return 'OF'
'OFFSET'		return 'OFFSET'
'ON'		return 'ON'
'OR'		return 'OR'
'ORDER'		return 'ORDER'
'OUTER'		return 'OUTER'
'PLAN'		return 'PLAN'
'PRAGMA'		return 'PRAGMA'
'PRIMARY'		return 'PRIMARY'
'QUERY'		return 'QUERY'
'RAISE'		return 'RAISE'
'RECURSIVE'		return 'RECURSIVE'
'REFERENCES'		return 'REFERENCES'
'REGEXP'		return 'REGEXP'
'REINDEX'		return 'REINDEX'
'RELEASE'		return 'RELEASE'
'RENAME'		return 'RENAME'
'REPLACE'		return 'REPLACE'
'RESTRICT'		return 'RESTRICT'
'RIGHT'		return 'RIGHT'
'ROLLBACK'		return 'ROLLBACK'
'ROW'		return 'ROW'
'SAVEPOINT'		return 'SAVEPOINT'
'SELECT'		return 'SELECT'
'SET'		return 'SET'
'TABLE'		return 'TABLE'
'TEMP'		return 'TEMP'
'TEMPORARY'		return 'TEMPORARY'
'THEN'		return 'THEN'
'TO'		return 'TO'
'TRANSACTION'		return 'TRANSACTION'
'TRIGGER'		return 'TRIGGER'
'UNION'		return 'UNION'
'UNIQUE'		return 'UNIQUE'
'UPDATE'		return 'UPDATE'
'USING'		return 'USING'
'VACUUM'		return 'VACUUM'
'VALUES'		return 'VALUES'
'VIEW'		return 'VIEW'
'VIRTUAL'		return 'VIRTUAL'
'WHEN'		return 'WHEN'
'WHERE'		return 'WHERE'
'WITH'		return 'WITH'
'WITHOUT'		return 'WITHOUT'

(\d*[.])?\d+[eE]\d+								return 'NUMBER'
(\d*[.])?\d+									return 'NUMBER'

'+'												return 'PLUS'
'-' 											return 'MINUS'
'*'												return 'STAR'
'/'												return 'SLASH'
'%'												return 'MODULO'
'<>'											return 'NE'
'!='											return 'NE'
'>='											return 'GE'
'>'												return 'GT'
'<='											return 'LE'
'<'												return 'LT'
'='												return 'EQ'
'('												return 'LPAR'
')'												return 'RPAR'

'.'												return 'DOT'
','												return 'COMMA'
':'												return 'COLON'
';'												return 'SEMICOLON'
'$'												return 'DOLLAR'
'?'												return 'QUESTION'
'^'												return 'CARET'

[a-zA-Z_][a-zA-Z_0-9]*                       	return 'LITERAL'

<<EOF>>               							return 'EOF'
.												return 'INVALID'
/lex
%left PLUS MINUS

%start main

%%

name
	: LITERAL
		{ $$ = $1; }
	;

main
	: sql_stmt_list EOF
		{ $$ = $1; }
	;

/* http://www.sqlite.org/lang.html */
sql_stmt_list
	: sql_stmt_list SEMICOLON sql_stmt
		{ $$ = $1; $$.push($3); }
	| sql_stmt
		{ $$ = [$1]; }
	|
	;

sql_stmt
	: sql_stmt_explain sql_stmt_stmt
		{ $$ = $2; y.extend($$, $1); }
	;

sql_stmt_explain
	: 
	| EXPLAIN
		{ $$ = {explain:true}; }
	| EXPLAIN QUERY PLAN
		{ $$ = {explain:true}; }
	;

sql_stmt_stmt
	: alter_table_stmt
	| analyze_stmt
	| attach_stmt
	| begin_stmt
	| commit_stmt
	| create_index_stmt
	| create_table_stmt
	| create_trigger_stmt
	| create_view_stmt
	| create_virtual_table_stmt
	| delete_stmt
	| delete_stmt_limited
	| detach_stmt
	| drop_index_stmt
	| drop_table_stmt
	| drop_trigger_stmt
	| drop_view_stmt
	| insert_stmt
	| pragma_stmt
	| reindex_stmt
	| release_stmt
	| rollback_stmt
	| savepoint_stmt
	| select_stmt
	| update_stmt
	| update_stmt_limited
	| vacuum_stmt
	;

/* http://www.sqlite.org/lang_altertable.html */

alter_table_stmt
	: ALTER TABLE alter_table_name alter_table_action
		{ $$ = {statement: 'ALTER TABLE'}; y.extend($$, $3); y.extend($$, $4);  }
	;

alter_table_name 
	: name DOT name
		{ $$ = {database:$1, table:$3}; }
	| name
		{ $$ = {table:$1}; }
	;

alter_table_action
	: RENAME TO name
		{ $$ = {action: 'RENAME TO', new_table:$3}; }
	| ADD COLUMN column_def
		{ $$ = {action: 'ADD COLUMN', columndef:$3}; }
	| ADD column_def
		{ $$ = {action: 'ADD COLUMN', columndef:$3}; }
	;

analyze_stmt
	: ANALYZE name
		{ $$ = {statement: 'ANALYZE', name: $2}; }
	| ANALYZE name DOT name
		{ $$ = {statement: 'ANALYZE', database:$2 , name: $4}; }
	;

attach_stmt
	: ATTACH expr AS name
		{ $$ = {statement: 'ATTACH', expr: $2, database:$4}; }	
	| ATTACH DATABASE expr AS name
		{ $$ = {statement: 'ATTACH', expr: $3, database:$5}; }	
	;

begin_stmt
	: BEGIN begin_stmt_type TRANSACTION
		{ $$ = {statement: 'BEGIN TRANSACTION', type: $2}; }			
	;

begin_statement_type
	:
		{ $$ = undefined; }
	| DEFERRED
		{ $$ = 'DEFERRED'; }
	| IMMEDIATE
		{ $$ = 'IMMEDIATE'; }
	| EXCLUSIVE
		{ $$ = 'EXCLUSIVE'; }
	;

commit_stmt
	: COMMIT TRANSACTION
		{ $$ = {statement: 'COMMIT TRANSACTION'}; }			
	| COMMIT
		{ $$ = {statement: 'COMMIT TRANSACTION'}; }			
	| END TRANSACTION
		{ $$ = {statement: 'COMMIT TRANSACTION'}; }			
	| END
		{ $$ = {statement: 'COMMIT TRANSACTION'}; }			
	;

compound_select_stmt
	;