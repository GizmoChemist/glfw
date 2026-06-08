-- If you use this premake script, you'll need to define the BIN_DIR and 
-- OBJ_DIR variables according to your personal preferences.

project "GLFW"
	kind "StaticLib"
	language "C"

	targetdir (BIN_DIR)
	objdir    (OBJ_DIR)

	files {
		"src/**.h",
		"src/**.c",
	
		"include/GLFW/glfw3.h",
		"include/GLFW/glfw3native.h",
		"src/glfw_config.h",
		"src/context.c",
		"src/init.c",
		"src/input.c",
		"src/monitor.c",
		"src/vulkan.c",
		"src/window.c"
	}
	
	filter "system:windows"
		systemversion "latest"
		staticruntime "On"

		files {
			"src/win32_init.c",
			"src/win32_joystick.c",
			"src/win32_monitor.c",
			"src/win32_time.c",
			"src/win32_thread.c",
			"src/win32_window.c",
			"src/wgl_context.c",
			"src/egl_context.c",
			"src/osmesa_context.c"
		}
		
		defines {
			"_GLFW_WIN32",
			"_CRT_SECURE_NO_WARNINGS"
		}
