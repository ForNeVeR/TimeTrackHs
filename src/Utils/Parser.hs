module Utils.Parser (readRecords) where

import Control.Applicative(liftA, liftA2)
import Control.Monad
import Data.Functor
import Data.Time
import Text.ParserCombinators.Parsec
import Text.Parsec.Numbers

import Utils.Data

readRecords :: fileName -> IO [Record]
readRecords = undefined

parseRecords :: Parser [Record]
parseRecords = do
    result <- many parseRecord
    eof
    return result

parseRecord :: Parser Record
parseRecord = do
    date <- parseDate
    tasks <- many parseTask
    eol
    return $ Record { date = date, tasks = tasks }

parseDate :: Parser Day
parseDate = do
    year <- parseIntegral
    char '.'
    month <- parseIntegral
    char '.'
    day <- parseIntegral
    return $

parseTask :: Parser Task
parseTask = undefined

eol :: Parser Char
eol = char '\n'