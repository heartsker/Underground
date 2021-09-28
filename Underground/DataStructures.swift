//
//  DataStructures.swift
//  Underground
//
//  Created by Daniel Pustotin on 28.09.2021.
//

import Foundation

struct Vertex: Comparable {
	static func < (lhs: Vertex, rhs: Vertex) -> Bool {
		lhs.id < rhs.id
	}

	let id: Int
}

struct Edge: Comparable {
	static func < (lhs: Edge, rhs: Edge) -> Bool {
		lhs.weight < rhs.weight ||
		lhs.weight < rhs.weight && lhs.from < rhs.from ||
		lhs.weight < rhs.weight && lhs.from == rhs.from && lhs.to < rhs.to
	}

	static func == (lhs: Edge, rhs: Edge) -> Bool {
		lhs.from == rhs.from &&
		lhs.to == rhs.to &&
		lhs.weight == rhs.weight
	}

	let from: Vertex
	let to: Vertex
	let weight: Int


}

