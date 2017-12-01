Tested only outside the ITK source tree.

## Build

```bash
mkdir ITKVTKImageViewer; cd ITKVTKImageViewer
git clone https://github.com/phcerdan/ITKVTKImageViewer src
mkdir build; cd build
cmake -DVTK_DIR=/path/to/VTK_CONFIG_FOLDER -DITK_DIR=/path/to/ITK_CONFIG_FOLDER ../src
make -j5
```

Or with `ninja`:

```bash
cmake -GNinja -DVTK_DIR=/path/to/VTK_CONFIG_FOLDER -DITK_DIR=/path/to/ITK_CONFIG_FOLDER ../src
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

To run the examples:
```bash
./app/runViewImage ../src/examples/otsu.tif title_for_otsu &
./app/runViewImage ../src/examples/checker2D.jpg "My 2D image" &
```
