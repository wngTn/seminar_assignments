add_mlir_dialect_library(MLIRRelay
		RelayDialect.cpp
		RelayOps.cpp
		LowerToAffine.cpp
		LowerToLLVM.cpp
		DeadFunctionEliminationPass.cpp

        ADDITIONAL_HEADER_DIRS
        ${PROJECT_SOURCE_DIR}/include/Relay

        DEPENDS
        MLIRRelayOpsIncGen

	LINK_LIBS PUBLIC
	MLIRIR
	)
