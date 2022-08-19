//
// Created by henleyzhou on 2022/8/1.
//
#ifndef MUDUO_MUTEX_LOCK
#define MUDUO_MUTEX_LOCK
#include "boost/noncopyable.hpp"
#include "mutex"
#include "sys/types.h"
#include "pthread.h"
#include "assert.h"
#include "base/CurrentThread.h"
#include "iostream"
namespace muduo{
    class MutexLock : boost::noncopyable {
    public:
        MutexLock() : holder_(0) {
            pthread_mutex_init(&mutex_, NULL);
        }

        ~MutexLock() {
            assert(holder_ == 0);
            pthread_mutex_destroy(&mutex_);
        }

        bool isLockedByThisThread() {
            std::cout<<"test"<<std::endl;
            return holder_ == CurrentThread::tid();
        }

        void lock() {//仅供MutexLockGuard调用，严禁用户代码调用
            pthread_mutex_lock(&mutex_);
            holder_ = CurrentThread::tid();;
        }

        void unlock() {
            holder_ = 0;
            pthread_mutex_unlock(&mutex_);
        }

        pthread_mutex_t *getPthreadMutex() {
            return &mutex_;
        }

    private:
        pthread_mutex_t mutex_;
        pid_t holder_;
    };

    class MutexLockGuard : boost::noncopyable {
    public:
        explicit MutexLockGuard(MutexLock &mutex) : mutex_(mutex) {
            mutex_.lock();
        }

        ~MutexLockGuard() {
            mutex_.unlock();
        }

    private:
        MutexLock &mutex_;
    };
}

#define MutexLockGuard(x) static_assert(false, "missing mutex guard var name")
#endif //MUDUO_MUTEX_LOCK