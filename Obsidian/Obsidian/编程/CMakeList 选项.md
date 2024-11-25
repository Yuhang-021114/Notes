
```
set(CMAKE_BUILD_TYPE "Release")

#Debug：启用调试信息，并关闭优化，以便于调试。
#Release：启用优化，并关闭调试信息，以生成高效的可执行文件。
#RelWithDebInfo：启用优化，同时保留调试信息。
#MinSizeRel：启用优化，以最小化生成的可执行文件的大小。
```

```
add_definitions(-D HAVE_TBB)
# 相当于使用"#define HAVE_TBB"
```

```
add_definitions(-w)
# -w 是一个常见的编译器选项，适用于 GCC 和 Clang 编译器，用于禁用所有警告消息。
```

```
find_package(package REQUIRED)
更明确地表示 OpenMP 是必需的，并且在找不到 OpenMP 时会立即报错
find_package(package)
```

```
# 启用自动处理 Qt 的 UIC、MOC 和 RCC 文件
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
```

```
link_directories(${PROJECT_BINARY_DIR}/lib/)
在 CMake 脚本中，`PROJECT_BINARY_DIR` 变量表示构建目录的绝对路径。例如，如果您在 build目录中运行 `cmake ..`，那么 `PROJECT_BINARY_DIR` 的值将是 `/path/to/MyProject/build`。
```

```
set(Qt5_DIR /usr/lib/x86_64-linux-gnu/cmake/Qt5/)
- `set(Qt5_DIR /usr/lib/x86_64-linux-gnu/cmake/Qt5/)` 命令将 `Qt5_DIR` 变量设置为 [Qt5]。
- `Qt5_DIR` 变量用于告诉 CMake 在哪里查找 Qt5 的 CMake 配置文件（通常是 `Qt5Config.cmake` 文件）。
```

```
`aux_source_directory(./tdt_ml ML_SRCS)` 是 CMake 中的一个命令，用于将指定目录中的所有源文件添加到一个变量中。

具体来说：

- `aux_source_directory` 是 CMake 的一个命令，用于查找指定目录中的所有源文件，并将它们添加到一个变量中。
- [tdt_ml]是指定的目录路径，表示当前目录下的 [tdt_ml] 子目录。
- `ML_SRCS` 是变量名，用于存储在 [tdt_ml] 目录中找到的所有源文件。

通过这行代码，CMake 会在 [tdt_ml]目录中查找所有源文件（通常是 `.cpp` 文件），并将它们的路径存储在 `ML_SRCS` 变量中。然后，您可以使用这个变量来添加这些源文件到目标可执行文件或库中。
```

[Focus On]
>在 CMake 中，`find_package` 命令用于查找并配置外部库和包。为了找到这些库，CMake 使用一系列的搜索路径和策略。具体来说，CMake 会通过以下几种方式来查找 `Qt5_DIR` 和其他库的路径：
>1. **环境变量**：
   - CMake 会检查环境变量 `CMAKE_PREFIX_PATH` 和 `CMAKE_MODULE_PATH`，这些变量可以包含多个路径，CMake 会在这些路径中查找包配置文件。
>   - 例如，如果设置了 `CMAKE_PREFIX_PATH` 环境变量，CMake 会在该路径下查找 `lib/cmake/Qt5` 或 `share/cmake/Qt5` 目录。
>2. **默认安装路径**：
   - CMake 会在一些常见的默认安装路径中查找包配置文件。例如，Linux 系统上的 cmake、`/usr/local/lib/cmake` 等目录.
>3. **指定路径**：
   - 您可以在 CMake 脚本中显式指定包配置文件的路径。例如，`set(Qt5_DIR /usr/lib/x86_64-linux-gnu/cmake/Qt5/)` 命令告诉 CMake 在 Qt5目录中查找 Qt5 的配置文件.在 CMake 中，每个库或包通常都有一个特定的变量名，用于指定其配置文件的路径。例如: `Qt5_DIR` 用于指定 Qt5 的配置文件路径。`OpenCV_DIR` 用于指定 OpenCV 的配置文件路径。
