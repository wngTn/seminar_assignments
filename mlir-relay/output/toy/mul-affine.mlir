module  {
  func @main() {
    %cst = constant 6.000000e+00 : f64
    %cst_0 = constant 5.000000e+00 : f64
    %cst_1 = constant 4.000000e+00 : f64
    %cst_2 = constant 3.000000e+00 : f64
    %cst_3 = constant 2.000000e+00 : f64
    %cst_4 = constant 1.000000e+00 : f64
    %0 = memref.alloc() : memref<3x2xf64>
    %1 = memref.alloc() : memref<3x2xf64>
    %2 = memref.alloc() : memref<2x3xf64>
    affine.store %cst_4, %2[0, 0] : memref<2x3xf64>
    affine.store %cst_3, %2[0, 1] : memref<2x3xf64>
    affine.store %cst_2, %2[0, 2] : memref<2x3xf64>
    affine.store %cst_1, %2[1, 0] : memref<2x3xf64>
    affine.store %cst_0, %2[1, 1] : memref<2x3xf64>
    affine.store %cst, %2[1, 2] : memref<2x3xf64>
    affine.for %arg0 = 0 to 3 {
      affine.for %arg1 = 0 to 2 {
        %3 = affine.load %2[%arg1, %arg0] : memref<2x3xf64>
        affine.store %3, %1[%arg0, %arg1] : memref<3x2xf64>
      }
    }
    affine.for %arg0 = 0 to 3 {
      affine.for %arg1 = 0 to 2 {
        %3 = affine.load %1[%arg0, %arg1] : memref<3x2xf64>
        %4 = affine.load %1[%arg0, %arg1] : memref<3x2xf64>
        %5 = mulf %3, %4 : f64
        affine.store %5, %0[%arg0, %arg1] : memref<3x2xf64>
      }
    }
    toy.print %0 : memref<3x2xf64>
    memref.dealloc %2 : memref<2x3xf64>
    memref.dealloc %1 : memref<3x2xf64>
    memref.dealloc %0 : memref<3x2xf64>
    return
  }
}
