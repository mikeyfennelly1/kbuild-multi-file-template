#include <linux/kernel.h>
#include <linux/module.h>

int init_module(void)
{
    pr_info("Init module start_stop\n");
    return 0;
}

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Sarah McDonagh");
MODULE_AUTHOR("Danny Quinn");
MODULE_AUTHOR("Mikey Fennelly");
