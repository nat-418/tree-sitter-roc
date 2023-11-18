; ; Keywords
; [
;     "app"
;     "packages"
;     "imports"
;     "provides"
;     "when"
;     "is"
;     "if"
;     "then"
;     "else"
;  ] @keyword.control.roc
; (when) @keyword.control.roc
; (is) @keyword.control.roc

; (colon) @keyword.other.roc
; (as) @keyword.other.roc
; (port) @keyword.other.roc
; (exposing) @keyword.other.roc
; (alias) @keyword.other.roc
; (infix) @keyword.other.roc

; (arrow) @keyword.operator.arrow.roc

; (port) @keyword.other.port.roc

; (type_annotation(lower_case_identifier) @function.roc)
; (port_annotation(lower_case_identifier) @function.roc)
; (function_call_expr target: (value_expr) @function.roc)

; (field_access_expr(value_expr(lower_case_identifier)) @local.function.roc)
; (lower_pattern) @local.function.roc
; (record_base_identifier) @local.function.roc


; (eq) @keyword.operator.assignment.roc


; "(" @punctuation.section.braces
; ")" @punctuation.section.braces

; "|" @keyword.other.roc
; "," @punctuation.separator.comma.roc

; (import) @meta.import.roc
; (module) @keyword.other.roc

; (number_literal) @constant.numeric.roc


; (type) @keyword.type.roc

; (type_declaration(upper_case_identifier) @storage.type.roc)
; (type_ref) @storage.type.roc
; (type_alias_declaration name: (upper_case_identifier) @storage.type.roc)

; (union_variant(upper_case_identifier) @union.roc)
; (union_pattern) @union.roc
; (value_expr(upper_case_qid(upper_case_identifier)) @union.roc)

; ; comments
(line_comment) @comment.roc
; (block_comment) @comment.roc

; ; strings
; (string_escape) @character.escape.roc

; (string_literal) @string.roc




; (_ param:(pattern(lower_pattern)@variable.parameter))
; (lower_pattern) @variable

[
    "app"
    "packages"
    "imports"
    "provides"
    "if"
    "then"
    "else"
 ] @keyword.control

 (when) @keyword.control.roc
 (is) @keyword.control.roc
[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

[
  ","
] @punctuation.delimiter


; (value_declaration (pattern)@function (anonymous_function_expr))

; (function_call_expr target:(value_expr)@function )
; (eq) @operator



; comments
(line_comment) @comment

; strings
(escape_char) @constant.character.escape

(arrow)@keyword.other.roc
(backslash) @keyword.other.roc


;;from fsharp

;; ----------------------------------------------------------------------------
;; Literals and comments

[
  (line_comment)
  (block_comment)
  (block_comment_content)
] @comment


;; ----------------------------------------------------------------------------
;; Punctuation

[
  "("
  ")"
  "{"
  "}"
  "["
  "]"
] @punctuation.bracket

[
  "," 
  ";"
] @punctuation.delimiter

[
  "|" 
  "="
  ">"
  "<"
  "-"
  "~"
  (infix_op)
  (symbolic_op)
] @operator




[
  "if"
  "then"
  "else"
  "elif"
] @keyword.control.conditional


[
  "for"
  "while"
] @keyword.control.return


      (application_expression
        (identifier_pattern
          (long_identifier
            (identifier)@function)))

(value_declaration(value_declaration_left (identifier_pattern)@function)(fun_expression))
(dot_expression
  base: (identifier_pattern) @namespace
  field: (long_identifier_or_op) @function)



(string)@string

[
  (int)
  (uint8)
  (uint16)
] @constant.numeric
