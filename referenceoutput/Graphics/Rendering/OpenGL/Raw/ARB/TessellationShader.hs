module Graphics.Rendering.OpenGL.Raw.ARB.TessellationShader
       (glPatchParameteri, glPatchParameterfv,
        gl_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER,
        gl_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER, gl_TRIANGLES,
        gl_TESS_GEN_VERTEX_ORDER, gl_TESS_GEN_SPACING,
        gl_TESS_GEN_POINT_MODE, gl_TESS_GEN_MODE,
        gl_TESS_EVALUATION_SHADER, gl_TESS_CONTROL_SHADER,
        gl_TESS_CONTROL_OUTPUT_VERTICES, gl_QUADS, gl_PATCH_VERTICES,
        gl_PATCH_DEFAULT_OUTER_LEVEL, gl_PATCH_DEFAULT_INNER_LEVEL,
        gl_PATCHES, gl_MAX_TESS_PATCH_COMPONENTS, gl_MAX_TESS_GEN_LEVEL,
        gl_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS,
        gl_MAX_TESS_EVALUATION_UNIFORM_BLOCKS,
        gl_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS,
        gl_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS,
        gl_MAX_TESS_EVALUATION_INPUT_COMPONENTS,
        gl_MAX_TESS_CONTROL_UNIFORM_COMPONENTS,
        gl_MAX_TESS_CONTROL_UNIFORM_BLOCKS,
        gl_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS,
        gl_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS,
        gl_MAX_TESS_CONTROL_OUTPUT_COMPONENTS,
        gl_MAX_TESS_CONTROL_INPUT_COMPONENTS, gl_MAX_PATCH_VERTICES,
        gl_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS,
        gl_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS, gl_ISOLINES,
        gl_FRACTIONAL_ODD, gl_FRACTIONAL_EVEN, gl_EQUAL, gl_CW, gl_CCW)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core11
       (gl_TRIANGLES, gl_QUADS, gl_EQUAL, gl_CW, gl_CCW)
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core40
       (glPatchParameteri, glPatchParameterfv,
        gl_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER,
        gl_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER,
        gl_TESS_GEN_VERTEX_ORDER, gl_TESS_GEN_SPACING,
        gl_TESS_GEN_POINT_MODE, gl_TESS_GEN_MODE,
        gl_TESS_EVALUATION_SHADER, gl_TESS_CONTROL_SHADER,
        gl_TESS_CONTROL_OUTPUT_VERTICES, gl_PATCH_VERTICES,
        gl_PATCH_DEFAULT_OUTER_LEVEL, gl_PATCH_DEFAULT_INNER_LEVEL,
        gl_PATCHES, gl_MAX_TESS_PATCH_COMPONENTS, gl_MAX_TESS_GEN_LEVEL,
        gl_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS,
        gl_MAX_TESS_EVALUATION_UNIFORM_BLOCKS,
        gl_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS,
        gl_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS,
        gl_MAX_TESS_EVALUATION_INPUT_COMPONENTS,
        gl_MAX_TESS_CONTROL_UNIFORM_COMPONENTS,
        gl_MAX_TESS_CONTROL_UNIFORM_BLOCKS,
        gl_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS,
        gl_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS,
        gl_MAX_TESS_CONTROL_OUTPUT_COMPONENTS,
        gl_MAX_TESS_CONTROL_INPUT_COMPONENTS, gl_MAX_PATCH_VERTICES,
        gl_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS,
        gl_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS, gl_ISOLINES,
        gl_FRACTIONAL_ODD, gl_FRACTIONAL_EVEN)