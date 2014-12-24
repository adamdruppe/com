import win32.basetyps;
import win32.unknwn;

import comhelpers;

@ComGuid(GUID(0x00421140, 0, 0, [0xC0, 0, 0, 0, 0, 0, 0, 0x46]))
interface IHello : IUnknown {
    extern (Windows) :
    int Print();
    int Print2(string);
    int poo(out int);
    int add(out int, int, int);
    int except();
}


// this is the class id that we can use to instantiate in the client and attach to the
// class in the implementation
enum GUID CLSID_Hello = GUID(0x30421140, 0, 0, [0xC0, 0, 0, 0, 0, 0, 0, 0x46]);
