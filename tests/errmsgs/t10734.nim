discard """
  cmd: "nim check --hints=on $file"
  errormsg: ""
  nimout: '''
t10734.nim(18, 1) Error: invalid indentation
t10734.nim(18, 6) Error: invalid indentation
t10734.nim(20, 1) Error: expression expected, but found '[EOF]'
t10734.nim(17, 5) Error: 'proc' is not a concrete type; for a callback without parameters use 'proc()'
t10734.nim(18, 6) Error: undeclared identifier: 'p'
t10734.nim(18, 6) Error: expression has no type: p
t10734.nim(16, 3) Hint: 'T' is declared but not used [XDeclaredButNotUsed]
'''
"""

type
  T = object
    a:
proc p =
  case
