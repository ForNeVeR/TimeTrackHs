module Main where

import System.Environment

import Utils.Commands

main :: IO ()
main = do
    args <- getArgs
    execute args

execute :: [String] -> IO ()
execute [fileName, "list"] = list fileName
execute _                  = usage