>4. **包配置文件**：
   - CMake 查找的包配置文件通常是 `Qt5Config.cmake` 或 `qt5-config.cmake`。这些文件包含了如何找到和使用 Qt5 库的信息。


```
`add_subdirectory(tdt_ml)` 是 CMake 中的一个命令，用于将指定的子目录添加到构建过程中。这个命令会使 CMake 进入指定的子目录，并处理该目录中的 [CMakeLists.txt](vscode-file://vscode-app/usr/share/code/resources/app/out/vs/code/electron-sandbox/workbench/workbench.html) 文件。

具体来说：

- [tdt_ml](vscode-file://vscode-app/usr/share/code/resources/app/out/vs/code/electron-sandbox/workbench/workbench.html) 是子目录的路径，表示当前项目中的一个子目录。
- `add_subdirectory(tdt_ml)` 命令告诉 CMake 进入 [tdt_ml](vscode-file://vscode-app/usr/share/code/resources/app/out/vs/code/electron-sandbox/workbench/workbench.html) 目录，并处理该目录中的 [CMakeLists.txt](vscode-file://vscode-app/usr/share/code/resources/app/out/vs/code/electron-sandbox/workbench/workbench.html) 文件。
```

```
`link_directories` 是 CMake 中的一个命令，用于指定链接器在构建过程中查找库文件的目录。通过使用 `link_directories` 命令，您可以告诉 CMake 在指定的目录中查找库文件，以便在链接阶段使用这些库
```

```
`file(WRITE /home/tdt/.config/TDT_Vision/.ShareMemory.tmp "TDTVision")` 命令会在 `/home/tdt/.config/TDT_Vision/` 目录下创建一个名为 `.ShareMemory.tmp` 的文件，并向该文件写入字符串 `"TDTVision"`。
```

```
aux_source_directory(<dir> <variable>)
- `<dir>` 是要查找源文件的目录路径。
- `<variable>` 是用于存储源文件路径的变量名。
用于将指定目录中的所有源文件添加到一个变量中。这个命令会递归地查找指定目录中的所有源文件，并将它们的路径存储在指定的变量中
```

```
- `set(ENV{LD_LIBRARY_PATH} "/opt/tdt/libhikcamera/lib64:$ENV{LD_LIBRARY_PATH}")`：
    
    - 这行代码将 [lib64](vscode-file://vscode-app/usr/share/code/resources/app/out/vs/code/electron-sandbox/workbench/workbench.html) 目录添加到环境变量 `LD_LIBRARY_PATH` 的开头。
    - `LD_LIBRARY_PATH` 是一个环境变量，用于指定动态链接库的搜索路径。在运行时，系统会在这些路径中查找动态链接库。
- `set(ENV{PATH} "/opt/tdt/libhikcamera/cmake:$ENV{PATH}")`：
    
    - 这行代码将 [cmake](vscode-file://vscode-app/usr/share/code/resources/app/out/vs/code/electron-sandbox/workbench/workbench.html) 目录添加到环境变量 `PATH` 的开头。
    - `PATH` 是一个环境变量，用于指定可执行文件的搜索路径。在运行命令时，系统会在这些路径中查找可执行文件。
```

