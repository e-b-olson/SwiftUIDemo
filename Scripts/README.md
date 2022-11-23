# SwiftUIDemo Scripts
  
The python scripts in this directory were used to generate the basic framework code for SwiftUIDemo app.  Automating the code generation greatly improved the speed and accuracy of development.
  
## How the Scripts are Used
  
These scripts were used just once at the beginning of the project to generate the basic code for the:
* [view type enum](https://github.com/e-b-olson/SwiftUIDemo/blob/main/SwiftUIDemo/ContentViewModel.swift#L12)
* [view builder](https://github.com/e-b-olson/SwiftUIDemo/blob/main/SwiftUIDemo/Views/DemoView.swift#L18)
* [demo views](https://github.com/e-b-olson/SwiftUIDemo/tree/main/SwiftUIDemo/Views)
  
These scripts will not be needed again, unless there is a significant update to the [list of SwiftUI views](https://developer.apple.com/documentation/swiftui/view#conforming-types) from Apple.
  
### Details

Because these scripts were only intended for a one-time use, most file paths are hardcoded in the scripts.  The main file is:
  
> [view_list.txt](https://github.com/e-b-olson/SwiftUIDemo/blob/main/Scripts/view_list.txt)
  
This is a list of all the view types, one type per line.  This list was taken directly from Apple's documentation [here](https://developer.apple.com/documentation/swiftui/view#conforming-types).
  
#### [generate_view_enum.py](https://github.com/e-b-olson/SwiftUIDemo/blob/main/Scripts/generate_view_enum.py)
  
The `generate_view_enum.py` script will generate a text file ([views_enum.txt](https://github.com/e-b-olson/SwiftUIDemo/blob/main/Scripts/products/views_enum.txt)) with the swift code for an enum with cases for each view type from the view_list.txt file.
The output file is found in the products directory.  This file is not used directly, but the contents are copy/pasted into the [ContentViewModel](https://github.com/e-b-olson/SwiftUIDemo/blob/main/SwiftUIDemo/ContentViewModel.swift#L12).
  
#### [generate_view_builder.py](https://github.com/e-b-olson/SwiftUIDemo/blob/main/Scripts/generate_view_builder.py)
  
The `generate_view_builder.py` script will generate a text file ([views_builder.txt](https://github.com/e-b-olson/SwiftUIDemo/blob/main/Scripts/products/view_builder.txt)) with the swift code for a @ViewBuilder with cases for each view type from the view_list.txt file.
The output file is found in the products directory.  This file is not used directly, but the contents are copy/pasted into the main [DemoView](https://github.com/e-b-olson/SwiftUIDemo/blob/main/SwiftUIDemo/Views/DemoView.swift#L18).
  
#### [generate_view_templates.py](https://github.com/e-b-olson/SwiftUIDemo/blob/main/Scripts/generate_view_templates.py)
  
The `generate_view_templates.py` script will generate placeholder views for each view type from the view_list.txt file.  These files are `.swift` source files which *are* used directly in the project.
The generated files can be found in the [Views directory](https://github.com/e-b-olson/SwiftUIDemo/tree/main/SwiftUIDemo/Views).
  
> **Note**
>  
> The `templates` directory contains basic template files used by the generation scripts.
