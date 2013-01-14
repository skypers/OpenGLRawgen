{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.TextureShader
       (gl_VIBRANCE_SCALE, gl_VIBRANCE_BIAS, gl_UNSIGNED_INT_S8_S8_8_8,
        gl_UNSIGNED_INT_8_8_S8_S8_REV, gl_TEXTURE_SHADER,
        gl_TEXTURE_MAG_SIZE, gl_TEXTURE_LO_SIZE, gl_TEXTURE_HI_SIZE,
        gl_TEXTURE_DT_SIZE, gl_TEXTURE_DS_SIZE, gl_TEXTURE_BORDER_VALUES,
        gl_SIGNED_RGB_UNSIGNED_ALPHA, gl_SIGNED_RGB, gl_SIGNED_RGBA,
        gl_SIGNED_RGBA8, gl_SIGNED_RGB8_UNSIGNED_ALPHA8, gl_SIGNED_RGB8,
        gl_SIGNED_LUMINANCE, gl_SIGNED_LUMINANCE_ALPHA,
        gl_SIGNED_LUMINANCE8, gl_SIGNED_LUMINANCE8_ALPHA8,
        gl_SIGNED_INTENSITY, gl_SIGNED_INTENSITY8, gl_SIGNED_HILO,
        gl_SIGNED_HILO16, gl_SIGNED_ALPHA, gl_SIGNED_ALPHA8,
        gl_SHADER_OPERATION, gl_SHADER_CONSISTENT,
        gl_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING, gl_PREVIOUS_TEXTURE_INPUT,
        gl_PASS_THROUGH, gl_OFFSET_TEXTURE_SCALE,
        gl_OFFSET_TEXTURE_RECTANGLE_SCALE, gl_OFFSET_TEXTURE_RECTANGLE,
        gl_OFFSET_TEXTURE_MATRIX, gl_OFFSET_TEXTURE_BIAS,
        gl_OFFSET_TEXTURE_2D_SCALE, gl_OFFSET_TEXTURE_2D,
        gl_OFFSET_TEXTURE_2D_MATRIX, gl_OFFSET_TEXTURE_2D_BIAS,
        gl_MAGNITUDE_SCALE, gl_MAGNITUDE_BIAS, gl_LO_SCALE, gl_LO_BIAS,
        gl_HI_SCALE, gl_HI_BIAS, gl_HILO, gl_HILO16, gl_DT_SCALE,
        gl_DT_BIAS, gl_DS_SCALE, gl_DS_BIAS, gl_DSDT, gl_DSDT_MAG_VIB,
        gl_DSDT_MAG, gl_DSDT_MAG_INTENSITY, gl_DSDT8, gl_DSDT8_MAG8,
        gl_DSDT8_MAG8_INTENSITY8, gl_DOT_PRODUCT_TEXTURE_RECTANGLE,
        gl_DOT_PRODUCT_TEXTURE_CUBE_MAP, gl_DOT_PRODUCT_TEXTURE_2D,
        gl_DOT_PRODUCT_REFLECT_CUBE_MAP, gl_DOT_PRODUCT,
        gl_DOT_PRODUCT_DIFFUSE_CUBE_MAP, gl_DOT_PRODUCT_DEPTH_REPLACE,
        gl_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP,
        gl_DEPENDENT_GB_TEXTURE_2D, gl_DEPENDENT_AR_TEXTURE_2D,
        gl_CULL_MODES, gl_CULL_FRAGMENT, gl_CONST_EYE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_VIBRANCE_SCALE :: GLenum
gl_VIBRANCE_SCALE = 34579
 
gl_VIBRANCE_BIAS :: GLenum
gl_VIBRANCE_BIAS = 34585
 
gl_UNSIGNED_INT_S8_S8_8_8 :: GLenum
gl_UNSIGNED_INT_S8_S8_8_8 = 34522
 
gl_UNSIGNED_INT_8_8_S8_S8_REV :: GLenum
gl_UNSIGNED_INT_8_8_S8_S8_REV = 34523
 
gl_TEXTURE_SHADER :: GLenum
gl_TEXTURE_SHADER = 34526
 
gl_TEXTURE_MAG_SIZE :: GLenum
gl_TEXTURE_MAG_SIZE = 34591
 
gl_TEXTURE_LO_SIZE :: GLenum
gl_TEXTURE_LO_SIZE = 34588
 
gl_TEXTURE_HI_SIZE :: GLenum
gl_TEXTURE_HI_SIZE = 34587
 
gl_TEXTURE_DT_SIZE :: GLenum
gl_TEXTURE_DT_SIZE = 34590
 
gl_TEXTURE_DS_SIZE :: GLenum
gl_TEXTURE_DS_SIZE = 34589
 
gl_TEXTURE_BORDER_VALUES :: GLenum
gl_TEXTURE_BORDER_VALUES = 34586
 
gl_SIGNED_RGB_UNSIGNED_ALPHA :: GLenum
gl_SIGNED_RGB_UNSIGNED_ALPHA = 34572
 
gl_SIGNED_RGB :: GLenum
gl_SIGNED_RGB = 34558
 
gl_SIGNED_RGBA :: GLenum
gl_SIGNED_RGBA = 34555
 
gl_SIGNED_RGBA8 :: GLenum
gl_SIGNED_RGBA8 = 34556
 
gl_SIGNED_RGB8_UNSIGNED_ALPHA8 :: GLenum
gl_SIGNED_RGB8_UNSIGNED_ALPHA8 = 34573
 
gl_SIGNED_RGB8 :: GLenum
gl_SIGNED_RGB8 = 34559
 
gl_SIGNED_LUMINANCE :: GLenum
gl_SIGNED_LUMINANCE = 34561
 
gl_SIGNED_LUMINANCE_ALPHA :: GLenum
gl_SIGNED_LUMINANCE_ALPHA = 34563
 
gl_SIGNED_LUMINANCE8 :: GLenum
gl_SIGNED_LUMINANCE8 = 34562
 
gl_SIGNED_LUMINANCE8_ALPHA8 :: GLenum
gl_SIGNED_LUMINANCE8_ALPHA8 = 34564
 
gl_SIGNED_INTENSITY :: GLenum
gl_SIGNED_INTENSITY = 34567
 
gl_SIGNED_INTENSITY8 :: GLenum
gl_SIGNED_INTENSITY8 = 34568
 
gl_SIGNED_HILO :: GLenum
gl_SIGNED_HILO = 34553
 
gl_SIGNED_HILO16 :: GLenum
gl_SIGNED_HILO16 = 34554
 
gl_SIGNED_ALPHA :: GLenum
gl_SIGNED_ALPHA = 34565
 
gl_SIGNED_ALPHA8 :: GLenum
gl_SIGNED_ALPHA8 = 34566
 
gl_SHADER_OPERATION :: GLenum
gl_SHADER_OPERATION = 34527
 
gl_SHADER_CONSISTENT :: GLenum
gl_SHADER_CONSISTENT = 34525
 
gl_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING :: GLenum
gl_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING = 34521
 
gl_PREVIOUS_TEXTURE_INPUT :: GLenum
gl_PREVIOUS_TEXTURE_INPUT = 34532
 
gl_PASS_THROUGH :: GLenum
gl_PASS_THROUGH = 34534
 
gl_OFFSET_TEXTURE_SCALE :: GLenum
gl_OFFSET_TEXTURE_SCALE = gl_OFFSET_TEXTURE_2D_SCALE
 
gl_OFFSET_TEXTURE_RECTANGLE_SCALE :: GLenum
gl_OFFSET_TEXTURE_RECTANGLE_SCALE = 34381
 
gl_OFFSET_TEXTURE_RECTANGLE :: GLenum
gl_OFFSET_TEXTURE_RECTANGLE = 34380
 
gl_OFFSET_TEXTURE_MATRIX :: GLenum
gl_OFFSET_TEXTURE_MATRIX = gl_OFFSET_TEXTURE_2D_MATRIX
 
gl_OFFSET_TEXTURE_BIAS :: GLenum
gl_OFFSET_TEXTURE_BIAS = gl_OFFSET_TEXTURE_2D_BIAS
 
gl_OFFSET_TEXTURE_2D_SCALE :: GLenum
gl_OFFSET_TEXTURE_2D_SCALE = 34530
 
gl_OFFSET_TEXTURE_2D :: GLenum
gl_OFFSET_TEXTURE_2D = 34536
 
gl_OFFSET_TEXTURE_2D_MATRIX :: GLenum
gl_OFFSET_TEXTURE_2D_MATRIX = 34529
 
gl_OFFSET_TEXTURE_2D_BIAS :: GLenum
gl_OFFSET_TEXTURE_2D_BIAS = 34531
 
gl_MAGNITUDE_SCALE :: GLenum
gl_MAGNITUDE_SCALE = 34578
 
gl_MAGNITUDE_BIAS :: GLenum
gl_MAGNITUDE_BIAS = 34584
 
gl_LO_SCALE :: GLenum
gl_LO_SCALE = 34575
 
gl_LO_BIAS :: GLenum
gl_LO_BIAS = 34581
 
gl_HI_SCALE :: GLenum
gl_HI_SCALE = 34574
 
gl_HI_BIAS :: GLenum
gl_HI_BIAS = 34580
 
gl_HILO :: GLenum
gl_HILO = 34548
 
gl_HILO16 :: GLenum
gl_HILO16 = 34552
 
gl_DT_SCALE :: GLenum
gl_DT_SCALE = 34577
 
gl_DT_BIAS :: GLenum
gl_DT_BIAS = 34583
 
gl_DS_SCALE :: GLenum
gl_DS_SCALE = 34576
 
gl_DS_BIAS :: GLenum
gl_DS_BIAS = 34582
 
gl_DSDT :: GLenum
gl_DSDT = 34549
 
gl_DSDT_MAG_VIB :: GLenum
gl_DSDT_MAG_VIB = 34551
 
gl_DSDT_MAG :: GLenum
gl_DSDT_MAG = 34550
 
gl_DSDT_MAG_INTENSITY :: GLenum
gl_DSDT_MAG_INTENSITY = 34524
 
gl_DSDT8 :: GLenum
gl_DSDT8 = 34569
 
gl_DSDT8_MAG8 :: GLenum
gl_DSDT8_MAG8 = 34570
 
gl_DSDT8_MAG8_INTENSITY8 :: GLenum
gl_DSDT8_MAG8_INTENSITY8 = 34571
 
gl_DOT_PRODUCT_TEXTURE_RECTANGLE :: GLenum
gl_DOT_PRODUCT_TEXTURE_RECTANGLE = 34382
 
gl_DOT_PRODUCT_TEXTURE_CUBE_MAP :: GLenum
gl_DOT_PRODUCT_TEXTURE_CUBE_MAP = 34544
 
gl_DOT_PRODUCT_TEXTURE_2D :: GLenum
gl_DOT_PRODUCT_TEXTURE_2D = 34542
 
gl_DOT_PRODUCT_REFLECT_CUBE_MAP :: GLenum
gl_DOT_PRODUCT_REFLECT_CUBE_MAP = 34546
 
gl_DOT_PRODUCT :: GLenum
gl_DOT_PRODUCT = 34540
 
gl_DOT_PRODUCT_DIFFUSE_CUBE_MAP :: GLenum
gl_DOT_PRODUCT_DIFFUSE_CUBE_MAP = 34545
 
gl_DOT_PRODUCT_DEPTH_REPLACE :: GLenum
gl_DOT_PRODUCT_DEPTH_REPLACE = 34541
 
gl_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP :: GLenum
gl_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP = 34547
 
gl_DEPENDENT_GB_TEXTURE_2D :: GLenum
gl_DEPENDENT_GB_TEXTURE_2D = 34538
 
gl_DEPENDENT_AR_TEXTURE_2D :: GLenum
gl_DEPENDENT_AR_TEXTURE_2D = 34537
 
gl_CULL_MODES :: GLenum
gl_CULL_MODES = 34528
 
gl_CULL_FRAGMENT :: GLenum
gl_CULL_FRAGMENT = 34535
 
gl_CONST_EYE :: GLenum
gl_CONST_EYE = 34533