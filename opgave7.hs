data Expr = Lit Integer | Add Expr Expr


math = (Add (Lit 3) (Add (Lit 7)(Add (Lit 2) (Lit 1))))
result = eval math

eval :: Expr -> Integer
eval (Lit x) = x
eval (Add x y) = eval x + eval y