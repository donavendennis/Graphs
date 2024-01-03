#include "../inc/Graph.h"
#include <fstream>
#include <stdexcept>
#include <cstdint>
#include <climits>

using std::list;
using std::ifstream;
using std::invalid_argument;

template <class T>
Graph<T>::Graph(std::string filename){
    ifstream input;
    input.open(filename);
    if(!input){
        throw invalid_argument("couldn't read file");
    }
    input >> numNodes;
    adjList = new list<Pair>[numNodes];
    nodesValues = new T[numNodes];
    for(int i = 0; i < numNodes; i++){
        T nodesValue;
        T neighborValue;
        int cost;
        input >> noseValue;
        nodesValues[i] = nodesValue;
        input >> neighborValue;
        while(value <){
            input >> cost;
            adjList[i].push_back(Pair(value, cost));
            input >> value;
        }         
    }
}

template <class T>
int Graph<T>::shortestCost(T start, T finish){
    int* dist = new int[numNodes];
    list<T> remaining;
    list<T> finished;
    for(int i = 0; i < numNodes; i++){
        if(i == start){
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
        for(list<Pair>::iterator listIt = adjList[cur].begin(); listIt != adjList[cur].end(); listIt++){
            int next = (*listIt).node;
            int nextWeight = (*listIt).weight;
            if(dist[cur] + nextWeight < dist[next]){
                dist[next] = dist[cur] + nextWeight;
            }
        }
        remaining.remove(cur);
        finished.push_back(cur);
    }
    return dist[finish];
}