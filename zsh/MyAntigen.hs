{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}
module MyAntigen where

import Antigen (
                -- Rudimentary imports
                AntigenConfiguration (..)
              , bundle
              , antigen
                -- If you want to source a bit trickier plugins
              , ZshPlugin (..)
              , antigenSourcingStrategy
              , filePathsSourcingStrategy
              )
import Shelly (shelly)

bundles =
  [ bundle "zsh-users/zsh-syntax-highlighting"
  , bundle "temmings/shell-todo"
  , (bundle "rupa/z") { sourcingStrategy = filePathsSourcingStrategy [ "z.sh" ] }
  , (bundle "m4i/cdd") { sourcingStrategy = filePathsSourcingStrategy [ "cdd" ] }
  , (bundle "robbyrussell/oh-my-zsh")
     { sourcingStrategy = filePathsSourcingStrategy
       [ "oh-my-zsh.sh"
       , "plugins/git/git.plugin.zsh"
       , "plugins/git/_git-branch"
       , "plugins/git/_git-remote"
       , "themes/mrtazz.zsh-theme"
       ] }
  ]

config = AntigenConfiguration bundles

main :: IO ()
main = shelly $ antigen config
