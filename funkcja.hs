import Data.Map (Map)
import qualified Data.Map as M

main :: IO ()
main = do
    myMap <- return M.empty  -- Corrected line
    let myMap1 = M.insert 3 100 myMap
        myMap2 = M.insert 4 200 myMap1
        myMap3 = M.insert 5 600 myMap2
    print myMap3
    let value = M.lookup 3 myMap3
    print value
    let exists = M.member 5 myMap3
    print exists
    let updatedMap = M.delete 4 myMap3
    print updatedMap