```
- `file(WRITE /home/tdt/.config/TDT_Vision/.ShareMemory.tmp "TDTVision")` 命令用于在指定路径 `/home/tdt/.config/TDT_Vision/.ShareMemory.tmp` 创建一个文件，并向该文件写入字符串 `"TDTVision"`。
1. **WRITE**：
    
    - 用于创建或覆盖文件，并将指定的内容写入文件中。
    - 语法：`file(WRITE <filename> <content>)`
    - 示例：`file(WRITE /path/to/file.txt "Hello, World!")`
2. **APPEND**：
    
    - 用于向文件末尾追加内容。如果文件不存在，则创建文件。
    - 语法：`file(APPEND <filename> <content>)`
    - 示例：`file(APPEND /path/to/file.txt "Additional content")`
3. **READ**：
    
    - 用于读取文件内容，并将其存储在变量中。
    - 语法：`file(READ <filename> <variable>)`
    - 示例：`file(READ /path/to/file.txt file_content)`
4. **GLOB**：
    
    - 用于查找与指定模式匹配的文件，并将其列表存储在变量中。
    - 语法：`file(GLOB <variable> <globbing expressions>...)`
    - 示例：`file(GLOB source_files "*.cpp" "*.h")`
5. **GLOB_RECURSE**：
    
    - 用于递归查找与指定模式匹配的文件，并将其列表存储在变量中。
    - 语法：`file(GLOB_RECURSE <variable> <globbing expressions>...)`
    - 示例：`file(GLOB_RECURSE source_files "*.cpp" "*.h")`
6. **MAKE_DIRECTORY**：
    
    - 用于创建目录及其父目录（如果不存在）。
    - 语法：`file(MAKE_DIRECTORY <directory>)`
    - 示例：`file(MAKE_DIRECTORY /path/to/directory)`
7. **REMOVE**：
    
    - 用于删除指定的文件。
    - 语法：`file(REMOVE <file1> <file2> ...)`
    - 示例：`file(REMOVE /path/to/file.txt)`
8. **REMOVE_RECURSE**：
    
    - 用于递归删除指定的目录及其内容。
    - 语法：`file(REMOVE_RECURSE <directory1> <directory2> ...)`
    - 示例：`file(REMOVE_RECURSE /path/to/directory)`
9. **RENAME**：
    
    - 用于重命名文件或目录。
    - 语法：`file(RENAME <oldname> <newname>)`
    - 示例：`file(RENAME /path/to/oldname /path/to/newname)`
10. **COPY**：
    
    - 用于复制文件或目录。
    - 语法：`file(COPY <source> DESTINATION <destination> [FILES_MATCHING <pattern>])`
    - 示例：`file(COPY /path/to/source DESTINATION /path/to/destination)`
11. **INSTALL**：
    
    - 用于安装文件或目录。
    - 语法：`file(INSTALL DESTINATION <destination> TYPE <type> FILES <file1> <file2> ...)`
    - 示例：`file(INSTALL DESTINATION /path/to/install TYPE FILE FILES /path/to/file1 /path/to/file2)`
```

```
add_executable(

TDTVision_RM2024

  

main.cpp

${BUFF_DETECTOR_SRCS}

${IMM_DETECTOR_SRCS}

${ROBOT_DETECTOR_SRCS}

${ML_SRCS}

${USART_SRCS}

${DECISION_DETECTOR_SRCS}

${DEBUG_SRCS}

${LOG_SRCS}

${COMMUNICATION_SRCS}

${CONFIG_SRCS}

${MAIN_PROC_SRCS}

)
`add_executable` 是一个 CMake 命令，用于定义一个可执行文件。它接受两个参数：第一个参数是可执行文件的名称，第二个参数是源文件列表。

在这段代码中，`TDTVision_RM2024` 是可执行文件的名称。接下来的多个行列出了构建这个可执行文件所需的源文件。这些源文件包括：

- [main.cpp](vscode-file://vscode-app/usr/share/code/resources/app/out/vs/code/electron-sandbox/workbench/workbench.html)：通常是程序的入口点。
- `${BUFF_DETECTOR_SRCS}`、`${IMM_DETECTOR_SRCS}`、`${ROBOT_DETECTOR_SRCS}`、`${ML_SRCS}`、`${USART_SRCS}`、`${DECISION_DETECTOR_SRCS}`、`${DEBUG_SRCS}`、`${LOG_SRCS}`、`${COMMUNICATION_SRCS}`、`${CONFIG_SRCS}`、`${MAIN_PROC_SRCS}`：这些是变量，通常在 [CMakeLists.txt](vscode-file://vscode-app/usr/share/code/resources/app/out/vs/code/electron-sandbox/workbench/workbench.html) 文件的其他地方定义，包含了各自模块的源文件列表。

通过将这些源文件添加到 `add_executable` 命令中，CMake 将会生成一个名为 `TDTVision_RM2024` 的可执行文件，并将这些源文件编译并链接在一起。
```

