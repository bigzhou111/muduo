//
// Created by henleyzhou on 2022/7/31.
//
#include "boost/noncopyable.hpp"
#include "MutexLock.cpp"
#include "cstdio"
#include "mutex"
#include "iostream"
#include "thread"

namespace muduo{
    class Counter : boost::noncopyable {
    private:
        int64_t value_;
        mutable MutexLock mutex_;
    public:
        Counter() : value_(0) {}

        int64_t value() const;

        int64_t getAndIncrease();
    };

    int64_t Counter::value() const {
        MutexLockGuard lock(mutex_);
        return value_;
    }

    int64_t Counter::getAndIncrease() {
        std::cout<<"getAndIncrease"<<std::endl;
        MutexLockGuard lock(mutex_);
        int64_t ret = value_++;
        return ret;
    }
}
