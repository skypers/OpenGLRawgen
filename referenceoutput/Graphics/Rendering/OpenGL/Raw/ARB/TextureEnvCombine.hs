{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.TextureEnvCombine
       (gl_SUBTRACT_ARB, gl_SOURCE2_RGB_ARB, gl_SOURCE2_ALPHA_ARB,
        gl_SOURCE1_RGB_ARB, gl_SOURCE1_ALPHA_ARB, gl_SOURCE0_RGB_ARB,
        gl_SOURCE0_ALPHA_ARB, gl_RGB_SCALE_ARB, gl_PRIMARY_COLOR_ARB,
        gl_PREVIOUS_ARB, gl_OPERAND2_RGB_ARB, gl_OPERAND2_ALPHA_ARB,
        gl_OPERAND1_RGB_ARB, gl_OPERAND1_ALPHA_ARB, gl_OPERAND0_RGB_ARB,
        gl_OPERAND0_ALPHA_ARB, gl_INTERPOLATE_ARB, gl_CONSTANT_ARB,
        gl_COMBINE_RGB_ARB, gl_COMBINE_ARB, gl_COMBINE_ALPHA_ARB,
        gl_ADD_SIGNED_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_SUBTRACT_ARB :: GLenum
gl_SUBTRACT_ARB = 34023
 
gl_SOURCE2_RGB_ARB :: GLenum
gl_SOURCE2_RGB_ARB = 34178
 
gl_SOURCE2_ALPHA_ARB :: GLenum
gl_SOURCE2_ALPHA_ARB = 34186
 
gl_SOURCE1_RGB_ARB :: GLenum
gl_SOURCE1_RGB_ARB = 34177
 
gl_SOURCE1_ALPHA_ARB :: GLenum
gl_SOURCE1_ALPHA_ARB = 34185
 
gl_SOURCE0_RGB_ARB :: GLenum
gl_SOURCE0_RGB_ARB = 34176
 
gl_SOURCE0_ALPHA_ARB :: GLenum
gl_SOURCE0_ALPHA_ARB = 34184
 
gl_RGB_SCALE_ARB :: GLenum
gl_RGB_SCALE_ARB = 34163
 
gl_PRIMARY_COLOR_ARB :: GLenum
gl_PRIMARY_COLOR_ARB = 34167
 
gl_PREVIOUS_ARB :: GLenum
gl_PREVIOUS_ARB = 34168
 
gl_OPERAND2_RGB_ARB :: GLenum
gl_OPERAND2_RGB_ARB = 34194
 
gl_OPERAND2_ALPHA_ARB :: GLenum
gl_OPERAND2_ALPHA_ARB = 34202
 
gl_OPERAND1_RGB_ARB :: GLenum
gl_OPERAND1_RGB_ARB = 34193
 
gl_OPERAND1_ALPHA_ARB :: GLenum
gl_OPERAND1_ALPHA_ARB = 34201
 
gl_OPERAND0_RGB_ARB :: GLenum
gl_OPERAND0_RGB_ARB = 34192
 
gl_OPERAND0_ALPHA_ARB :: GLenum
gl_OPERAND0_ALPHA_ARB = 34200
 
gl_INTERPOLATE_ARB :: GLenum
gl_INTERPOLATE_ARB = 34165
 
gl_CONSTANT_ARB :: GLenum
gl_CONSTANT_ARB = 34166
 
gl_COMBINE_RGB_ARB :: GLenum
gl_COMBINE_RGB_ARB = 34161
 
gl_COMBINE_ARB :: GLenum
gl_COMBINE_ARB = 34160
 
gl_COMBINE_ALPHA_ARB :: GLenum
gl_COMBINE_ALPHA_ARB = 34162
 
gl_ADD_SIGNED_ARB :: GLenum
gl_ADD_SIGNED_ARB = 34164