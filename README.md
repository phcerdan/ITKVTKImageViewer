Tested only outside the ITK source tree.

## Build

```bash
mkdir ITKVTKImageViewer; cd ITKVTKImageViewer
git clone https://github.com/phcerdan/ITKVTKImageViewer src
mkdir build; cd build
cmake -DVTK_DIR=/path/to/VTK-config.cmake -DITK_DIR=/path/to/ITK-config.cmake ../src
make -j5
```

Or with `ninja`:

```bash
cmake -GNinja -DVTK_DIR=/path/to/VTK-config.cmake -DITK_DIR=/path/to/ITK-config.cmake ../src
ninja
```

For this to work ITK (the cpp library) needs the module ITKVTKGlue enabled.

## Usage

```bash
./app/runViewImage /path/to/image
```

Or optionally with a title for the window:

```bash
./app/runViewImage /path/to/image "Tittle"
```
