# Bayesian Inference & Decision Theory Workflow

This project implements Holt's linear model to analyse the global mean sea level, a MCMC algorithm to explore a variation of Rosenbrock's 2D distribution and solves a Bayesian decision theory problem. The write-up can be found in the `hand-in.pdf` file. 

This project is the result of the final project for the Bayesian Modelling course by Prof. Michael Höhle at the University of Greifswald in the summer semester of 2026. These solutions are uploaded with the permission of Prof. Michael Höhle.

> **Status:** Archived university project - cleaned up for reference

## Features
- Includes the Quarto and Stan source files that I used to complete the project

## Prerequisites

Originally written without strict pinned version numbers. 

- **R:** 4.5.3+
- **Quarto:** 1.9.38
- **Libraries:**
    - **rstan:** 2.32.7
    - **Rlgt:** 0.2-3
    - **ggplot2:** 4.0.3
    - **cmdstanr:** 0.9.0
    - **forecast:** 9.0.2
    - **cubature:** 2.1.4-1
 
## Getting Started

The data can be downloaded from https://sealevel.colorado.edu/ and should be saved as "data.txt".

The Quarto source code can be found in the `hand-in.qmd` file and can be compiled using quarto. 

The implementation for the Stan model can be found in the `Holt.stan` file. 

The project outline can be found in `project.pdf` and the final write-up is located in `hand-in.pdf`.
