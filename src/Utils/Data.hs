module Utils.Data where

import Data.Time

newtype TimeSpan = TimeSpan Double

instance Show TimeSpan where
    show ts = undefined

data Task = Task {
    project :: String,
    time :: TimeSpan,
    comment :: String
} deriving (Show)

data Record = Record {
    date :: Day,
    tasks :: [Task]
} deriving (Show)