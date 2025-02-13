from Types cimport *
from libcpp cimport bool
# from SeqanIncludeWrapper cimport *
from String cimport *

cdef extern from "<OpenMS/ANALYSIS/ID/AhoCorasickAmbiguous.h>" namespace "OpenMS":
    
    cdef cppclass AhoCorasickAmbiguous "OpenMS::AhoCorasickAmbiguous":
        AhoCorasickAmbiguous() nogil except +
        AhoCorasickAmbiguous(AhoCorasickAmbiguous &) nogil except + # compiler
        # void initPattern(const PeptideDB & pep_db, const int aaa_max, const int mm_max, FuzzyACPattern & pattern) nogil except +
        AhoCorasickAmbiguous(const String & protein_sequence) nogil except +
        void setProtein(const String & protein_sequence) nogil except +
        # bool findNext(const FuzzyACPattern & pattern) nogil except +
        Size getHitDBIndex() nogil except + # wrap-doc:Get index of hit into peptide database of the pattern
        Int getHitProteinPosition() nogil except + # wrap-doc:Offset into protein sequence where hit was found

