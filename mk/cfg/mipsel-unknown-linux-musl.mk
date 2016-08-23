# mipsel-unknown-linux-musl configuration
CC_mipsel-unknown-linux-musl=mipsel-linux-musl-gcc
CXX_mipsel-unknown-linux-musl=mipsel-linux-musl-g++
CPP_mipsel-unknown-linux-musl=mipsel-linux-musl-gcc
AR_mipsel-unknown-linux-musl=mipsel-linux-musl-ar
CFG_INSTALL_ONLY_RLIB_mipsel-unknown-linux-musl = 1
CFG_LIB_NAME_mipsel-unknown-linux-musl=lib$(1).so
CFG_STATIC_LIB_NAME_mipsel-unknown-linux-musl=lib$(1).a
CFG_LIB_GLOB_mipsel-unknown-linux-musl=lib$(1)-*.so
CFG_LIB_DSYM_GLOB_mipsel-unknown-linux-musl=lib$(1)-*.dylib.dSYM
CFG_JEMALLOC_CFLAGS_mipsel-unknown-linux-musl := -mips1 -mabi=32 $(CFLAGS)
CFG_GCCISH_CFLAGS_mipsel-unknown-linux-musl := -Wall -g -mips1 -mabi=32 $(CFLAGS)
CFG_GCCISH_CXXFLAGS_mipsel-unknown-linux-musl := -fno-rtti $(CXXFLAGS)
CFG_GCCISH_LINK_FLAGS_mipsel-unknown-linux-musl := -g -mips1
CFG_GCCISH_DEF_FLAG_mipsel-unknown-linux-musl := -Wl,--export-dynamic,--dynamic-list=
CFG_LLC_FLAGS_mipsel-unknown-linux-musl :=
CFG_INSTALL_NAME_mipsel-unknown-linux-musl =
CFG_EXE_SUFFIX_mipsel-unknown-linux-musl :=
CFG_WINDOWSY_mipsel-unknown-linux-musl :=
CFG_UNIXY_mipsel-unknown-linux-musl := 1
CFG_LDPATH_mipsel-unknown-linux-musl :=
CFG_RUN_mipsel-unknown-linux-musl=
CFG_RUN_TARG_mipsel-unknown-linux-musl=
# FIXME disable-mips-load-delay-filler should be get rid of.
RUSTC_FLAGS_mipsel-unknown-linux-musl := --crate-type=rlib -C panic=abort -C relocation-model=static -C llvm-args="-mno-check-zero-division -disable-mips-load-delay-filler"
# libpanic_unwind hates panic=abort. this can override panic because $RUSTFLAGS<stg>_<crate> is used after $RUSTC_FLAGS
RUSTFLAGS2_panic_unwind := -C panic=unwind
RUSTFLAGS3_panic_unwind := -C panic=unwind
CFG_GNU_TRIPLE_mipsel-unknown-linux-musl := mipsel-unknown-linux-musl

# remove "-C prefer-dynamic", FIXME but this removes anything, may use filter_out but two continuous elements?
# we can this because platform.mk is included in main.mk after defining these vars.
RUST_LIB_FLAGS_ST2 :=
RUST_LIB_FLAGS_ST3 :=
