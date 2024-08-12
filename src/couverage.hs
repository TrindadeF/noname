module couverage where

import Ledger
import PlutusTx
import PlutusTx.Prelude
import Ledger.Constraints as Constraints
import Ledger.Value as Value
import Prelude (Semigroup(..), Show)

data LastroState = LastroState
    { lastroOwner  :: PubKeyHash
    , lastroAmount :: Value
    } deriving Show

PlutusTx.makeIsData ''LastroState
PlutusTx.makeLift ''LastroState

{-# INLINABLE mkValidator #-}
mkValidator :: LastroState -> () -> ScriptContext -> Bool
mkValidator state _ ctx = True 
