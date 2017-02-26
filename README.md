# Geometric Structures
Julia package for experimenting with Julia development process and Computational Geometry.

## Preparations

### Tools
#### Julia
This development project is based on julia 0.5. See http://julialang.org/downloads for download and installation of julia.
#### Juno
Juno is a convenient IDE for Julia developments. See http://junolab.org/ for information and installation of Juno.
#### Git
Git is generally used as a Source Code Version Tool for Julia projects.
#### Jupyter
### Package creation
You need to install package PkgDev
***
**julia> Pkg.add("PkgDev")**
***
You can now create the package locally through
***
**julia> using PkgDev**

**julia> PkgDev.generate("GeometricStructures", "MIT")**

**julia> PgkDev.register("GeometricStructures", "[repository]")**
***
The package is generated locally in directory ~julia/v0.5/GeometricStructures.
