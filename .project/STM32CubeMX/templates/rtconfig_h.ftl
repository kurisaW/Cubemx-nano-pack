[#ftl]
[#compress]
[#list SWIPdatas as SWIP]
    [#if SWIP.defines??]
        [#list SWIP.defines as definition]
            [#assign value = definition.value]
            [#assign name = definition.name]

            [#if name = "RT_THREAD_PRIORITY_MAX"]
                [#assign RT_THREAD_PRIORITY_MAX_value = value]
            [/#if]

            [#if name = "RT_TICK_PER_SECOND"]
                [#assign RT_TICK_PER_SECOND_value = value]
            [/#if]

            [#if name = "RT_ALIGN_SIZE"]
                [#assign RT_ALIGN_SIZE_value = value]
            [/#if]

            [#if name = "RT_NAME_MAX"]
                [#assign RT_NAME_MAX_value = value]
            [/#if]

            [#if name = "RT_USING_COMPONENTS_INIT"]
                [#assign RT_USING_COMPONENTS_INIT_value = value]
            [/#if]

            [#if name = "RT_USING_USER_MAIN"]
                [#assign RT_USING_USER_MAIN_value = value]
            [/#if]

            [#if name = "RT_MAIN_THREAD_STACK_SIZE"]
                [#assign RT_MAIN_THREAD_STACK_SIZE_value = value]
            [/#if]

            [#if name = "RT_DEBUG"]
                [#assign RT_DEBUG_value = value]
            [/#if]

            [#if name = "RT_DEBUG_INIT"]
                [#assign RT_DEBUG_INIT_value = value]
            [/#if]

            [#if name = "RT_USING_OVERFLOW_CHECK"]
                [#assign RT_USING_OVERFLOW_CHECK_value = value]
            [/#if]

            [#if name = "RT_USING_HOOK"]
                [#assign RT_USING_HOOK_value = value]
            [/#if]

            [#if name = "RT_USING_IDLE_HOOK"]
                [#assign RT_USING_IDLE_HOOK_value = value]
            [/#if]

            [#if name = "RT_USING_TIMER_SOFT"]
                [#assign RT_USING_TIMER_SOFT_value = value]
            [/#if]

            [#if name = "RT_TIMER_THREAD_PRIO"]
                [#assign RT_TIMER_THREAD_PRIO_value = value]
            [/#if]

            [#if name = "RT_TIMER_THREAD_STACK_SIZE"]
                [#assign RT_TIMER_THREAD_STACK_SIZE_value = value]
            [/#if]

            [#if name = "RT_USING_SEMAPHORE"]
                [#assign RT_USING_SEMAPHORE_value = value]
            [/#if]

            [#if name = "RT_USING_MUTEX"]
                [#assign RT_USING_MUTEX_value = value]
            [/#if]

            [#if name = "RT_USING_SIGNALS"]
                [#assign RT_USING_SIGNALS_value = value]
            [/#if]

            [#if name = "RT_USING_EVENT"]
                [#assign RT_USING_EVENT_value = value]
            [/#if]

            [#if name = "RT_USING_MAILBOX"]
                [#assign RT_USING_MAILBOX_value = value]
            [/#if]

            [#if name = "RT_USING_MESSAGEQUEUE"]
                [#assign RT_USING_MESSAGEQUEUE_value = value]
            [/#if]

            [#if name = "RT_USING_HEAP"]
                [#assign RT_USING_HEAP_value = value]
            [/#if]

            [#if name = "RT_USING_MEMPOOL"]
                [#assign RT_USING_MEMPOOL_value = value]
            [/#if]

            [#if name = "RT_USING_SMALL_MEM"]
                [#assign RT_USING_SMALL_MEM_value = value]
            [/#if]

            [#if name = "RT_USING_TINY_SIZE"]
                [#assign RT_USING_TINY_SIZE_value = value]
            [/#if]

            [#if name = "RT_USING_CONSOLE"]
                [#assign RT_USING_CONSOLE_value = value]
            [/#if]

            [#if name = "RT_CONSOLEBUF_SIZE"]
                [#assign RT_CONSOLEBUF_SIZE_value = value]
            [/#if]

            [#if name = "RT_USING_DEVICE"]
                [#assign RT_USING_DEVICE_value = value]
            [/#if]

        [/#list]
    [/#if]
[/#list]
[/#compress]

/* RT-Thread config file */

#ifndef __RTTHREAD_CFG_H__
#define __RTTHREAD_CFG_H__

// <<< Use Configuration Wizard in Context Menu >>>
// <h>Basic Configuration
// <o>Maximal level of thread priority <8-256>
//  <i>Default: 32
#define RT_THREAD_PRIORITY_MAX ${RT_THREAD_PRIORITY_MAX_value}

// <o>OS tick per second
//  <i>Default: 1000   (1ms)
#define RT_TICK_PER_SECOND ${RT_TICK_PER_SECOND_value}

// <o>Alignment size for CPU architecture data access
//  <i>Default: 4
#define RT_ALIGN_SIZE ${RT_ALIGN_SIZE_value}

// <o>the max length of object name<2-16>
//  <i>Default: 8
#define RT_NAME_MAX ${RT_NAME_MAX_value}

// <c1>Using RT-Thread components initialization
//  <i>Using RT-Thread components initialization
[#if RT_USING_COMPONENTS_INIT_value == "0"]//[/#if]#define RT_USING_COMPONENTS_INIT
// </c>

// <c1>Using user main
//  <i>Using user main
[#if RT_USING_USER_MAIN_value == "0"]//[/#if]#define RT_USING_USER_MAIN
// </c>

// <o>the size of main thread<1-4086>
//  <i>Default: 512
#define RT_MAIN_THREAD_STACK_SIZE ${RT_MAIN_THREAD_STACK_SIZE_value}
// </h>

// <h>Debug Configuration
// <c1>enable kernel debug configuration
//  <i>Default: enable kernel debug configuration
[#if RT_DEBUG_value == "0"]//[/#if]#define RT_DEBUG
// </c>

// <o>enable components initialization debug configuration<0-1>
//  <i>Default: 0
#define RT_DEBUG_INIT ${RT_DEBUG_INIT_value}

// <c1>thread stack over flow detect
//  <i> Diable Thread stack over flow detect
[#if RT_USING_OVERFLOW_CHECK_value == "0"]//[/#if]#define RT_USING_OVERFLOW_CHECK
// </c>
// </h>

// <h>Hook Configuration
// <c1>using hook
//  <i>using hook
[#if RT_USING_HOOK_value == "0"]//[/#if]#define RT_USING_HOOK
// </c>

// <c1>using idle hook
//  <i>using idle hook
[#if RT_USING_IDLE_HOOK_value == "0"]//[/#if]#define RT_USING_IDLE_HOOK
// </c>
// </h>

// <h>Software timers Configuration
// <c1> Enables user timers
// <i> Enables user timers
[#if RT_USING_TIMER_SOFT_value == "0"]//[/#if]#define RT_USING_TIMER_SOFT
// </c>

// <o>The priority level of timer thread <0-31>
//  <i>Default: 4
#define RT_TIMER_THREAD_PRIO ${RT_TIMER_THREAD_PRIO_value}

// <o>The stack size of timer thread <0-8192>
//  <i>Default: 512
#define RT_TIMER_THREAD_STACK_SIZE ${RT_TIMER_THREAD_STACK_SIZE_value}
// </h>

// <h>IPC(Inter-process communication) Configuration
// <c1>Using Semaphore
//  <i>Using Semaphore
[#if RT_USING_SEMAPHORE_value == "0"]//[/#if]#define RT_USING_SEMAPHORE
// </c>

// <c1>Using Mutex
//  <i>Using Mutex
[#if RT_USING_MUTEX_value == "0"]//[/#if]#define RT_USING_MUTEX
// </c>

// <c1>Using Signal
//  <i>Using Signal
[#if RT_USING_SIGNALS_value == "0"]//[/#if]#define RT_USING_SIGNALS
// </c>

// <c1>Using Event
//  <i>Using Event
[#if RT_USING_EVENT_value == "0"]//[/#if]#define RT_USING_EVENT
// </c>

// <c1>Using MailBox
//  <i>Using MailBox
[#if RT_USING_MAILBOX_value == "0"]//[/#if]#define RT_USING_MAILBOX
// </c>

// <c1>Using Message Queue
//  <i>Using Message Queue
[#if RT_USING_MESSAGEQUEUE_value == "0"]//[/#if]#define RT_USING_MESSAGEQUEUE
// </c>
// </h>


// <h>Memory Management Configuration
// <c1>Using Mempool Management
//  <i>Using Mempool Management
[#if RT_USING_MEMPOOL_value == "0"]//[/#if]#define RT_USING_MEMPOOL
// </c>
// <c1>Dynamic Heap Management
//  <i>Dynamic Heap Management
[#if RT_USING_HEAP_value == "0"]//[/#if]#define RT_USING_HEAP
// </c>
// <c1>using small memory
//  <i>using small memory
[#if RT_USING_SMALL_MEM_value == "0"]//[/#if]#define RT_USING_SMALL_MEM
// </c>

// <c1>using tiny size of memory
//  <i>using tiny size of memory
[#if RT_USING_TINY_SIZE_value == "0"]//[/#if]#define RT_USING_TINY_SIZE
// </c>
// </h>

// <h>Console Configuration
// <c1>Using console
//  <i>Using console
[#if RT_USING_CONSOLE_value == "0"]//[/#if]#define RT_USING_CONSOLE
// </c>

// <o>the buffer size of console <1-1024>
//  <i>the buffer size of console
//  <i>Default: 128  (128Byte)
#define RT_CONSOLEBUF_SIZE ${RT_CONSOLEBUF_SIZE_value}
// </h>

// <h>Enable FinSH Configuration
// <c1>include shell config
//  <i> Select this choice if you using FinSH 
//#include "finsh_config.h"
// </c>
// </h>

// <h>Device Configuration
// <c1>using device framework
//  <i>using device framework
[#if RT_USING_DEVICE_value == "0"]//[/#if]#define RT_USING_DEVICE
// </c>
// </h>

// <<< end of configuration section >>>

#endif

