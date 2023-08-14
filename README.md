# godot-rust-scratchpad
This repo contains my experiments using [`godot-rust`](https://godot-rust.github.io/)  


It won't contain a finshed product, rather this repo is just a place for me to play around with with Godot and Rust. I named it `scratchpad`, but another good name would have been `godot-rust-sandbox`.

It will be a useful example project for future projects. I started this project on 8/13/2023, and I'm sure
I'll learn some things.

## Layout of the repository
I'm new to this, though I'm 99% sure to get this working, two repositories are needed, one for the Godot project and another for the `godot-rust` code that the Godot project uses.


The best way I could think to organize this repository is with one submodule located
in the `gdext` folder.
* This makes it easy to point to the correct libraries in the `gdext/project.gdextension` file, since
the paths are relative to `res` in Godot.

 I named the folder `gdext` because ...

`gdext` = "the Rust binding for GDExtension (Godot 4)"  

The `godot-rust-scratchpad-lib` submodule contains the Rust code that is built into a library which Godot links with.

The Rust code in `godot-rust-scratchpad-lib` makes use of `gdext`, and that is how it interfaces with Godot.


## How to use
1) Clone the repository and submodule. 
1) Navigate to the submodule in `gdext/godot-rust-scratchpad-lib/` and run `cargo build`
1) Open Godot, load in the project file and things should work.