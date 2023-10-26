# GM
[![](https://img.shields.io/badge/doi-10.4208%2Fijnam2023-1033)](https://doi.org/10.4208/ijnam2023-1033)

> [!NOTE]
> The MATLAB codes for the research paper: Can Wang, Weihua Deng, and Xiangong Tang. ["A sharp $\alpha$-robust $L1$ scheme on graded meshes for two-dimensional time tempered fractional Fokker-Planck equation."](https://doi.org/10.4208/ijnam2023-1033) Int. J. Numer. Anal. Mod. **20**, 739-771 (2023).

> [!WARNING]  
> The publication information mentioned here such as the doi, may differ from the officially published version. Once this happens, we will correct it immediately.

## Introduction
The paper mentioned above mainly discusses the numerical solution for the two-dimensional time fractional Fokker-Planck equation (see below) with the temperd fractional derivative of order $\alpha$, where a modified $L1$ scheme on graded meshes is employed to temporal discretization, and in the spatial direction, the five-point difference scheme is used. 

```math
\partial_t^{\alpha, \sigma}u(x,y,t)=\Delta u(x,y,t)+f(x,y,t),\qquad (x,y,t)\in \Omega\times (0, T],
```
with homogeneous Dirichlet boundary condition and the initial values being $u_0(x,y)$.

## Codes

```
.
├── README.md
├── graded_solver.m
├── l1.m
├── l1exp.m
└── test.m
```



## Citation
```biblatex
@article{wang2023tempered
title = {A sharp $\alpha$-robust $L1$ scheme on graded meshes for two-dimensional time tempered fractional Fokker-Planck equation},
author = {Wang, Can and Deng, Weihua and Tang, Xiangong},
journal = {Int. J. Numer. Anal. Mod.},
volume = {20},
number = {6},
pages = {739--771},
year = {2023}
}
```
