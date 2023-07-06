import os
from pathlib import Path
import sys

from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine


if __name__ == '__main__':
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    engine.load(os.fspath(Path(__file__).resolve().parent / 'qml/main.qml'))

    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(app.exec_())
