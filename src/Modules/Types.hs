-----------------------------------------------------------------------------

-- Module      :  Modules.Types
-- Copyright   :  (c) 2013 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | The types used to represent a module in the OpenGLRaw.
--
-----------------------------------------------------------------------------

module Modules.Types (
    RawModule(..), ModuleType(..),
    isExternal,
    
    ModulePart(..), Imported, GLName,
    ValueType(..), FType(..),
) where

-----------------------------------------------------------------------------

import Language.Haskell.Exts.Syntax

import Language.OpenGLRaw.Base

-----------------------------------------------------------------------------

-- | A generated module
data RawModule
    = RawModule
    { rawModuleName     :: ModuleName
    , rawModuleType     :: ModuleType
    , rawModuleWarning  :: Maybe WarningText
    , rawModuleParts    :: [ModulePart]
    } deriving ()

isExternal :: RawModule -> Bool
isExternal rm = case rawModuleType rm of
    Internal -> False
    _        -> True

-----------------------------------------------------------------------------

-- | The parts in a module for OpenGLRaw.
data ModulePart
    -- | Define an enumeration value with a specific value
    = DefineEnum        Name GLName ValueType Integer
    -- | Define an enumeration value as an alias for another value in the
    -- same module.
    | ReDefineLEnum     Name GLName ValueType Name
    -- | Define an enumeration value as an alias for another value, imported
    -- from another module.
    | ReDefineIEnum     Name GLName ValueType Imported
    -- | Reexport something (enum or function)
    | ReExport          Imported GLName
    -- | Define a function.
    | DefineFunc        Name FType [FType]
        GLName    -- | The original name
        Category  -- | The category this function was part of.
    -- | Reexport a module
    | ReExportModule    ModuleName
    deriving ()

-- | An imported name with specific module.
type Imported = (Name, ModuleName)

-----------------------------------------------------------------------------
