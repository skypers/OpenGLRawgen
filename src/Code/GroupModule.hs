-----------------------------------------------------------------------------
--
-- Module      :  Code.GroupModule
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

module Code.GroupModule (
    mkGroupModule,
    addCoreProfiles,
) where

import Control.Monad.Reader
import Data.Maybe

import Language.Haskell.Exts.Syntax
import Code.New.ModuleBuilder
import Code.Builder

import Spec
import Text.OpenGL.Spec(Category(..))

-----------------------------------------------------------------------------

mkGroupModule :: ModuleName -> [Category] -> Builder ()
mkGroupModule mn cats = do
    addModuleAndActivate mn True
    sequence_ $ map addCat cats
    where
        addCat c = do
            cm <- askCategoryModule c
            addImport $ importAll cm
            addExport $ EModuleContents cm


addCoreProfiles :: Builder ()
addCoreProfiles = do
    let addCat (Version ma mi False) = Just $ addCoreProfile ma mi False
                                          >> when (ma >= 3) (addCoreProfile ma mi True)
        addCat _                    = Nothing
    asksCategories (mapMaybe addCat) >>= sequence_

addCoreProfile :: Int -> Int -> Bool -> Builder ()
addCoreProfile ma mi comp = do
     let catFilter (Version ma' mi' comp') =
            (ma' < ma || (ma' == ma && mi' <= mi)) -- version check
            && (comp  || ma' < 3 || (ma' == 3 && mi == 0) || not comp') -- only import deprecated modules when needed
         catFilter _                 = False
     cats <- asksCategories (filter catFilter)
     cp <- askCorePath
     let mn = ModuleName $ cp ++ ".Core" ++ show ma ++ show mi
                ++ (if comp then "Compatibility" else "")
     mkGroupModule mn cats

asksCategories :: ([Category] -> a) -> Builder a
asksCategories f = asks (f . allCategories)
