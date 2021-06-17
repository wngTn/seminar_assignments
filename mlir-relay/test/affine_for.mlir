#set = affine_set<(d0, d1): (d0 - d1 >= 0)>
func @main() {
    
    %N = constant 10 : index

    affine.for %i = 0 to %N step 1 {
        affine.for %j = 0 to %N {   // implicitly steps by 1
            affine.if #set(%i, %j) {
                %0 = "relay.constant"() {value = dense<1.0> : tensor<1x1xf64>} : () -> tensor<1x1xf64>
                "relay.print"(%0) : (tensor<1x1xf64>) -> ()
            } else {
                %0 = "relay.constant"() {value = dense<2.0> : tensor<1x1xf64>} : () -> tensor<1x1xf64>
                "relay.print"(%0) : (tensor<1x1xf64>) -> ()
            }
        }
    }

    return
}