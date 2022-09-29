#include "counter.h"
Counter::Counter() : QObject() {
  value = 0;
}
void Counter::increase() {
  value++;
  emit valueChanged();
}
void Counter::decrease() {
  value = 0;
  emit valueChanged();
}

