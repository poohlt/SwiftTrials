// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, Swift!"

// Global array to note if we have visited a node or not
var visited = Array(count: 6, repeatedValue: false)

// A very crude representation of a graph, to be improved later
var graph = [[1,3],[2,3],[3],[1],[],[2,4]]

func search(v:Int) {
    if visited[v] == false{
        println("\(v) is reached")
        visited[v] = true
        
        for d in graph[v]{
            if visited[d] == false {
                search(d)
            }
        }
    } else {
        println("All connected vertices reached")
    }
}

func DFSearch(g:NSArray) {
    for v in 0..g.count {
        println("Starting from \(v)")
        search(v)
    }
}

DFSearch(graph)
