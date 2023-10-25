# GM
[![](https://img.shields.io/badge/doi-10.4208%2Fijnam2023-1033)](https://doi.org/10.4208/ijnam2023-1033)

> [!NOTE]
> The MATLAB codes for the research paper: Can Wang, Weihua Deng, and Xiangong Tang. ["A sharp $\alpha$-robust $L1$ scheme on grades meshes for two-dimensional time tempered fractional Fokker-Planck equation."](https://doi.org/10.4208/ijnam2023-1033) Int. J. Numer. Anal. Mod. **20**, 739-771 (2023).

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

### [`graded_solver.m`](./graded_solver.m) 
`[t, x, y, U] = graded_solver(T, a, b, c, d, alpha, sigma, r, N1, N2, N, u0, f)`

The solver of discussed problem.
#### Inputs
- `T` : the maximum time
- `a`, `b`, `c`, `d` : the endpoints of two intervals that make up the rectangular area, that is, $\Omega=(a,b)\times (c,d)$
- `alpha` : the order of time fractional derivative
- `sigma` : the tempered parameter in the time fractional derivative
- `r` : the parameter in graded mesh
- `N1` : the number of uniformly discretized sub-intervals in spatial $x$ direction
- `N2` : the number of uniformly discretized sub-intervals in spatial $y$ direction
- `N` : the number of time stepping used in the graded mesh
- `u0` : the initial values (a function)
- `f` : the linear source term (a function)

#### Outputs
- `t` : the nodes of graded mesh
- `x`, `y` : the nodes of spatial discretization
- `U` : the numerical solution

### [`l1.m`](./l1.m) & [`l1exp.m`](./l1exp.m)
`m = l1(t, tau, alpha, sigma, n)`, `d = l1exp(t, tau, alpha, sigma, n)`

The auxiliary functions to compute the coefficients in the $L1$ sheme of tempered time fractional derivative on graded mesh.

### [`test.m`](./test.m)
The numerical experiments taken in the paper.

## Citation
```biblatex
@article{wang2023tempered
title = {A sharp $\alpha$-robust $L1$ scheme on grades meshes for two-dimensional time tempered fractional Fokker-Planck equation},
author = {Wang, Can and Deng, Weihua and Tang, Xiangong},
journal = {Int. J. Numer. Anal. Mod.},
volume = {20},
number = {6},
pages = {739--771},
year = {2023}
}
```