#pragma once
#include <list>
#include <string>

template <class T>
struct Pair {
    Pair(T n, int w){
        node = n;
        weight = w;
    }
    T node;
    int weight;
};

template <class T>
class Graph {
public:
    Graph(std::string);
    int shortestCost(T start, T finish);
private:
    std::list<Pair> *adjList;
    T* nodesValues;
    int numNodes;
};