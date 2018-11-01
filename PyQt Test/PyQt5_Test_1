import sys
from PyQt5.QtWidgets import QApplication, QWidget, QPushButton
from PyQt5.QtGui import QIcon
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

        button = QPushButton('Maya PyQt5 button', self)
        button.setToolTip('example button')
        button.move(68, 70)
        button.clicked.connect(self.on_click)

        self.show()

    @pyqtSlot()
    def on_click(self):
        print('PyQt5 button click')


show = PyQt_Maya()
