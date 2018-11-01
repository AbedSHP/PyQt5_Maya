# PyQt5_Maya
Build PyQt5 for Maya 2018 (Windows 64bit Only)

Notice: 
PyQt does not have the same licensing as Maya, Qt, or Python.
Please consult the PyQt website for information about licensing for PyQt.


required for build Qt5 for Maya 2018 :

- Maya 2018 !
- visual studio 2017 + Build Tools
- PyQt5_gpl-5.9
- sip-4.19.3


Download Section :

* Autodesk Maya 2018
https://www.autodesk.com/products/maya

* visual studio 2017
https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=Community&rel=15

* visual studio Build Tools
https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=BuildTools&rel=15

* PyQt5_gpl-5.9
https://datapacket.dl.sourceforge.net/project/pyqt/PyQt5/PyQt-5.11.3/PyQt5_gpl-5.11.3.zip

* sip-4.19.3
https://datapacket.dl.sourceforge.net/project/pyqt/PyQt5/PyQt-5.11.3/PyQt5_gpl-5.11.3.zip


Start :
Install Maya 2018 and VS 2017 (You know).

copy zip (sip and PyQt) and Bat file to Script Directory in Maya, for example :

C:\Users\~\Documents\maya\2018\scripts

and Extract zip file, like this :

C:\Users\~\Documents\maya\2018\scripts\PyQt5_gpl-5.9
C:\Users\~\Documents\maya\2018\scripts\sip-4.19.3

Next go edit qt.conf in Maya Directory 

C:\Program Files\Autodesk\Maya2018\bin\qt.conf

Notice: Please backup your qt.conf first, you’ll need to restore it after building PyQt5.

to this :

[Paths]
Prefix=$(MAYA_LOCATION)
Libraries=lib
Binaries=bin
Headers=include/Qt
Data=.
Plugins=qt-plugins
Translations=qt-translations
Qml2Imports=qml


and Extract file to :

C:\Program Files\Autodesk\Maya2018\include\qt-5.6.1_vc14-include.tar
C:\Program Files\Autodesk\Maya2018\include\Qt

C:\Program Files\Autodesk\Maya2018\mkspecs\qt-5.6.1_vc14-mkspecs.tar
C:\Program Files\Autodesk\Maya2018\mkspecs

open CMD as administrator and  go to Script Directory in maya then open buildAll.bat

Notice: if used VS 2015 you must Edit setup.bat file in Line 28 and 32.

End: Buiild Directory is like this !
C:\Program Files\Autodesk\Maya2018\Python\Lib\site-packages


TEST















