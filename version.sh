#!/bin/bash

unset BUILD

KERNEL_REL=2.6.39
STABLE_PATCH=1
KERNEL_PATCH=${KERNEL_REL}.${STABLE_PATCH}
#RC_KERNEL=2.6.37
#RC_PATCH=-rc8
#KERNEL_PATCH=${RC_KERNEL}${RC_PATCH}
DL_PATCH=patch-${KERNEL_PATCH}
ABI=2

if [ "${NO_DEVTMPS}" ] ; then
BUILD+=old${ABI}
else
BUILD+=x${ABI}
fi

BUILDREV=1.0
DISTRO=cross

export KERNEL_REL BUILD RC_PATCH KERNEL_PATCH
export BRANCH REL
export BUILDREV DISTRO
