{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.DebugOutput
       (gl_MAX_DEBUG_MESSAGE_LENGTH, gl_MAX_DEBUG_LOGGED_MESSAGES,
        gl_DEBUG_TYPE_UNDEFINED_BEHAVIOR, gl_DEBUG_TYPE_PORTABILITY,
        gl_DEBUG_TYPE_PERFORMANCE, gl_DEBUG_TYPE_OTHER,
        gl_DEBUG_TYPE_ERROR, gl_DEBUG_TYPE_DEPRECATED_BEHAVIOR,
        gl_DEBUG_SOURCE_WINDOW_SYSTEM, gl_DEBUG_SOURCE_THIRD_PARTY,
        gl_DEBUG_SOURCE_SHADER_COMPILER, gl_DEBUG_SOURCE_OTHER,
        gl_DEBUG_SOURCE_APPLICATION, gl_DEBUG_SOURCE_API,
        gl_DEBUG_SEVERITY_MEDIUM, gl_DEBUG_SEVERITY_LOW,
        gl_DEBUG_SEVERITY_HIGH, gl_DEBUG_OUTPUT_SYNCHRONOUS,
        gl_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH, gl_DEBUG_LOGGED_MESSAGES,
        gl_DEBUG_CALLBACK_USER_PARAM, gl_DEBUG_CALLBACK_FUNCTION)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_MAX_DEBUG_MESSAGE_LENGTH :: GLenum
gl_MAX_DEBUG_MESSAGE_LENGTH = 37187
 
gl_MAX_DEBUG_LOGGED_MESSAGES :: GLenum
gl_MAX_DEBUG_LOGGED_MESSAGES = 37188
 
gl_DEBUG_TYPE_UNDEFINED_BEHAVIOR :: GLenum
gl_DEBUG_TYPE_UNDEFINED_BEHAVIOR = 33358
 
gl_DEBUG_TYPE_PORTABILITY :: GLenum
gl_DEBUG_TYPE_PORTABILITY = 33359
 
gl_DEBUG_TYPE_PERFORMANCE :: GLenum
gl_DEBUG_TYPE_PERFORMANCE = 33360
 
gl_DEBUG_TYPE_OTHER :: GLenum
gl_DEBUG_TYPE_OTHER = 33361
 
gl_DEBUG_TYPE_ERROR :: GLenum
gl_DEBUG_TYPE_ERROR = 33356
 
gl_DEBUG_TYPE_DEPRECATED_BEHAVIOR :: GLenum
gl_DEBUG_TYPE_DEPRECATED_BEHAVIOR = 33357
 
gl_DEBUG_SOURCE_WINDOW_SYSTEM :: GLenum
gl_DEBUG_SOURCE_WINDOW_SYSTEM = 33351
 
gl_DEBUG_SOURCE_THIRD_PARTY :: GLenum
gl_DEBUG_SOURCE_THIRD_PARTY = 33353
 
gl_DEBUG_SOURCE_SHADER_COMPILER :: GLenum
gl_DEBUG_SOURCE_SHADER_COMPILER = 33352
 
gl_DEBUG_SOURCE_OTHER :: GLenum
gl_DEBUG_SOURCE_OTHER = 33355
 
gl_DEBUG_SOURCE_APPLICATION :: GLenum
gl_DEBUG_SOURCE_APPLICATION = 33354
 
gl_DEBUG_SOURCE_API :: GLenum
gl_DEBUG_SOURCE_API = 33350
 
gl_DEBUG_SEVERITY_MEDIUM :: GLenum
gl_DEBUG_SEVERITY_MEDIUM = 37191
 
gl_DEBUG_SEVERITY_LOW :: GLenum
gl_DEBUG_SEVERITY_LOW = 37192
 
gl_DEBUG_SEVERITY_HIGH :: GLenum
gl_DEBUG_SEVERITY_HIGH = 37190
 
gl_DEBUG_OUTPUT_SYNCHRONOUS :: GLenum
gl_DEBUG_OUTPUT_SYNCHRONOUS = 33346
 
gl_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH :: GLenum
gl_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH = 33347
 
gl_DEBUG_LOGGED_MESSAGES :: GLenum
gl_DEBUG_LOGGED_MESSAGES = 37189
 
gl_DEBUG_CALLBACK_USER_PARAM :: GLenum
gl_DEBUG_CALLBACK_USER_PARAM = 33349
 
gl_DEBUG_CALLBACK_FUNCTION :: GLenum
gl_DEBUG_CALLBACK_FUNCTION = 33348