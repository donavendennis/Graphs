#include <iostream>
#include "../inc/Graph.h"

using std::cout;
using std::endl;

int main() {
    Graph g1("../res/graph.txt");
    cout << "0->3:" << g1.shortestCost(0, 3) << endl;
    cout << "0->1:" << g1.shortestCost(0, 1) << endl;
    cout << "0->2:" << g1.shortestCost(0, 2) << endl;
}