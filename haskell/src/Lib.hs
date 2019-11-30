{-# LANGUAGE ScopedTypeVariables #-}

module Lib
  ( parseCsv
  ) where

import qualified Data.ByteString.Lazy as BSL
import qualified Data.Vector as V

import Data.Char
import Data.Csv

parseCsv :: IO ()
parseCsv = do
  let csvBase = "./resources/hadith-islamware/"
      csvFile = csvBase ++ "hadith-musnad-ahmad-ibn-hanbal.utf8.csv"
  csvData <- BSL.readFile csvFile
  let csvOptions = defaultDecodeOptions {decDelimiter = fromIntegral (ord '|')}
  case decodeWith csvOptions NoHeader csvData of
    Left err -> print $ "Error in decoding " ++ show err
    Right v -> V.forM_ v (\(_ :: Int, _ :: Int, text :: String, _ :: String) -> putStrLn text)
