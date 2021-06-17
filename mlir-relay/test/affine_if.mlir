#set = affine_set<(d0, d1)[s0]: (d0 - 10 >= 0, s0 - d0 - 9 >= 0, d1 - 10 >= 0, s0 - d1 - 9 >= 0)>
func @main() {
    
    %i = constant 20 : index
    %j = constant 20 : index
    %N = constant 50 : index

    affine.if #set(%i, %j)[%N] {
        %0 = "relay.constant"() {value = dense<1.0> : tensor<1x3xf64>} : () -> tensor<1x3xf64>
        "relay.print"(%0) : (tensor<1x3xf64>) -> ()
    } else {
        %0 = "relay.constant"() {value = dense<0.0> : tensor<1x3xf64>} : () -> tensor<1x3xf64>
        "relay.print"(%0) : (tensor<1x3xf64>) -> ()
    }

    return
}