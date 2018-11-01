import sys
from PyQt5.QtWidgets import QApplication, QWidget, QLabel
from PyQt5.QtGui import QIcon, QPixmap
from PyQt5.QtCore import pyqtSlot


class PyQt_Maya(QWidget):

    def __init__(self):
        super(PyQt_Maya, self).__init__()
        self.title = 'PyQt5 Maya 2018'
        self.left = 100
        self.top = 100
        self.width = 265
        self.height = 385
        self.initUI()

    def initUI(self):
        self.setWindowTitle(self.title)
        self.setGeometry(self.left, self.top, self.width, self.height)

        # Create widget
        label = QLabel(self)
        pixmap = QPixmap(
            'C:\Program Files\Autodesk\Maya2018\icons\MayaEDUStartupImage.png')
        label.setPixmap(pixmap)
        self.resize(pixmap.width(), pixmap.height())

        self.show()


show = PyQt_Maya()
