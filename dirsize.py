# Created by dyeadal

# Import specific functions from shututil and os modules
from shutil import disk_usage
from os import getcwd

# Creates varaibles that store disk usage of current working directories in bytes
total, used, free = disk_usage(getcwd())

# Print human readable output of disk usage by
print(f"\n{getcwd()}:")
print(f"  Total: {total // (2**30)} GB")
print(f"  Used: {used // (2**30)} GB")
print(f"  Free: {free // (2**30)} GB")
print("="*40)