```

target_link_libraries(

TDTVision_RM2024

  

PUBLIC

  

# ${PROJECT_SOURCE_DIR}/tdt_lib/libyolodetectorNew.a

# ${PROJECT_SOURCE_DIR}/tdt_lib/libbuffyolodetector.a

# ${PROJECT_SOURCE_DIR}/tdt_lib/libdisturbbuffyolodetector.a

${OpenCV_LIBS}

${TDT_LOG_LIBS}

# ${InferenceEngine_LIBRARIES}

# ${InferenceEngine_LIBRARIES}

openvino::runtime

${NGRAPH_LIBRARIES}

OpenMP::OpenMP_CXX

tdtcommon

tdtcamera

${libhikcamera_LIBRARY}

tdtdebug

# mxnet

# tdtusart

pthread

#lcms2

PRIVATE Qt5::Widgets Qt5::Core Qt5::Charts

-lpthread -lm

${MKL_LIBRARY}

fmt

)
在这段代码中，`TDTVision_RM2024` 是目标的名称。接下来的多个行列出了链接该目标所需的库。这些库包括：

- `PUBLIC`：表示这些库将公开给依赖于 `TDTVision_RM2024` 的其他目标。
- `${OpenCV_LIBS}`：OpenCV 库。
- `${TDT_LOG_LIBS}`：TDT 日志库。
- `openvino::runtime`：OpenVINO 运行时库。
- `${NGRAPH_LIBRARIES}`：nGraph 库。
- `OpenMP::OpenMP_CXX`：OpenMP C++ 库。
- `tdtcommon`、`tdtcamera`、`tdtdebug`：项目中的其他库。
- `${libhikcamera_LIBRARY}`：Hikvision 相机库。
- `pthread`：POSIX 线程库。
- `Qt5::Widgets`、`Qt5::Core`、`Qt5::Charts`：Qt5 库。
- `-lpthread`、`-lm`：手动指定的线程库和数学库。
- `${MKL_LIBRARY}`：Intel MKL 库。
- `fmt`：fmt 库，用于格式化输出
关键字 `PUBLIC`、`PRIVATE` 和 `INTERFACE` 用于控制库的可见性和传播性。

- `PUBLIC`：表示库不仅对当前目标可见，而且对依赖于当前目标的其他目标也可见。
- `PRIVATE`：表示库仅对当前目标可见，不会传播到依赖于当前目标的其他目标。
- `INTERFACE`：表示库不会直接链接到当前目标，但会传播到依赖于当前目标的其他目标。
```

```
install(

TARGETS TDTVision_RM2024 DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/install/${CMAKE_INSTALL_BINDIR}

)
- `TARGETS TDTVision_RM2024` 指定了要安装的目标，这里是名为 `TDTVision_RM2024` 的可执行文件。这个目标是在之前的 `add_executable` 命令中定义的。
- `DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/install/${CMAKE_INSTALL_BINDIR}` 指定了安装目标的目的地目录。`${CMAKE_CURRENT_BINARY_DIR}` 是一个 CMake 变量，表示当前构建目录。`${CMAKE_INSTALL_BINDIR}` 是另一个 CMake 变量，通常表示二进制文件的安装目录（例如 `bin`）。

结合起来，这段代码的意思是：将生成的 `TDTVision_RM2024` 可执行文件安装到当前构建目录下的 `install` 子目录中的二进制文件目录。

例如，如果当前构建目录是 `/home/user/project/build`，那么可执行文件将被安装到 `/home/user/project/build/install/bin` 目录中。

通过定义安装规则，您可以使用 `cmake --install` 命令或 `make install` 命令来自动将生成的文件复制到指定的安装目录。这对于分发和部署项目非常有用，因为它简化了安装过程，并确保所有生成的文件都被正确地放置在预期的位置。

```

```

```