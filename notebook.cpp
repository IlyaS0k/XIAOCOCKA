#include "notebook.h"

Notebook::Notebook()
{
    bigstring = "";
}
Q_INVOKABLE void Notebook::addNote(QString str)
{
  notes.append(str.toLower());
  toBigString();
}
Q_INVOKABLE void Notebook::eraseNote()
{
  if(!notes.empty())
  notes.erase(notes.end() - 1);
  toBigString();
}
Q_INVOKABLE void Notebook::toBigString()
{
    bigstring = "";
    for (auto str : notes)
    {
        bigstring+=str +';';
    }
    emit bigstringChanged();
}

