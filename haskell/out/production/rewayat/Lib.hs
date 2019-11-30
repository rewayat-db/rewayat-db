{-# LANGUAGE ScopedTypeVariables #-}

module Lib
  ( parseCsv
  ) where

import qualified Data.ByteString.Lazy as BSL
import qualified Data.Text as T
import qualified Data.Text.Lazy.Encoding as TLE
import qualified Data.Vector as V

import Data.Char
import Data.Csv
import Data.List

myOptions = defaultDecodeOptions {decDelimiter = fromIntegral (ord '|')}

parseCsv :: IO ()
parseCsv = do
  let csvBase = "/Users/aelkasimi/haskell-projects/rewayat/resources/hadith-islamware/"
      csvFile = csvBase ++ "hadith-musnad-ahmad-ibn-hanbal.csv"
  csvData <- BSL.readFile csvFile
  case decodeWith myOptions NoHeader csvData of
    Left err ->
      print $ "Error in decoding " ++ show err
    Right v ->
      V.forM_ v (\(_ :: Int, _ :: Int, text :: String, _ :: String) -> putStrLn text)