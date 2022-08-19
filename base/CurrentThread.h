//
// Created by henleyzhou on 2022/8/1.
//

#ifndef MUDUO_CURRENTTHREAD_H
#define MUDUO_CURRENTTHREAD_H

#include "Types.h"
#include "iostream"

namespace muduo{
    namespace CurrentThread{
        __thread int t_cachedTid = 0;
        __thread char t_tidString[32];
        __thread int t_tidStringLength = 6;
        __thread const char* t_threadName = "unknown";
        void cacheTid(){

        }

        inline int tid()
        {
            if (__builtin_expect(t_cachedTid == 0, 0))
            {
                std::cout<<"test"<<std::endl;
                cacheTid();
            }
            return t_cachedTid;
        }

        inline const char* tidString() // for logging
        {
            return t_tidString;
        }

        inline int tidStringLength() // for logging
        {
            return t_tidStringLength;
        }

        inline const char* name()
        {
            return t_threadName;
        }

        bool isMainThread();

        void sleepUsec(int64_t usec);  // for testing

        string stackTrace(bool demangle);
    }
}


#endif //MUDUO_CURRENTTHREAD_H
