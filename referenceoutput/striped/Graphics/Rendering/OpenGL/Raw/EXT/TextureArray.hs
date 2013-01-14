{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureArray
       (gl_TEXTURE_BINDING_2D_ARRAY, gl_TEXTURE_BINDING_1D_ARRAY,
        gl_TEXTURE_2D_ARRAY, gl_TEXTURE_1D_ARRAY,
        gl_PROXY_TEXTURE_2D_ARRAY, gl_PROXY_TEXTURE_1D_ARRAY,
        gl_MAX_ARRAY_TEXTURE_LAYERS,
        gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER,
        gl_COMPARE_REF_DEPTH_TO_TEXTURE)
       where
import Graphics.Rendering.OpenGL.Raw.EXT.GeometryShader4
       (gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_TEXTURE_BINDING_2D_ARRAY :: GLenum
gl_TEXTURE_BINDING_2D_ARRAY = 35869
 
gl_TEXTURE_BINDING_1D_ARRAY :: GLenum
gl_TEXTURE_BINDING_1D_ARRAY = 35868
 
gl_TEXTURE_2D_ARRAY :: GLenum
gl_TEXTURE_2D_ARRAY = 35866
 
gl_TEXTURE_1D_ARRAY :: GLenum
gl_TEXTURE_1D_ARRAY = 35864
 
gl_PROXY_TEXTURE_2D_ARRAY :: GLenum
gl_PROXY_TEXTURE_2D_ARRAY = 35867
 
gl_PROXY_TEXTURE_1D_ARRAY :: GLenum
gl_PROXY_TEXTURE_1D_ARRAY = 35865
 
gl_MAX_ARRAY_TEXTURE_LAYERS :: GLenum
gl_MAX_ARRAY_TEXTURE_LAYERS = 35071
 
gl_COMPARE_REF_DEPTH_TO_TEXTURE :: GLenum
gl_COMPARE_REF_DEPTH_TO_TEXTURE = 34894