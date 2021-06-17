#ifndef RELAY_DIALECT
#define RELAY_DIALECT

include "mlir/IR/OpBase.td"

//===----------------------------------------------------------------------===//
// Relay dialect definition.
//===----------------------------------------------------------------------===//

def Relay_Dialect : Dialect {
    let name = "relay";
    let summary = "A relay out-of-tree MLIR dialect.";
    let description = [{
        This dialect is minimal example to implement a hello-world kind of sample code
        for MLIR.
    }];
    let cppNamespace = "::relay";
}

//===----------------------------------------------------------------------===//
// Base relay operation definition.
//===----------------------------------------------------------------------===//

class Relay_Op<string mnemonic, list<OpTrait> traits = []> :
        Op<Relay_Dialect, mnemonic, traits>;

#endif // RELAY_DIALECT
