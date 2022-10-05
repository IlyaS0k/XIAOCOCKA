
#include <QObject>

class Notebook : public QObject {
    Q_OBJECT
       Q_PROPERTY(QString bigstring READ bigstring NOTIFY bigstringChanged)
private:
    QList<QString>notes;
    QString bigstring;
public:
    Notebook();
    Q_INVOKABLE void eraseNote();
    Q_INVOKABLE void addNote(QString);
    Q_INVOKABLE void toBigString();
signals:
    void bigstringChanged();
};

