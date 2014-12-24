import comhelpers;
import ihello;

// dmdw dclient.d comhelpers.d ihello.d  -d win32/{winerror,unknwn}.d

void main() {
	auto obj = createObject!(IHello)(CLSID_Hello);
	obj.Print();
}
