func @main() {
    
    %0 = "relay.constant"() {value = dense<[[1.0, 2.0, 3.0], [4.0, 5.0, 6.0], [7.0, 8.0, 9.0]]> : tensor<3x3xf64>} : () -> tensor<3x3xf64>
    "relay.print"(%0) : (tensor<3x3xf64>) -> ()
    
    return 
}