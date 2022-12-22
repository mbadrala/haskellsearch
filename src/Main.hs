module Main where

import System.IO ( openFile, IOMode(ReadMode), hGetContents )
import System.Directory ( getDirectoryContents )
import Control.Monad ( forM_ )
import Data.List ( isInfixOf )

main :: IO ()
main = do
    let directoryPath = "example"
    files <- getDirectoryContents directoryPath 
    forM_ files $ \s -> do
        if isInfixOf ".txt" s 
            then do
                let filepath = directoryPath ++ "/" ++ s
                handle <- openFile filepath ReadMode
                contents <- hGetContents handle
                print contents
        else
            return ()
