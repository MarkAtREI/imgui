



include "SVEngine/vendor/GLFW"
project "ImGui"
    kind "StaticLib"
    language "C++"
    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")


    IncludeGLFWDir = {}
    IncludeGLFWDir["GLFW"] = "SVEngine/vendor/GLFW/include"
	files
	{
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imgui_tables.cpp",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp",
        "backends/imgui_impl_opengl3.cpp",
        "backends/imgui_impl_opengl3.h",
        "backends/imgui_impl_glfw.cpp",
        "backends/imgui_impl_glfw.h"
    }
    includedirs {
		"%{IncludeGLFWDir.GLFW}"
	}
    links{
        "GLFW"
    }
    
	filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"
        
    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
