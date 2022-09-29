
#include <QObject>
class Counter : public QObject {
 Q_OBJECT
    Q_PROPERTY(int value MEMBER value NOTIFY valueChanged)
private:
 int value;
public:
 Counter();
 Q_INVOKABLE void increase();
 Q_INVOKABLE void decrease();
signals:
  void valueChanged();
};
