//
// Created by henleyzhou on 2022/8/1.
//

#ifndef MUDUO_TYPES_H
#define MUDUO_TYPES_H

#include <cstdint>
#include <cstring> // for memset
#include "string"

#ifndef NDEBUG
#include "assert.h"
#endif

using std::string;

inline void memZero(void* p, size_t n){
    memset(p, 0, n);
}

template<typename To, typename From>
inline To implicit_cast(From const & f){
    return f;
}

template<typename To, typename From>
inline To down_cast(From* f){
    if (false){
        implicit_cast<From*, To>(0);
    }
#if !defined(NDEBUG) && !defined(GOOGLE_PROTOBUF_NO_RIFF)
    assert(f == NULL || dynamic_cast<To>(f) != NULL);
#endif
    return static_cast<To>(f);
}



#endif //MUDUO_TYPES_H

