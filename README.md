# TDMA - Tridiagonal Matrix Algorithm (Thomas Algorithm)

## Overview

This repository contains a MATLAB implementation of the **Tridiagonal Matrix Algorithm (TDMA)**, also known as the **Thomas Algorithm**, for solving systems of linear equations of the form **AX = B** where **A** is a tridiagonal matrix.

TDMA is a computationally efficient algorithm that reduces the complexity of solving such systems, making it especially useful in engineering and scientific computations where tridiagonal matrices arise naturally, such as in:

- **Heat conduction problems**  
- **Fluid flow simulations**  
- **Finite Difference Method (FDM)**  
- **Finite Volume Method (FVM)**

## Files

- `TDMA.m`: The main MATLAB function implementing the Thomas Algorithm. It accepts a tridiagonal matrix **A** and a constants vector **B**, and returns the solution vector **X**.

## How It Works

### Methodology
The algorithm consists of two main steps:
1. **Forward Elimination**: Eliminates the sub-diagonal entries and modifies the diagonal and constant vectors.
2. **Backward Substitution**: Solves for the unknowns starting from the last equation and moving upwards.

### Function Signature
```matlab
X = TDMA(A, B)
```
- **A**: Input tridiagonal coefficient matrix (square matrix).
- **B**: Input column vector of constants.
- **X**: Output solution vector.

## Example Usage

```matlab
% Example tridiagonal matrix A and vector B
A = [4, 1, 0;
     1, 4, 1;
     0, 1, 4];

B = [5; 6; 5];

% Solve using TDMA
X = TDMA(A, B);

% Display result
disp(X);
```

### Prerequisites
- **MATLAB** (preferably R2018b or later)
- Basic understanding of numerical methods and matrix operations.

## Getting Started

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/iammohith/TDMA-Tridiagonal-Matrix-Algorithm-in-MATLAB.git
   ```

2. **Navigate to the project directory:**
   ```bash
   cd TDMA-Tridiagonal-Matrix-Algorithm-in-MATLAB
   ```

3. **Open the `TDMA.m` script in MATLAB:**
   - Launch MATLAB and navigate to the project folder.
   - Open `TDMA.m` to run the algorithm or modify it as needed.

## Acknowledgements
I would like to acknowledge the following sources for their contributions to this project:
- **MATLAB Documentation** for providing comprehensive resources on matrix operations and numerical methods.
- **Numerical Methods for Engineers** by *Steven C. Chapra* and *Raymond P. Canale* for foundational concepts and problem-solving techniques in numerical methods, including algorithms for solving tridiagonal systems.

## References
1. **MATLAB Documentation**  
   [https://www.mathworks.com/help/matlab/](https://www.mathworks.com/help/matlab/)
   
2. **Numerical Methods for Engineers, 8th Edition**  
   *Steven C. Chapra, Raymond P. Canale*  
   ISBN: 978-0073397924  
   This textbook provides in-depth coverage of numerical algorithms, including the Thomas Algorithm (TDMA), used in solving engineering problems.

## Contributing

Contributions are welcome! Feel free to fork this repository, make improvements, and submit a pull request.

## License

This project is open source and available under the [MIT License](LICENSE).
