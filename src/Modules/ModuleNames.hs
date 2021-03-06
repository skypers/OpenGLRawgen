-----------------------------------------------------------------------------
--
-- Module      :  Code.ModuleNames
-- Copyright   :  (c) 2013 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | This module contains several functions for looking up the location 
-- (modulename) of both generated as siupplied parts of OpenGLRaw. 
--
-----------------------------------------------------------------------------

module Modules.ModuleNames (

    -- * Ask-ers for module locations
    askBaseModule,
    askTypesModule,
    askExtensionModule,
    askCategoryModule,
    askProfileModule,
    askVendorModule,

    -- * Ask-ers for module imports
    askBaseImport,
    askTypesImport,
    askExtensionImport,
    askCategoryPImport,

    -- * Ask-ers for other (spec related) information
    askCategoryModuleType,
    askCorePath,

) where

-----------------------------------------------------------------------------

import Control.Applicative
import Data.Char
import Data.List(partition)

import Language.Haskell.Exts.Syntax
import Code.Generating.Utils

import Language.OpenGLRaw.Base
import Main.Monad

-----------------------------------------------------------------------------

-- | Asks the location of several basic modules
askBaseModule, askTypesModule, askExtensionModule
    :: RawGenMonad m => m ModuleName
askBaseModule = return baseModule
askTypesModule = return typesModule
askExtensionModule = return extensionModule

-- | Asks the full import of several basic modules
askBaseImport, askTypesImport, askExtensionImport
    :: RawGenMonad m => m ImportDecl
askBaseImport       = return . importAll $ baseModule
askTypesImport      = return . importAll $ typesModule
askExtensionImport  = return . importAll $ extensionModule


-- | Ask the module in which the functions and enums will be defined for
-- that category
askCategoryModule :: RawGenMonad m => Category -> m ModuleName
askCategoryModule = categoryModule

-- | Asks an importDecl to import the ImportSpec from the module of the
-- category.
askCategoryPImport :: RawGenMonad m => Category -> [ImportSpec] -> m ImportDecl
askCategoryPImport c i = flip partialImport i <$> categoryModule c

-----------------------------------------------------------------------------

moduleBase :: String
moduleBase = "Graphics.Rendering.OpenGL.Raw"

-- (Temporary) Basemodule (...Raw) modulepath
baseModule :: ModuleName
baseModule = ModuleName moduleBase

-- (Temporary) Types modulePath
typesModule :: ModuleName
typesModule = ModuleName $ moduleBase <.> "Types"

-- (Temporary) Extensions modulepath
extensionModule :: ModuleName
extensionModule = ModuleName $ moduleBase <.> "Internal" <.> "Extensions"

-- (Temporary) corePath
corePath :: String
corePath = moduleBase <.>  "Core"

-- | Asks where the path of the Core modules is. Core modules are those who
-- define the enums and functions from the OpenGL spec.
askCorePath :: RawGenMonad m => m String
askCorePath = return corePath

-- (Temporary) category to modulename mapping
categoryModule :: RawGenMonad m => Category -> m ModuleName
categoryModule (Version ma mi prof) = return .
    ModuleName
        $ corePath
        <.> ("Core" ++ show ma ++ show mi ++ profileNameExtension prof)
categoryModule (Extension ex n prof) = return .
    ModuleName
        $ moduleBase <.> upperFirst (vendorName ex) <.> correctName n
        ++ profileNameExtension prof

profileNameExtension :: Profile -> String
profileNameExtension p = case p of
    DefaultProfile -> []
    ProfileName pn -> upperFirst pn

-- | Query what the module type of a given module is.
askCategoryModuleType :: RawGenMonad m => Category -> m ModuleType
askCategoryModuleType (Version ma mi prof)
    = return $ CoreInterface ma mi prof
askCategoryModuleType (Extension e n prof)
    = return $ ExtensionMod e n prof

-- | Asks the 'ModuleName' of a specific core profile
askProfileModule
    :: RawGenMonad m 
    => Int -- ^ Major version
    -> Int -- ^ Minor version
    -> Profile -- ^ The profile
    -> m ModuleName
askProfileModule ma mi prof = askCategoryModule (Version ma mi prof)

-- | Asks the 'ModuleName' of the grouping module for a certain vendor
askVendorModule :: RawGenMonad m => Vendor -> m ModuleName
askVendorModule e = return . ModuleName $ moduleBase <.> vendorName e

-----------------------------------------------------------------------------

-- | Infix operator for seperating modulename parts
(<.>) :: String -> String -> String
a <.> b = a ++ '.' : b

-- | Makes the first character of the string upper case
upperFirst :: String -> String
upperFirst [] = []
upperFirst (c:cs) = toUpper c : cs

-- | Some module names don't start with a letter, this is corrected by adding
-- the name of the extension which, at least with the current spec, does
-- start with a letter.
correctName :: String -> String
correctName [] = []
correctName (n:ns)
    | isAlpha n = toUpper n : recapUnderscores ns
    | otherwise =
         let (start, rest) = partition (`notElem` legalChars) ns
             nameStart = concatMap spellout (n:start)
         in nameStart ++ recapUnderscores rest

-- | Removes underscores and capitalizes the letter following an underscore
recapUnderscores :: String -> String
recapUnderscores []             = []
recapUnderscores ('_' : x : xs) = toUpper x : recapUnderscores xs
recapUnderscores (      x : xs) =         x : recapUnderscores xs

-- | List of legal `Char`s in a module name
legalChars :: [Char]
legalChars = ['A'..'Z'] ++ ['a'..'z'] ++ "'_"

-- | Spells illegal `Char`s as words, starting with a capital letter.
spellout :: Char -> String
spellout c = case c of
    '0' -> "Zero"
    '1' -> "One"
    '2' -> "Two"
    '3' -> "Three"
    '4' -> "Four"
    '5' -> "Five"
    '6' -> "Six"
    '7' -> "Seven"
    '8' -> "Eight"
    '9' -> "Nine"
    _   -> error $ "spellout: not yet implemented for '" ++ c : "'."

-----------------------------------------------------------------------------
