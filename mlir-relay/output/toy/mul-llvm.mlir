module  {
  llvm.func @free(!llvm.ptr<i8>)
  llvm.mlir.global internal constant @nl("\0A\00")
  llvm.mlir.global internal constant @frmt_spec("%f \00")
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main() {
    %0 = llvm.mlir.constant(6.000000e+00 : f64) : f64
    %1 = llvm.mlir.constant(5.000000e+00 : f64) : f64
    %2 = llvm.mlir.constant(4.000000e+00 : f64) : f64
    %3 = llvm.mlir.constant(3.000000e+00 : f64) : f64
    %4 = llvm.mlir.constant(2.000000e+00 : f64) : f64
    %5 = llvm.mlir.constant(1.000000e+00 : f64) : f64
    %6 = llvm.mlir.constant(3 : index) : i64
    %7 = llvm.mlir.constant(2 : index) : i64
    %8 = llvm.mlir.constant(1 : index) : i64
    %9 = llvm.mlir.constant(6 : index) : i64
    %10 = llvm.mlir.null : !llvm.ptr<f64>
    %11 = llvm.getelementptr %10[%9] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %12 = llvm.ptrtoint %11 : !llvm.ptr<f64> to i64
    %13 = llvm.call @malloc(%12) : (i64) -> !llvm.ptr<i8>
    %14 = llvm.bitcast %13 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %15 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %16 = llvm.insertvalue %14, %15[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %14, %16[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.insertvalue %18, %17[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %20 = llvm.insertvalue %6, %19[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %21 = llvm.insertvalue %7, %20[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %22 = llvm.insertvalue %7, %21[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %23 = llvm.insertvalue %8, %22[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %24 = llvm.mlir.constant(3 : index) : i64
    %25 = llvm.mlir.constant(2 : index) : i64
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.mlir.constant(6 : index) : i64
    %28 = llvm.mlir.null : !llvm.ptr<f64>
    %29 = llvm.getelementptr %28[%27] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %30 = llvm.ptrtoint %29 : !llvm.ptr<f64> to i64
    %31 = llvm.call @malloc(%30) : (i64) -> !llvm.ptr<i8>
    %32 = llvm.bitcast %31 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %33 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %34 = llvm.insertvalue %32, %33[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %38 = llvm.insertvalue %24, %37[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %39 = llvm.insertvalue %25, %38[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %40 = llvm.insertvalue %25, %39[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %41 = llvm.insertvalue %26, %40[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %42 = llvm.mlir.constant(2 : index) : i64
    %43 = llvm.mlir.constant(3 : index) : i64
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.mlir.constant(6 : index) : i64
    %46 = llvm.mlir.null : !llvm.ptr<f64>
    %47 = llvm.getelementptr %46[%45] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %48 = llvm.ptrtoint %47 : !llvm.ptr<f64> to i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %51 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %52 = llvm.insertvalue %50, %51[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %53 = llvm.insertvalue %50, %52[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.insertvalue %54, %53[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %56 = llvm.insertvalue %42, %55[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %57 = llvm.insertvalue %43, %56[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %58 = llvm.insertvalue %43, %57[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %59 = llvm.insertvalue %44, %58[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.mlir.constant(0 : index) : i64
    %62 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %63 = llvm.mlir.constant(3 : index) : i64
    %64 = llvm.mul %60, %63  : i64
    %65 = llvm.add %64, %61  : i64
    %66 = llvm.getelementptr %62[%65] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %5, %66 : !llvm.ptr<f64>
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %70 = llvm.mlir.constant(3 : index) : i64
    %71 = llvm.mul %67, %70  : i64
    %72 = llvm.add %71, %68  : i64
    %73 = llvm.getelementptr %69[%72] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %4, %73 : !llvm.ptr<f64>
    %74 = llvm.mlir.constant(0 : index) : i64
    %75 = llvm.mlir.constant(2 : index) : i64
    %76 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %77 = llvm.mlir.constant(3 : index) : i64
    %78 = llvm.mul %74, %77  : i64
    %79 = llvm.add %78, %75  : i64
    %80 = llvm.getelementptr %76[%79] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %3, %80 : !llvm.ptr<f64>
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %84 = llvm.mlir.constant(3 : index) : i64
    %85 = llvm.mul %81, %84  : i64
    %86 = llvm.add %85, %82  : i64
    %87 = llvm.getelementptr %83[%86] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %2, %87 : !llvm.ptr<f64>
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %91 = llvm.mlir.constant(3 : index) : i64
    %92 = llvm.mul %88, %91  : i64
    %93 = llvm.add %92, %89  : i64
    %94 = llvm.getelementptr %90[%93] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %1, %94 : !llvm.ptr<f64>
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(2 : index) : i64
    %97 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %98 = llvm.mlir.constant(3 : index) : i64
    %99 = llvm.mul %95, %98  : i64
    %100 = llvm.add %99, %96  : i64
    %101 = llvm.getelementptr %97[%100] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %0, %101 : !llvm.ptr<f64>
    %102 = llvm.mlir.constant(0 : index) : i64
    %103 = llvm.mlir.constant(3 : index) : i64
    %104 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%102 : i64)
  ^bb1(%105: i64):  // 2 preds: ^bb0, ^bb5
    %106 = llvm.icmp "slt" %105, %103 : i64
    llvm.cond_br %106, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %107 = llvm.mlir.constant(0 : index) : i64
    %108 = llvm.mlir.constant(2 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%107 : i64)
  ^bb3(%110: i64):  // 2 preds: ^bb2, ^bb4
    %111 = llvm.icmp "slt" %110, %108 : i64
    llvm.cond_br %111, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %112 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %113 = llvm.mlir.constant(3 : index) : i64
    %114 = llvm.mul %110, %113  : i64
    %115 = llvm.add %114, %105  : i64
    %116 = llvm.getelementptr %112[%115] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %117 = llvm.load %116 : !llvm.ptr<f64>
    %118 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mul %105, %119  : i64
    %121 = llvm.add %120, %110  : i64
    %122 = llvm.getelementptr %118[%121] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %117, %122 : !llvm.ptr<f64>
    %123 = llvm.add %110, %109  : i64
    llvm.br ^bb3(%123 : i64)
  ^bb5:  // pred: ^bb3
    %124 = llvm.add %105, %104  : i64
    llvm.br ^bb1(%124 : i64)
  ^bb6:  // pred: ^bb1
    %125 = llvm.mlir.constant(0 : index) : i64
    %126 = llvm.mlir.constant(3 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%125 : i64)
  ^bb7(%128: i64):  // 2 preds: ^bb6, ^bb11
    %129 = llvm.icmp "slt" %128, %126 : i64
    llvm.cond_br %129, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %130 = llvm.mlir.constant(0 : index) : i64
    %131 = llvm.mlir.constant(2 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%130 : i64)
  ^bb9(%133: i64):  // 2 preds: ^bb8, ^bb10
    %134 = llvm.icmp "slt" %133, %131 : i64
    llvm.cond_br %134, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %135 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %136 = llvm.mlir.constant(2 : index) : i64
    %137 = llvm.mul %128, %136  : i64
    %138 = llvm.add %137, %133  : i64
    %139 = llvm.getelementptr %135[%138] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %140 = llvm.load %139 : !llvm.ptr<f64>
    %141 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %142 = llvm.mlir.constant(2 : index) : i64
    %143 = llvm.mul %128, %142  : i64
    %144 = llvm.add %143, %133  : i64
    %145 = llvm.getelementptr %141[%144] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %146 = llvm.load %145 : !llvm.ptr<f64>
    %147 = llvm.fmul %140, %146  : f64
    %148 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %149 = llvm.mlir.constant(2 : index) : i64
    %150 = llvm.mul %128, %149  : i64
    %151 = llvm.add %150, %133  : i64
    %152 = llvm.getelementptr %148[%151] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %147, %152 : !llvm.ptr<f64>
    %153 = llvm.add %133, %132  : i64
    llvm.br ^bb9(%153 : i64)
  ^bb11:  // pred: ^bb9
    %154 = llvm.add %128, %127  : i64
    llvm.br ^bb7(%154 : i64)
  ^bb12:  // pred: ^bb7
    %155 = llvm.mlir.addressof @frmt_spec : !llvm.ptr<array<4 x i8>>
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.getelementptr %155[%156, %156] : (!llvm.ptr<array<4 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %158 = llvm.mlir.addressof @nl : !llvm.ptr<array<2 x i8>>
    %159 = llvm.mlir.constant(0 : index) : i64
    %160 = llvm.getelementptr %158[%159, %159] : (!llvm.ptr<array<2 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.mlir.constant(3 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%161 : i64)
  ^bb13(%164: i64):  // 2 preds: ^bb12, ^bb17
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.mlir.constant(2 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%166 : i64)
  ^bb15(%169: i64):  // 2 preds: ^bb14, ^bb16
    %170 = llvm.icmp "slt" %169, %167 : i64
    llvm.cond_br %170, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %171 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %172 = llvm.mlir.constant(2 : index) : i64
    %173 = llvm.mul %164, %172  : i64
    %174 = llvm.add %173, %169  : i64
    %175 = llvm.getelementptr %171[%174] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %176 = llvm.load %175 : !llvm.ptr<f64>
    %177 = llvm.call @printf(%157, %176) : (!llvm.ptr<i8>, f64) -> i32
    %178 = llvm.add %169, %168  : i64
    llvm.br ^bb15(%178 : i64)
  ^bb17:  // pred: ^bb15
    %179 = llvm.call @printf(%160) : (!llvm.ptr<i8>) -> i32
    %180 = llvm.add %164, %163  : i64
    llvm.br ^bb13(%180 : i64)
  ^bb18:  // pred: ^bb13
    %181 = llvm.extractvalue %59[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %182 = llvm.bitcast %181 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @free(%182) : (!llvm.ptr<i8>) -> ()
    %183 = llvm.extractvalue %41[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %184 = llvm.bitcast %183 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @free(%184) : (!llvm.ptr<i8>) -> ()
    %185 = llvm.extractvalue %23[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %186 = llvm.bitcast %185 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @free(%186) : (!llvm.ptr<i8>) -> ()
    llvm.return
  }
}
