#include <iostream>
#include <windows.h>
using namespace std;

int main()
{
    int h, m, s, a, err;
    err = a = 0;

    while (err == 0)
    {
        cout << "Enter an hour:" << endl;

        cin >> h;

        cout << "Enter minutes:" << endl;

        cin >> m;

        cout << "Enter seconds:" << endl;

        cin >> s;

        if (h < 24 && m < 60 && s < 60)
            err++;
        else
        {
            system("cls");
        }
    }
}