This is to help you make COM servers and clients. See the example
for a hello world thing.

You attach GUIDs to the interfaces and classes. There's a mixin for
IDispatch, which makes your object usable from things like WSH (e.g.
JScript) or other script languages.

You can compile the DLL and register in the registry or use manifests.
Self registration functions are in, or you can use regsvr32 from the
Windows command line. See the Microsoft docs for more info.

TODO:
* Make interfaces as easy to use as we reasonably can I think mission accomplished here!
* Do more auto-wrapping of D stuff so you can write it in the D style but still get a standard COM object. like exceptions and stuff.
* Support IDispatch clients in cases where we don't have the static interface.
* Make sure it doesn't suck
