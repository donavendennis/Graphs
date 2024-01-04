#ifndef GRAPH_H
#define GRAPH_H

#include <list>
#include <string>
#include <fstream>
#include <stdexcept>
#include <cstdint>
#include <climits>

using std::list;
using std::ifstream;
using std::invalid_argument;

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
    int find(T value);
    std::list<Pair<T>> *adjList;
    T* nodesValues;
    int numNodes;
};

template <class T>
Graph<T>::Graph(std::string filename){
    ifstream input;
    input.open(filename);
    if(!input){
        throw invalid_argument("couldn't read file");
    }
    input >> numNodes;
    adjList = new list<Pair<T>>[numNodes];
    nodesValues = new T[numNodes];
    for(int i = 0; i < numNodes; i++){
        T nodeValue;
        T neighborValue;
        int cost;
        input >> nodeValue;
        nodesValues[i] = nodeValue;
        input >> neighborValue;
        if(typeid(T) == typeid(char)){
            while(neighborValue < 'Z'){
                input >> cost;
                adjList[i].push_back(Pair<T>(neighborValue, cost));
                input >> neighborValue;
            }
        } else {
            while(neighborValue >= 0){
                input >> cost;
                adjList[i].push_back(Pair<T>(neighborValue, cost));
                input >> neighborValue;
            }
        }
    }
}

template <class T>
int Graph<T>::find(T value){
    for(int i = 0; i < numNodes; i++){
        if(nodesValues[i] == value){
            return i;
        }
    }
    return -1;
}

template <class T>
int Graph<T>::shortestCost(T start, T finish){
    int* dist = new int[numNodes];
    list<int> remaining;
    list<int> finished;
    int startIndex = find(start);
    int finishIndex = find(finish);
    for(int i = 0; i < numNodes; i++){
        if(i == startIndex){
            dist[i] = 0;
        } else {
            dist[i] = INT_MAX;  
        }
        remaining.push_back(i);
    }
    while(!remaining.empty()){
        int minDist = INT_MAX;
        int minIndex = -1;
        for(list<int>::iterator listIt = remaining.begin(); listIt != remaining.end(); listIt++){
            if(dist[*listIt] < minDist){
                minDist = dist[*listIt];
                minIndex = *listIt;
            }
        }
        int cur = minIndex;
        for(typename list<Pair<T>>::iterator listIt = adjList[cur].begin(); listIt != adjList[cur].end(); listIt++){
            T next = (*listIt).node;
            int nextWeight = (*listIt).weight;
            int nextIndex = find(next);
            if(dist[cur] + nextWeight < dist[nextIndex]){
                dist[nextIndex] = dist[cur] + nextWeight;
            }
        }
        remaining.remove(cur);
        finished.push_back(cur);
    }

    int shortestCost = dist[finishIndex];
    delete[] dist;
    return shortestCost;
}

#endif // GRAPH_H