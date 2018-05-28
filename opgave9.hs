data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)  

singleton :: a -> Tree a  
singleton x = Node x EmptyTree EmptyTree  
  
insert :: (Ord a) => a -> Tree a -> Tree a  
insert x EmptyTree = singleton x  
insert x (Node a left right)   
    | x == a = Node x left right  
    | x < a  = Node a (insert x left) right  
    | x > a  = Node a left (insert x right)
    
fromList::(Ord a)=>[a]-> Tree a
fromList l = foldr insert EmptyTree l

toList::Tree a->[a]
toList a = case a of
        EmptyTree -> []
        Node v l r -> toList(l)++[v]++toList(r)

testValues =[3,2,1,4,6,8]
testValuesChar = ['a', 'c', 'p', 'k', 'b']

treeA = fromList testValues
treeB = fromList testValuesChar

        