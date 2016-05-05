import ihello;

// dmdw -ofdserver.DLL ihello.d comhelpers.d chello.d dserver.def  -I/home/me/program/lib/ -d /home/me/program/lib/win32/{winerror,unknwn,oaidl}.d

import core.sys.windows.windows;
import core.sys.windows.com;
import core.sys.windows.oaidl;

import comhelpers;

pragma(lib, "user32");

@Com(CLSID_Hello)
class CHello : IHello, IDispatch {
	mixin ComObjectImpl!();
	mixin IDispatchImpl!();

	extern(Windows)
	public override HRESULT Print() {
		import std.stdio; writeln("cool?");
		MessageBoxA(null, "CHello.Print()", null, MB_OK);
		return NOERROR;
	}
	extern(Windows)
	public override HRESULT Print2(string s) {
		import std.stdio; writeln("cool ", s);
		return NOERROR;
	}


	extern(Windows)
	public override HRESULT poo(out int a) {
		import std.stdio; writeln("poo. giggle");
		a = 30;

		return NOERROR;
	}

	extern(Windows)
	public override int add(out int res, int a, int b) {
		res = a + b;
		return NOERROR;
	}

	extern(Windows)
	public override int except() {
		throw new Exception("lol");
		return NOERROR;
	}
}

mixin ComServerMain!(CHello, "Hello", "1.0");
