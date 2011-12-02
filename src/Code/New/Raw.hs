-----------------------------------------------------------------------------
--
-- Module      :  Code.New.Raw
-- Copyright   :
-- License     :  AllRightsReserved
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- |
--
-----------------------------------------------------------------------------

module Code.New.Raw (
    makeRaw,
) where

import Control.Monad.Reader

import Spec

import Language.Haskell.Exts.Syntax
import Code.New.ModuleBuilder
import Code.New.Package

import Code.New.Builder
import Code.New.Module

makeRaw :: RawSpec -> Package Module
makeRaw s =
    let packbuild = runReader (execBuilder emptyBuilder buildRaw) s
    in package packbuild

buildRaw :: Builder ()
buildRaw = buildRawImports

buildRawImports :: Builder ()
buildRawImports = do
    cats <- asks allCategories
    sequence_ $ map buildModule cats
