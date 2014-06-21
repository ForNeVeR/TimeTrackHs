module Utils.Commands where

import Data.Time

import Utils.Data
import Utils.Parser

usage :: IO ()
usage = putStrLn "Usage:\n\
                 \  TimeTrackHs file command [arguments]\n\
                 \\n\
                 \Commands:\n\
                 \  list - lists all records in a file."

list :: String -> IO ()
list fileName = do
    records <- readRecords fileName
    mapM_ (putStrLn . show) records