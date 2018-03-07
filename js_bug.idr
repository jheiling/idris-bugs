--Badly formed foreign function call
bug : a -> {auto fty : FTy FFI_JS [] (a -> JS_IO ())} -> JS_IO ()
bug x = foreign FFI_JS "console.log(%0)" (a -> JS_IO ()) x

main : JS_IO ()
main = bug "x"
