class Graph {
    constructor() {
        this.adjList = {};
    }

    addVertex(vertex) {
        this.adjList[vertex] = [];
    }

    addEdge(v1, v2) {
        this.adjList[v1].push(v2);
        this.adjList[v2].push(v1);
    }

    dfs(start, visited = new Set()) {
        if (!visited.has(start)) {
            console.log(start);
            visited.add(start);

            for (let neighbor of this.adjList[start]) {
                this.dfs(neighbor, visited);
            }
        }
    }
}

let graph = new Graph();
graph.addVertex("A");
graph.addVertex("B");
graph.addVertex("C");

graph.addEdge("A", "B");
graph.addEdge("A", "C");

graph.dfs("A");
