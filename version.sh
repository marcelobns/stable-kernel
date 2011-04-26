#!/bin/bash

unset BUILD

KERNEL_REL=2.6.38
STABLE_PATCH=4
KERNEL_PATCH=${KERNEL_REL}.${STABLE_PATCH}
#RC_KERNEL=2.6.37
#RC_PATCH=-rc8
#KERNEL_PATCH=${RC_KERNEL}${RC_PATCH}
DL_PATCH=patch-${KERNEL_PATCH}
ABI=3

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
