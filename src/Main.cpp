#include <iostream>
#include "../inc/Graph.h"

using std::cout;
using std::endl;

int main() {
    Graph<int> g1("../res/graphInt.txt");
    cout << "0->3:" << g1.shortestCost(0, 3) << endl;
    cout << "0->1:" << g1.shortestCost(0, 1) << endl;
    cout << "0->2:" << g1.shortestCost(0, 2) << endl;

    Graph<char> g2("../res/graphChar.txt");
    cout << "A->D:" << g2.shortestCost('A', 'D') << endl;
    cout << "A->B:" << g2.shortestCost('A', 'B') << endl;
    cout << "A->C:" << g2.shortestCost('A', 'C') << endl;
}