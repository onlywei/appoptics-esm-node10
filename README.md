# appoptics-esm-node10
This repository demonstrates that appoptics with esm on node 10.x is broken

To see this in action, first make sure you have Docker installed. Then, run the following command:
```sh
./build-and-start.sh
```

You should see the following error:
```
node[7]: ../src/node_file.cc:1425:void node::fs::RealPath(const v8::FunctionCallbackInfo<v8::Value>&): Assertion `(argc) >= (3)' failed.
 1: 0x8daaa0 node::Abort() [node]
 2: 0x8dab75  [node]
 3: 0x919702  [node]
 4: 0xb6114f  [node]
 5: 0xb61ca5 v8::internal::Builtin_HandleApiCall(int, v8::internal::Object**, v8::internal::Isolate*) [node]
 6: 0xf36d805be1d
Aborted
```

Note that there is a file in between requiring `appoptics-apm` and `esm` that simply does a `console.log()` to demonstrate that the process is successfully moving past appoptics-apm and onto esm.