from cgraph cimport GraphBase
from data_structure cimport link

cdef class DFS:
    cdef GraphBase _graph
    cdef int _start_node
    cdef int [::1] _pre
    cdef int [::1] _st
    cdef int [::1] _post
    cdef int [::1] _lows
    cdef int [::1] _cycle
    cdef int [::1] _colour
    cdef int [::1] _art
    cdef int [::1] _bridges
    cdef int _pre_counter
    cdef int _post_counter
    cdef int _edge_count
    cdef link ** _tree_links
    cdef link ** _back_links
    cdef link ** _down_links
    cdef link ** _parent_links
    cdef void _run(self, int node, int st, int colour)
    cpdef void run(self)