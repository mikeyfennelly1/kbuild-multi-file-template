#include <linux/kernel.h>
#include <linux/module.h>

void cleanup_module(void)
{
    pr_info("Cleanup start_stop\n");
}

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Sarah McDonagh");
MODULE_AUTHOR("Danny Quinn");
MODULE_AUTHOR("Mikey Fennelly");
