(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32 i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32)))
  (type (;8;) (func))
  (type (;9;) (func (param i32 i32 i32)))
  (type (;10;) (func (param i64 i32) (result i32)))
  (type (;11;) (func (param i32) (result i64)))
  (type (;12;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i32 i64)))
  (import "env" "input_length" (func $input_length (type 4)))
  (import "env" "fetch_input" (func $fetch_input (type 5)))
  (import "env" "storage_read" (func $storage_read (type 6)))
  (import "env" "storage_write" (func $storage_write (type 2)))
  (import "env" "elog" (func $elog (type 7)))
  (import "env" "ret" (func $ret (type 7)))
  (func $bxa_api::ext::input::h487ed32442735fb9 (type 5) (param i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        call $input_length
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.add
        local.get 2
        i32.const 0
        call $alloc::raw_vec::RawVec<T_A>::allocate_in::h0630cf576e49aff5
        local.get 1
        i32.load offset=12
        local.set 3
        local.get 1
        i32.load offset=8
        local.tee 4
        call $fetch_input
        local.get 0
        local.get 4
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      i32.const 1
      i32.store
      i32.const 0
      local.set 3
      i32.const 0
      local.set 2
    end
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func $alloc::raw_vec::RawVec<T_A>::allocate_in::h0630cf576e49aff5 (type 9) (param i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.eqz
              br_if 1 (;@4;)
              local.get 1
              call $__rust_alloc_zeroed
              local.tee 2
              br_if 2 (;@3;)
              br 4 (;@1;)
            end
            i32.const 1
            local.set 2
            br 1 (;@3;)
          end
          local.get 1
          i32.const 1
          call $__rust_alloc
          local.tee 2
          i32.eqz
          br_if 2 (;@1;)
        end
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        local.get 2
        i32.store
        return
      end
      call $alloc::raw_vec::RawVec<T_A>::allocate_in::__closure__::he75bee96af4048ba
      unreachable
    end
    unreachable
    unreachable)
  (func $bxa_abi::bxa::common::<impl_bxa_abi::bxa::ToBXAString_for_u64>::to_bxa_string::h4d564631669f5fbf (type 7) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    i32.const 0
    i32.store offset=16
    local.get 2
    i64.const 1
    i64.store offset=8
    local.get 2
    i32.const 1
    i32.store offset=28
    local.get 2
    local.get 2
    i32.const 4
    i32.add
    i32.store offset=24
    local.get 2
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=36
    local.get 2
    i32.const 60
    i32.add
    i32.const 1
    i32.store
    local.get 2
    i64.const 1
    i64.store offset=44 align=4
    local.get 2
    i32.const 34228
    i32.store offset=40
    local.get 2
    local.get 2
    i32.const 24
    i32.add
    i32.store offset=56
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 36
        i32.add
        i32.const 34260
        local.get 2
        i32.const 40
        i32.add
        call $core::fmt::write::hf7a0d3bddcb07d0c
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 2
          i32.load offset=12
          local.tee 3
          local.get 2
          i32.const 8
          i32.add
          i32.const 8
          i32.add
          local.tee 4
          i32.load
          local.tee 1
          i32.eq
          br_if 0 (;@3;)
          local.get 3
          local.get 1
          i32.lt_u
          br_if 2 (;@1;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=8
              local.get 3
              local.get 1
              call $__rust_realloc
              local.tee 5
              br_if 1 (;@4;)
              unreachable
              unreachable
            end
            i32.const 0
            local.set 1
            i32.const 1
            local.set 5
            local.get 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.load offset=8
            local.get 3
            call $__rust_dealloc
          end
          local.get 2
          local.get 1
          i32.store offset=12
          local.get 2
          local.get 5
          i32.store offset=8
        end
        local.get 0
        local.get 2
        i64.load offset=8
        i64.store align=4
        local.get 0
        i32.const 8
        i32.add
        local.get 4
        i32.load
        i32.store
        local.get 2
        i32.const 64
        i32.add
        global.set 0
        return
      end
      call $core::result::unwrap_failed::h903585496f963b4f
      unreachable
    end
    i32.const 34236
    call $core::panicking::panic::hb7cb5b256fd27bcf
    unreachable)
  (func $<&T_as_core::fmt::Display>::fmt::h3607e0147c7c00ba (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    i64.load
    local.get 1
    call $core::fmt::num::imp::fmt_u64::h410eebb512c98a23)
  (func $core::fmt::write::hf7a0d3bddcb07d0c (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 36
    i32.add
    local.get 1
    i32.store
    local.get 3
    i32.const 52
    i32.add
    local.get 2
    i32.const 20
    i32.add
    i32.load
    local.tee 4
    i32.store
    local.get 3
    i32.const 3
    i32.store8 offset=56
    local.get 3
    i32.const 44
    i32.add
    local.get 2
    i32.load offset=16
    local.tee 5
    local.get 4
    i32.const 3
    i32.shl
    i32.add
    i32.store
    local.get 3
    i64.const 137438953472
    i64.store offset=8
    local.get 3
    local.get 0
    i32.store offset=32
    i32.const 0
    local.set 6
    local.get 3
    i32.const 0
    i32.store offset=24
    local.get 3
    i32.const 0
    i32.store offset=16
    local.get 3
    local.get 5
    i32.store offset=48
    local.get 3
    local.get 5
    i32.store offset=40
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load offset=8
              local.tee 7
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.load
              local.set 8
              local.get 2
              i32.load offset=4
              local.tee 9
              local.get 2
              i32.const 12
              i32.add
              i32.load
              local.tee 5
              local.get 5
              local.get 9
              i32.gt_u
              select
              local.tee 10
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              local.get 8
              i32.load
              local.get 8
              i32.load offset=4
              local.get 1
              i32.load offset=12
              call_indirect (type 0)
              br_if 2 (;@3;)
              local.get 8
              i32.const 8
              i32.add
              local.set 5
              local.get 3
              i32.const 56
              i32.add
              local.set 1
              local.get 3
              i32.const 52
              i32.add
              local.set 11
              local.get 3
              i32.const 48
              i32.add
              local.set 12
              i32.const 1
              local.set 6
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 1
                  local.get 7
                  i32.const 32
                  i32.add
                  i32.load8_u
                  i32.store8
                  local.get 3
                  local.get 7
                  i32.const 8
                  i32.add
                  i32.load
                  i32.store offset=12
                  local.get 3
                  local.get 7
                  i32.const 12
                  i32.add
                  i32.load
                  i32.store offset=8
                  i32.const 0
                  local.set 2
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 7
                            i32.const 24
                            i32.add
                            i32.load
                            local.tee 0
                            i32.const 1
                            i32.eq
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              local.get 0
                              i32.const 2
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 0
                              i32.const 3
                              i32.eq
                              br_if 5 (;@8;)
                              local.get 7
                              i32.const 28
                              i32.add
                              i32.load
                              local.set 4
                              br 2 (;@11;)
                            end
                            local.get 3
                            i32.const 8
                            i32.add
                            i32.const 32
                            i32.add
                            local.tee 4
                            i32.load
                            local.tee 0
                            local.get 3
                            i32.const 8
                            i32.add
                            i32.const 36
                            i32.add
                            i32.load
                            i32.eq
                            br_if 2 (;@10;)
                            local.get 4
                            local.get 0
                            i32.const 8
                            i32.add
                            i32.store
                            local.get 0
                            i32.load offset=4
                            i32.const 2
                            i32.ne
                            br_if 4 (;@8;)
                            local.get 0
                            i32.load
                            i32.load
                            local.set 4
                            br 1 (;@11;)
                          end
                          local.get 7
                          i32.const 28
                          i32.add
                          i32.load
                          local.tee 0
                          local.get 11
                          i32.load
                          local.tee 4
                          i32.ge_u
                          br_if 2 (;@9;)
                          local.get 12
                          i32.load
                          local.get 0
                          i32.const 3
                          i32.shl
                          i32.add
                          local.tee 0
                          i32.load offset=4
                          i32.const 2
                          i32.ne
                          br_if 3 (;@8;)
                          local.get 0
                          i32.load
                          i32.load
                          local.set 4
                        end
                        i32.const 1
                        local.set 2
                        br 2 (;@8;)
                      end
                      br 1 (;@8;)
                    end
                    i32.const 34580
                    local.get 0
                    local.get 4
                    call $core::panicking::panic_bounds_check::h8e3d7d625bb942bb
                    unreachable
                  end
                  local.get 3
                  i32.const 8
                  i32.add
                  i32.const 12
                  i32.add
                  local.get 4
                  i32.store
                  local.get 3
                  i32.const 8
                  i32.add
                  i32.const 8
                  i32.add
                  local.get 2
                  i32.store
                  i32.const 0
                  local.set 2
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 7
                            i32.const 16
                            i32.add
                            i32.load
                            local.tee 0
                            i32.const 1
                            i32.eq
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              local.get 0
                              i32.const 2
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 0
                              i32.const 3
                              i32.eq
                              br_if 5 (;@8;)
                              local.get 7
                              i32.const 20
                              i32.add
                              i32.load
                              local.set 4
                              br 2 (;@11;)
                            end
                            local.get 3
                            i32.const 8
                            i32.add
                            i32.const 32
                            i32.add
                            local.tee 4
                            i32.load
                            local.tee 0
                            local.get 3
                            i32.const 8
                            i32.add
                            i32.const 36
                            i32.add
                            i32.load
                            i32.eq
                            br_if 2 (;@10;)
                            local.get 4
                            local.get 0
                            i32.const 8
                            i32.add
                            i32.store
                            local.get 0
                            i32.load offset=4
                            i32.const 2
                            i32.ne
                            br_if 4 (;@8;)
                            local.get 0
                            i32.load
                            i32.load
                            local.set 4
                            br 1 (;@11;)
                          end
                          local.get 7
                          i32.const 20
                          i32.add
                          i32.load
                          local.tee 0
                          local.get 11
                          i32.load
                          local.tee 4
                          i32.ge_u
                          br_if 2 (;@9;)
                          local.get 12
                          i32.load
                          local.get 0
                          i32.const 3
                          i32.shl
                          i32.add
                          local.tee 0
                          i32.load offset=4
                          i32.const 2
                          i32.ne
                          br_if 3 (;@8;)
                          local.get 0
                          i32.load
                          i32.load
                          local.set 4
                        end
                        i32.const 1
                        local.set 2
                        br 2 (;@8;)
                      end
                      br 1 (;@8;)
                    end
                    i32.const 34580
                    local.get 0
                    local.get 4
                    call $core::panicking::panic_bounds_check::h8e3d7d625bb942bb
                    unreachable
                  end
                  local.get 3
                  i32.const 8
                  i32.add
                  i32.const 20
                  i32.add
                  local.get 4
                  i32.store
                  local.get 3
                  i32.const 8
                  i32.add
                  i32.const 16
                  i32.add
                  local.get 2
                  i32.store
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 7
                        i32.load
                        i32.const 1
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 7
                        i32.const 4
                        i32.add
                        i32.load
                        local.tee 2
                        local.get 11
                        i32.load
                        local.tee 4
                        i32.ge_u
                        br_if 2 (;@8;)
                        local.get 12
                        i32.load
                        local.get 2
                        i32.const 3
                        i32.shl
                        i32.add
                        local.set 2
                        br 1 (;@9;)
                      end
                      local.get 3
                      i32.const 8
                      i32.add
                      i32.const 32
                      i32.add
                      local.tee 4
                      i32.load
                      local.tee 2
                      local.get 3
                      i32.const 8
                      i32.add
                      i32.const 36
                      i32.add
                      i32.load
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 4
                      local.get 2
                      i32.const 8
                      i32.add
                      i32.store
                    end
                    local.get 2
                    i32.load
                    local.get 3
                    i32.const 8
                    i32.add
                    local.get 2
                    i32.const 4
                    i32.add
                    i32.load
                    call_indirect (type 1)
                    br_if 5 (;@3;)
                    local.get 6
                    local.get 10
                    i32.ge_u
                    br_if 4 (;@4;)
                    local.get 5
                    i32.const 4
                    i32.add
                    local.set 2
                    local.get 5
                    i32.load
                    local.set 4
                    local.get 5
                    i32.const 8
                    i32.add
                    local.set 5
                    local.get 7
                    i32.const 36
                    i32.add
                    local.set 7
                    local.get 6
                    i32.const 1
                    i32.add
                    local.set 6
                    local.get 3
                    i32.const 8
                    i32.add
                    i32.const 24
                    i32.add
                    i32.load
                    local.get 4
                    local.get 2
                    i32.load
                    local.get 3
                    i32.const 8
                    i32.add
                    i32.const 28
                    i32.add
                    i32.load
                    i32.load offset=12
                    call_indirect (type 0)
                    i32.eqz
                    br_if 1 (;@7;)
                    br 5 (;@3;)
                  end
                end
                i32.const 34596
                local.get 2
                local.get 4
                call $core::panicking::panic_bounds_check::h8e3d7d625bb942bb
                unreachable
              end
              i32.const 34556
              call $core::panicking::panic::hb7cb5b256fd27bcf
              unreachable
            end
            local.get 2
            i32.load
            local.set 8
            local.get 2
            i32.load offset=4
            local.tee 9
            local.get 4
            local.get 4
            local.get 9
            i32.gt_u
            select
            local.tee 10
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 8
            i32.load
            local.get 8
            i32.load offset=4
            local.get 1
            i32.load offset=12
            call_indirect (type 0)
            br_if 1 (;@3;)
            local.get 8
            i32.const 8
            i32.add
            local.set 7
            local.get 3
            i32.const 32
            i32.add
            local.set 0
            local.get 3
            i32.const 36
            i32.add
            local.set 1
            i32.const 1
            local.set 6
            loop  ;; label = @5
              local.get 5
              i32.load
              local.get 3
              i32.const 8
              i32.add
              local.get 5
              i32.const 4
              i32.add
              i32.load
              call_indirect (type 1)
              br_if 2 (;@3;)
              local.get 6
              local.get 10
              i32.ge_u
              br_if 1 (;@4;)
              local.get 7
              i32.const 4
              i32.add
              local.set 2
              local.get 7
              i32.load
              local.set 4
              local.get 5
              i32.const 8
              i32.add
              local.set 5
              local.get 7
              i32.const 8
              i32.add
              local.set 7
              local.get 6
              i32.const 1
              i32.add
              local.set 6
              local.get 0
              i32.load
              local.get 4
              local.get 2
              i32.load
              local.get 1
              i32.load
              i32.load offset=12
              call_indirect (type 0)
              i32.eqz
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          local.get 9
          local.get 6
          i32.le_u
          br_if 1 (;@2;)
          local.get 3
          i32.const 32
          i32.add
          i32.load
          local.get 8
          local.get 6
          i32.const 3
          i32.shl
          i32.add
          local.tee 7
          i32.load
          local.get 7
          i32.load offset=4
          local.get 3
          i32.const 36
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 0)
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 1
        local.set 7
        br 1 (;@1;)
      end
      i32.const 0
      local.set 7
    end
    local.get 3
    i32.const 64
    i32.add
    global.set 0
    local.get 7)
  (func $__rust_realloc (type 0) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $__rg_realloc)
  (func $__rust_dealloc (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $__rg_dealloc)
  (func $core::result::unwrap_failed::h903585496f963b4f (type 8)
    (local i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 55
    i32.store offset=12
    local.get 0
    i32.const 32860
    i32.store offset=8
    local.get 0
    i32.const 52
    i32.add
    i32.const 3
    i32.store
    local.get 0
    i32.const 36
    i32.add
    i32.const 2
    i32.store
    local.get 0
    i32.const 4
    i32.store offset=44
    local.get 0
    i64.const 2
    i64.store offset=20 align=4
    local.get 0
    i32.const 34612
    i32.store offset=16
    local.get 0
    local.get 0
    i32.const 56
    i32.add
    i32.store offset=48
    local.get 0
    local.get 0
    i32.const 8
    i32.add
    i32.store offset=40
    local.get 0
    local.get 0
    i32.const 40
    i32.add
    i32.store offset=32
    local.get 0
    i32.const 16
    i32.add
    i32.const 34628
    call $core::panicking::panic_fmt::h8a97af3c4a58de81
    unreachable)
  (func $core::panicking::panic::hb7cb5b256fd27bcf (type 5) (param i32)
    (local i32 i64 i64 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i64.load offset=8 align=4
    local.set 2
    local.get 0
    i64.load offset=16 align=4
    local.set 3
    local.get 0
    i64.load align=4
    local.set 4
    local.get 1
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get 1
    local.get 4
    i64.store offset=24
    local.get 1
    i32.const 34148
    i32.store offset=16
    local.get 1
    i64.const 1
    i64.store offset=4 align=4
    local.get 1
    local.get 1
    i32.const 24
    i32.add
    i32.store
    local.get 1
    local.get 3
    i64.store offset=40
    local.get 1
    local.get 2
    i64.store offset=32
    local.get 1
    local.get 1
    i32.const 32
    i32.add
    call $core::panicking::panic_fmt::h8a97af3c4a58de81
    unreachable)
  (func $<core::fmt::Error_as_core::fmt::Debug>::fmt::h40371bb409cc3d1e (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=24
    i32.const 34121
    i32.const 5
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 0))
  (func $<&T_as_core::fmt::Display>::fmt::h8d9426a6c22b32f6 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.load offset=16
    local.set 2
    local.get 0
    i32.load offset=4
    local.set 3
    local.get 0
    i32.load
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load offset=8
            local.tee 5
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            local.get 2
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 3
            i32.add
            local.set 6
            local.get 1
            i32.const 20
            i32.add
            i32.load
            i32.const -1
            i32.xor
            local.set 7
            i32.const 0
            local.set 8
            local.get 4
            local.set 0
            local.get 4
            local.set 9
            block  ;; label = @5
              loop  ;; label = @6
                local.get 0
                i32.const 1
                i32.add
                local.set 2
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.load8_s
                          local.tee 10
                          i32.const 0
                          i32.lt_s
                          br_if 0 (;@11;)
                          local.get 10
                          i32.const 255
                          i32.and
                          local.set 10
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 2
                            local.get 6
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 2
                            i32.load8_u
                            i32.const 63
                            i32.and
                            local.set 11
                            local.get 0
                            i32.const 2
                            i32.add
                            local.tee 0
                            local.set 2
                            br 1 (;@11;)
                          end
                          i32.const 0
                          local.set 11
                          local.get 6
                          local.set 0
                        end
                        local.get 10
                        i32.const 31
                        i32.and
                        local.set 12
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 10
                              i32.const 255
                              i32.and
                              local.tee 10
                              i32.const 224
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 0
                              local.get 6
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 0
                              i32.load8_u
                              i32.const 63
                              i32.and
                              local.set 13
                              local.get 0
                              i32.const 1
                              i32.add
                              local.tee 2
                              local.set 14
                              br 2 (;@11;)
                            end
                            local.get 11
                            local.get 12
                            i32.const 6
                            i32.shl
                            i32.or
                            local.set 10
                            br 2 (;@10;)
                          end
                          i32.const 0
                          local.set 13
                          local.get 6
                          local.set 14
                        end
                        local.get 13
                        local.get 11
                        i32.const 6
                        i32.shl
                        i32.or
                        local.set 11
                        block  ;; label = @11
                          local.get 10
                          i32.const 240
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 14
                          local.get 6
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 14
                          i32.const 1
                          i32.add
                          local.set 0
                          local.get 14
                          i32.load8_u
                          i32.const 63
                          i32.and
                          local.set 10
                          br 3 (;@8;)
                        end
                        local.get 11
                        local.get 12
                        i32.const 12
                        i32.shl
                        i32.or
                        local.set 10
                      end
                      local.get 2
                      local.set 0
                      br 2 (;@7;)
                    end
                    i32.const 0
                    local.set 10
                    local.get 2
                    local.set 0
                  end
                  local.get 11
                  i32.const 6
                  i32.shl
                  local.get 12
                  i32.const 18
                  i32.shl
                  i32.const 1835008
                  i32.and
                  i32.or
                  local.get 10
                  i32.or
                  local.tee 10
                  i32.const 1114112
                  i32.eq
                  br_if 2 (;@5;)
                end
                block  ;; label = @7
                  local.get 7
                  i32.const 1
                  i32.add
                  local.tee 7
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 8
                  local.get 9
                  i32.sub
                  local.get 0
                  i32.add
                  local.set 8
                  local.get 0
                  local.set 9
                  local.get 6
                  local.get 0
                  i32.ne
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
              end
              local.get 10
              i32.const 1114112
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 8
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 8
                  local.get 3
                  i32.eq
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 0
                  local.get 8
                  local.get 3
                  i32.ge_u
                  br_if 1 (;@6;)
                  local.get 4
                  local.get 8
                  i32.add
                  i32.load8_s
                  i32.const -64
                  i32.lt_s
                  br_if 1 (;@6;)
                end
                local.get 4
                local.set 0
              end
              local.get 8
              local.get 3
              local.get 0
              select
              local.set 3
              local.get 0
              local.get 4
              local.get 0
              select
              local.set 4
            end
            local.get 5
            i32.eqz
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          i32.const 0
          local.set 3
          local.get 5
          br_if 1 (;@2;)
        end
        local.get 1
        i32.load offset=24
        local.get 4
        local.get 3
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 0)
        return
      end
      i32.const 0
      local.set 2
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.set 10
        local.get 4
        local.set 0
        loop  ;; label = @3
          local.get 2
          local.get 0
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.eq
          i32.add
          local.set 2
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 10
          i32.const -1
          i32.add
          local.tee 10
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              local.get 2
              i32.sub
              local.get 1
              i32.const 12
              i32.add
              i32.load
              local.tee 7
              i32.ge_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 2
              block  ;; label = @6
                local.get 3
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                local.set 2
                local.get 3
                local.set 10
                local.get 4
                local.set 0
                loop  ;; label = @7
                  local.get 2
                  local.get 0
                  i32.load8_u
                  i32.const 192
                  i32.and
                  i32.const 128
                  i32.eq
                  i32.add
                  local.set 2
                  local.get 0
                  i32.const 1
                  i32.add
                  local.set 0
                  local.get 10
                  i32.const -1
                  i32.add
                  local.tee 10
                  br_if 0 (;@7;)
                end
              end
              local.get 2
              local.get 3
              i32.sub
              local.get 7
              i32.add
              local.set 2
              i32.const 0
              local.get 1
              i32.load8_u offset=48
              local.tee 0
              local.get 0
              i32.const 3
              i32.eq
              select
              local.tee 0
              i32.const 3
              i32.and
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              i32.const 2
              i32.eq
              br_if 2 (;@3;)
              i32.const 0
              local.set 9
              br 3 (;@2;)
            end
            local.get 1
            i32.load offset=24
            local.get 4
            local.get 3
            local.get 1
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 0)
            return
          end
          local.get 2
          local.set 9
          i32.const 0
          local.set 2
          br 1 (;@2;)
        end
        local.get 2
        i32.const 1
        i32.add
        i32.const 1
        i32.shr_u
        local.set 9
        local.get 2
        i32.const 1
        i32.shr_u
        local.set 2
      end
      i32.const -1
      local.set 0
      local.get 1
      i32.const 4
      i32.add
      local.set 10
      local.get 1
      i32.const 24
      i32.add
      local.set 7
      local.get 1
      i32.const 28
      i32.add
      local.set 8
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              loop  ;; label = @6
                local.get 0
                i32.const 1
                i32.add
                local.tee 0
                local.get 2
                i32.ge_u
                br_if 1 (;@5;)
                local.get 7
                i32.load
                local.get 10
                i32.load
                local.get 8
                i32.load
                i32.load offset=16
                call_indirect (type 1)
                i32.eqz
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
            end
            local.get 1
            i32.const 4
            i32.add
            i32.load
            local.set 2
            i32.const 1
            local.set 0
            local.get 1
            i32.const 24
            i32.add
            local.tee 10
            i32.load
            local.get 4
            local.get 3
            local.get 1
            i32.const 28
            i32.add
            local.tee 7
            i32.load
            i32.load offset=12
            call_indirect (type 0)
            br_if 1 (;@3;)
            local.get 10
            i32.load
            local.set 10
            i32.const -1
            local.set 0
            local.get 7
            i32.load
            i32.const 16
            i32.add
            local.set 7
            loop  ;; label = @5
              local.get 0
              i32.const 1
              i32.add
              local.tee 0
              local.get 9
              i32.ge_u
              br_if 3 (;@2;)
              local.get 10
              local.get 2
              local.get 7
              i32.load
              call_indirect (type 1)
              i32.eqz
              br_if 0 (;@5;)
            end
          end
          i32.const 1
          local.set 0
        end
        local.get 0
        return
      end
      i32.const 0
      return
    end
    local.get 1
    i32.load offset=24
    local.get 4
    local.get 3
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 0))
  (func $core::panicking::panic_fmt::h8a97af3c4a58de81 (type 7) (param i32 i32)
    (local i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i64.load align=4
    local.set 3
    local.get 2
    i32.const 20
    i32.add
    local.get 1
    i64.load offset=8 align=4
    i64.store align=4
    local.get 2
    local.get 3
    i64.store offset=12 align=4
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 34476
    i32.store offset=4
    local.get 2
    i32.const 34148
    i32.store
    local.get 2
    call $rust_begin_unwind
    unreachable)
  (func $core::fmt::num::imp::fmt_u64::h410eebb512c98a23 (type 10) (param i64 i32) (result i32)
    (local i32 i32 i32 i64 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    i32.const 39
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.const 10000
        i64.lt_u
        br_if 0 (;@2;)
        i32.const 39
        local.set 3
        loop  ;; label = @3
          local.get 2
          i32.const 9
          i32.add
          local.get 3
          i32.add
          local.tee 4
          i32.const -4
          i32.add
          local.get 0
          local.get 0
          i64.const 10000
          i64.div_u
          local.tee 5
          i64.const -10000
          i64.mul
          i64.add
          i32.wrap_i64
          local.tee 6
          i32.const 100
          i32.div_u
          local.tee 7
          i32.const 1
          i32.shl
          i32.const 33730
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 4
          i32.const -2
          i32.add
          local.get 7
          i32.const -100
          i32.mul
          local.get 6
          i32.add
          i32.const 1
          i32.shl
          i32.const 33730
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 3
          i32.const -4
          i32.add
          local.set 3
          local.get 0
          i64.const 99999999
          i64.gt_u
          local.set 4
          local.get 5
          local.set 0
          local.get 4
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 0
      local.set 5
    end
    block  ;; label = @1
      local.get 5
      i32.wrap_i64
      local.tee 4
      i32.const 99
      i32.le_s
      br_if 0 (;@1;)
      local.get 2
      i32.const 9
      i32.add
      local.get 3
      i32.const -2
      i32.add
      local.tee 3
      i32.add
      local.get 5
      i32.wrap_i64
      local.tee 6
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 4
      i32.const -100
      i32.mul
      local.get 6
      i32.add
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 33730
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.const 9
        i32.gt_s
        br_if 0 (;@2;)
        local.get 2
        i32.const 9
        i32.add
        local.get 3
        i32.const -1
        i32.add
        local.tee 3
        i32.add
        local.get 4
        i32.const 48
        i32.add
        i32.store8
        br 1 (;@1;)
      end
      local.get 2
      i32.const 9
      i32.add
      local.get 3
      i32.const -2
      i32.add
      local.tee 3
      i32.add
      local.get 4
      i32.const 1
      i32.shl
      i32.const 33730
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    local.get 1
    i32.const 34148
    i32.const 0
    local.get 2
    i32.const 9
    i32.add
    local.get 3
    i32.add
    i32.const 39
    local.get 3
    i32.sub
    call $core::fmt::Formatter::pad_integral::hedb0fe99a5f5806f
    local.set 3
    local.get 2
    i32.const 48
    i32.add
    global.set 0
    local.get 3)
  (func $bxa_abi::bxa::common::<impl_bxa_abi::bxa::ToBXAString_for_bxa_std::types::H160>::to_bxa_string::h2a0079dc3b7fcaec (type 7) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i32.load align=1
    i32.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=1
    i64.store
    local.get 2
    local.get 1
    i64.load align=1
    i64.store offset=8
    local.get 2
    i32.const 28
    i32.add
    local.set 3
    i32.const 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 2
              i32.const 8
              i32.add
              local.get 4
              i32.add
              local.tee 1
              i32.load8_u
              br_if 4 (;@1;)
              local.get 1
              i32.const 1
              i32.add
              i32.load8_u
              br_if 1 (;@4;)
              local.get 1
              i32.const 2
              i32.add
              i32.load8_u
              br_if 2 (;@3;)
              local.get 1
              i32.const 3
              i32.add
              i32.load8_u
              br_if 3 (;@2;)
              local.get 4
              i32.const 4
              i32.add
              local.set 4
              local.get 3
              local.get 1
              i32.const 4
              i32.add
              i32.sub
              i32.const 3
              i32.gt_u
              br_if 0 (;@5;)
            end
            local.get 4
            i32.const 20
            i32.eq
            br_if 3 (;@1;)
            loop  ;; label = @5
              local.get 2
              i32.const 8
              i32.add
              local.get 4
              i32.add
              i32.load8_u
              br_if 4 (;@1;)
              local.get 4
              i32.const 1
              i32.add
              local.tee 4
              i32.const 20
              i32.ne
              br_if 0 (;@5;)
              br 4 (;@1;)
            end
          end
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          br 2 (;@1;)
        end
        local.get 4
        i32.const 2
        i32.add
        local.set 4
        br 1 (;@1;)
      end
      local.get 4
      i32.const 3
      i32.add
      local.set 4
    end
    local.get 2
    i32.const 20
    local.get 4
    i32.sub
    i32.const 138
    i32.mul
    local.tee 5
    i32.const 100
    i32.div_u
    local.tee 6
    i32.const 1
    i32.add
    local.tee 7
    i32.const 1
    call $alloc::raw_vec::RawVec<T_A>::allocate_in::h0630cf576e49aff5
    local.get 2
    i32.load offset=4
    local.set 8
    local.get 2
    i32.load
    local.set 9
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 19
          i32.gt_u
          br_if 0 (;@3;)
          local.get 4
          local.set 10
          local.get 6
          local.set 11
          loop  ;; label = @4
            local.get 2
            i32.const 8
            i32.add
            local.get 10
            i32.add
            i32.load8_u
            local.set 12
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 6
                  local.get 11
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 6
                  local.set 1
                  local.get 12
                  i32.eqz
                  br_if 2 (;@5;)
                  br 1 (;@6;)
                end
                local.get 6
                local.set 1
              end
              loop  ;; label = @6
                local.get 6
                local.get 1
                i32.lt_u
                br_if 4 (;@2;)
                local.get 9
                local.get 1
                i32.add
                local.tee 3
                local.get 3
                i32.load8_u
                i32.const 8
                i32.shl
                local.get 12
                i32.add
                local.tee 3
                local.get 3
                i32.const 58
                i32.div_u
                local.tee 12
                i32.const -58
                i32.mul
                i32.add
                i32.store8
                local.get 1
                i32.const -1
                i32.add
                i32.const 0
                local.get 1
                select
                local.tee 1
                local.get 11
                i32.gt_u
                br_if 0 (;@6;)
                local.get 3
                i32.const 57
                i32.gt_u
                br_if 0 (;@6;)
              end
            end
            local.get 1
            local.set 11
            local.get 10
            i32.const 1
            i32.add
            local.tee 10
            i32.const 20
            i32.lt_u
            br_if 0 (;@4;)
          end
        end
        local.get 9
        local.get 7
        i32.add
        local.set 12
        i32.const 0
        local.set 3
        local.get 9
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 5
                  i32.const 300
                  i32.lt_u
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 3
                  loop  ;; label = @8
                    local.get 9
                    local.get 3
                    i32.add
                    local.tee 1
                    i32.load8_u
                    br_if 5 (;@3;)
                    local.get 1
                    i32.const 1
                    i32.add
                    i32.load8_u
                    br_if 2 (;@6;)
                    local.get 1
                    i32.const 2
                    i32.add
                    i32.load8_u
                    br_if 3 (;@5;)
                    local.get 1
                    i32.const 3
                    i32.add
                    i32.load8_u
                    br_if 4 (;@4;)
                    local.get 3
                    i32.const 4
                    i32.add
                    local.set 3
                    local.get 12
                    local.get 1
                    i32.const 4
                    i32.add
                    i32.sub
                    i32.const 3
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                  local.get 9
                  local.get 3
                  i32.add
                  local.set 1
                end
                local.get 1
                local.get 12
                i32.eq
                br_if 3 (;@3;)
                loop  ;; label = @7
                  local.get 1
                  i32.load8_u
                  br_if 4 (;@3;)
                  local.get 3
                  i32.const 1
                  i32.add
                  local.set 3
                  local.get 12
                  local.get 1
                  i32.const 1
                  i32.add
                  local.tee 1
                  i32.ne
                  br_if 0 (;@7;)
                  br 4 (;@3;)
                end
              end
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              br 2 (;@3;)
            end
            local.get 3
            i32.const 2
            i32.add
            local.set 3
            br 1 (;@3;)
          end
          local.get 3
          i32.const 3
          i32.add
          local.set 3
        end
        i32.const 0
        local.set 11
        local.get 2
        i32.const 0
        i32.store offset=40
        local.get 2
        i64.const 1
        i64.store offset=32
        block  ;; label = @3
          local.get 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.const -1
          i32.add
          local.set 12
          local.get 2
          i32.const 40
          i32.add
          local.set 10
          i32.const 1
          local.set 4
          i32.const 0
          local.set 1
          loop  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.get 11
              i32.ne
              br_if 0 (;@5;)
              local.get 2
              i32.const 32
              i32.add
              local.get 11
              i32.const 1
              call $alloc::raw_vec::RawVec<T_A>::reserve::h5c1a7b75ee2471fc
              local.get 10
              i32.load
              local.set 1
              local.get 2
              i32.load offset=32
              local.set 4
            end
            local.get 4
            local.get 1
            i32.add
            i32.const 49
            i32.store8
            local.get 10
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.store
            local.get 12
            i32.eqz
            br_if 1 (;@3;)
            local.get 12
            i32.const -1
            i32.add
            local.set 12
            local.get 2
            i32.load offset=36
            local.set 11
            br 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 3
          local.get 6
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          i32.const 44
          i32.add
          i32.const 2
          i32.or
          local.set 10
          local.get 2
          i32.const 40
          i32.add
          local.set 11
          loop  ;; label = @4
            local.get 9
            local.get 3
            i32.add
            i32.load8_u
            local.tee 1
            i32.const 57
            i32.gt_u
            br_if 3 (;@1;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 33144
                i32.add
                i32.load8_s
                local.tee 12
                i32.const -1
                i32.le_s
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 11
                  i32.load
                  local.tee 1
                  local.get 2
                  i32.load offset=36
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 32
                  i32.add
                  local.get 1
                  i32.const 1
                  call $alloc::raw_vec::RawVec<T_A>::reserve::h5c1a7b75ee2471fc
                  local.get 11
                  i32.load
                  local.set 1
                end
                local.get 2
                i32.load offset=32
                local.get 1
                i32.add
                local.get 12
                i32.store8
                local.get 11
                local.get 1
                i32.const 1
                i32.add
                i32.store
                br 1 (;@5;)
              end
              local.get 2
              i32.const 0
              i32.store offset=44
              local.get 2
              local.get 12
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=45
              local.get 2
              local.get 12
              i32.const 192
              i32.and
              i32.const 6
              i32.shr_u
              i32.const 192
              i32.or
              i32.store8 offset=44
              local.get 2
              i32.const 32
              i32.add
              local.get 2
              i32.const 44
              i32.add
              local.get 10
              call $<alloc::vec::Vec<T>_as_alloc::vec::SpecExtend<&T_core::slice::Iter<T>>>::spec_extend::h0f66faf24fcc23f6
            end
            local.get 3
            local.get 6
            i32.lt_u
            local.set 1
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 1
            br_if 0 (;@4;)
          end
        end
        local.get 0
        local.get 2
        i64.load offset=32
        i64.store align=4
        local.get 0
        i32.const 8
        i32.add
        local.get 2
        i32.const 32
        i32.add
        i32.const 8
        i32.add
        i32.load
        i32.store
        block  ;; label = @3
          local.get 8
          i32.eqz
          br_if 0 (;@3;)
          local.get 9
          local.get 8
          call $__rust_dealloc
        end
        local.get 2
        i32.const 48
        i32.add
        global.set 0
        return
      end
      i32.const 34332
      local.get 1
      local.get 7
      call $core::panicking::panic_bounds_check::h8e3d7d625bb942bb
      unreachable
    end
    i32.const 34348
    local.get 1
    i32.const 58
    call $core::panicking::panic_bounds_check::h8e3d7d625bb942bb
    unreachable)
  (func $alloc::raw_vec::RawVec<T_A>::reserve::h5c1a7b75ee2471fc (type 9) (param i32 i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 3
      local.get 1
      i32.sub
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 2
          i32.add
          local.tee 2
          local.get 1
          i32.lt_u
          br_if 0 (;@3;)
          local.get 3
          i32.const 1
          i32.shl
          local.tee 1
          local.get 2
          local.get 2
          local.get 1
          i32.lt_u
          select
          local.tee 1
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.load
              local.get 3
              local.get 1
              call $__rust_realloc
              local.tee 2
              i32.eqz
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            local.get 1
            i32.const 1
            call $__rust_alloc
            local.tee 2
            br_if 2 (;@2;)
          end
          unreachable
          unreachable
        end
        call $alloc::raw_vec::capacity_overflow::hf2acb48acb5ae20a
        unreachable
      end
      local.get 0
      local.get 2
      i32.store
      local.get 0
      i32.const 4
      i32.add
      local.get 1
      i32.store
    end)
  (func $<alloc::vec::Vec<T>_as_alloc::vec::SpecExtend<&T_core::slice::Iter<T>>>::spec_extend::h0f66faf24fcc23f6 (type 9) (param i32 i32 i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load offset=8
    local.get 2
    local.get 1
    i32.sub
    local.tee 2
    call $alloc::raw_vec::RawVec<T_A>::reserve::h5c1a7b75ee2471fc
    local.get 0
    local.get 0
    i32.load offset=8
    local.tee 3
    local.get 2
    i32.add
    i32.store offset=8
    local.get 3
    local.get 0
    i32.load
    i32.add
    local.get 2
    local.get 1
    local.get 2
    call $core::slice::<impl__T_>::copy_from_slice::hc4123bc55a8a8b08)
  (func $core::panicking::panic_bounds_check::h8e3d7d625bb942bb (type 9) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 2
    i32.store offset=4
    local.get 3
    local.get 1
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 5
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 5
    i32.store offset=36
    local.get 3
    i64.const 2
    i64.store offset=12 align=4
    local.get 3
    i32.const 34460
    i32.store offset=8
    local.get 3
    local.get 3
    i32.store offset=40
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=32
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    call $core::panicking::panic_fmt::h8a97af3c4a58de81
    unreachable)
  (func $<bxa_abi::bxa::Error_as_core::fmt::Debug>::fmt::hebd60cc42c9cdcff (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load8_u
                  i32.const -1
                  i32.add
                  local.tee 0
                  i32.const 5
                  i32.gt_u
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 0
                    br_table 0 (;@8;) 2 (;@6;) 3 (;@5;) 4 (;@4;) 5 (;@3;) 6 (;@2;) 0 (;@8;)
                  end
                  local.get 2
                  local.get 1
                  i32.load offset=24
                  i32.const 32962
                  i32.const 10
                  local.get 1
                  i32.const 28
                  i32.add
                  i32.load
                  i32.load offset=12
                  call_indirect (type 0)
                  i32.store8 offset=8
                  local.get 2
                  local.get 1
                  i32.store
                  local.get 2
                  i32.const 0
                  i32.store8 offset=9
                  local.get 2
                  i32.const 0
                  i32.store offset=4
                  br 6 (;@1;)
                end
                local.get 2
                local.get 1
                i32.load offset=24
                i32.const 32951
                i32.const 11
                local.get 1
                i32.const 28
                i32.add
                i32.load
                i32.load offset=12
                call_indirect (type 0)
                i32.store8 offset=8
                local.get 2
                local.get 1
                i32.store
                local.get 2
                i32.const 0
                i32.store8 offset=9
                local.get 2
                i32.const 0
                i32.store offset=4
                br 5 (;@1;)
              end
              local.get 2
              local.get 1
              i32.load offset=24
              i32.const 32972
              i32.const 10
              local.get 1
              i32.const 28
              i32.add
              i32.load
              i32.load offset=12
              call_indirect (type 0)
              i32.store8 offset=8
              local.get 2
              local.get 1
              i32.store
              local.get 2
              i32.const 0
              i32.store8 offset=9
              local.get 2
              i32.const 0
              i32.store offset=4
              br 4 (;@1;)
            end
            local.get 2
            local.get 1
            i32.load offset=24
            i32.const 32982
            i32.const 18
            local.get 1
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 0)
            i32.store8 offset=8
            local.get 2
            local.get 1
            i32.store
            local.get 2
            i32.const 0
            i32.store8 offset=9
            local.get 2
            i32.const 0
            i32.store offset=4
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.load offset=24
          i32.const 33000
          i32.const 13
          local.get 1
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 0)
          i32.store8 offset=8
          local.get 2
          local.get 1
          i32.store
          local.get 2
          i32.const 0
          i32.store8 offset=9
          local.get 2
          i32.const 0
          i32.store offset=4
          br 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.load offset=24
        i32.const 33013
        i32.const 14
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 0)
        i32.store8 offset=8
        local.get 2
        local.get 1
        i32.store
        local.get 2
        i32.const 0
        i32.store8 offset=9
        local.get 2
        i32.const 0
        i32.store offset=4
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.load offset=24
      i32.const 33027
      i32.const 5
      local.get 1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 0)
      i32.store8 offset=8
      local.get 2
      local.get 1
      i32.store
      local.get 2
      i32.const 0
      i32.store8 offset=9
      local.get 2
      i32.const 0
      i32.store offset=4
    end
    local.get 2
    call $core::fmt::builders::DebugTuple::finish::h4801ea02cabff854
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func $core::fmt::builders::DebugTuple::finish::h4801ea02cabff854 (type 3) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.load8_u offset=8
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 255
      i32.and
      local.set 3
      i32.const 1
      local.set 1
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load
          local.tee 3
          i32.load8_u
          i32.const 4
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 1
          local.set 1
          local.get 3
          i32.load offset=24
          i32.const 34119
          i32.const 1
          local.get 3
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 0)
          br_if 1 (;@2;)
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.set 2
        end
        block  ;; label = @3
          local.get 2
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.load8_u offset=9
          i32.eqz
          br_if 0 (;@3;)
          i32.const 1
          local.set 1
          local.get 0
          i32.load
          local.tee 3
          i32.load offset=24
          i32.const 34118
          i32.const 1
          local.get 3
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 0)
          br_if 1 (;@2;)
        end
        local.get 0
        i32.load
        local.tee 1
        i32.load offset=24
        i32.const 34120
        i32.const 1
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 0)
        local.set 1
      end
      local.get 0
      i32.const 8
      i32.add
      local.get 1
      i32.store8
    end
    local.get 1
    i32.const 255
    i32.and
    i32.const 0
    i32.ne)
  (func $core::ptr::real_drop_in_place::hd0094952c9696ad1 (type 5) (param i32))
  (func $<&mut_W_as_core::fmt::Write>::write_str::hf3451c251786d6da (type 0) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 1
    local.get 2
    i32.add
    call $<alloc::vec::Vec<T>_as_alloc::vec::SpecExtend<&T_core::slice::Iter<T>>>::spec_extend::h0f66faf24fcc23f6
    i32.const 0)
  (func $<&mut_W_as_core::fmt::Write>::write_char::h4bec29724944e39b (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.ge_u
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load offset=8
          local.tee 3
          local.get 0
          i32.load offset=4
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          i32.const 1
          call $alloc::raw_vec::RawVec<T_A>::reserve::h5c1a7b75ee2471fc
          local.get 0
          i32.const 8
          i32.add
          i32.load
          local.set 3
        end
        local.get 0
        i32.load
        local.get 3
        i32.add
        local.get 1
        i32.store8
        local.get 0
        i32.const 8
        i32.add
        local.tee 1
        local.get 1
        i32.load
        i32.const 1
        i32.add
        i32.store
        br 1 (;@1;)
      end
      local.get 2
      i32.const 0
      i32.store offset=12
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.ge_u
          br_if 0 (;@3;)
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 31
          i32.and
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 1
          i32.const 65535
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 15
          i32.and
          i32.const 224
          i32.or
          i32.store8 offset=12
          i32.const 3
          local.set 1
          br 1 (;@2;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=15
        local.get 2
        local.get 1
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.store8 offset=12
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=14
        local.get 2
        local.get 1
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        i32.const 4
        local.set 1
      end
      local.get 0
      local.get 2
      i32.const 12
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      i32.add
      call $<alloc::vec::Vec<T>_as_alloc::vec::SpecExtend<&T_core::slice::Iter<T>>>::spec_extend::h0f66faf24fcc23f6
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    i32.const 0)
  (func $<&mut_W_as_core::fmt::Write>::write_fmt::h13b3254cf0bee8a7 (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 34260
    local.get 2
    i32.const 8
    i32.add
    call $core::fmt::write::hf7a0d3bddcb07d0c
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_alloc::string::String>::decode::hb9a0cf8d2f134f07 (type 7) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    i32.const 4
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load offset=8
                local.tee 4
                local.get 1
                i32.load offset=4
                local.tee 5
                i32.ge_u
                br_if 0 (;@6;)
                local.get 4
                i32.const 1
                i32.add
                local.tee 6
                local.get 5
                i32.gt_u
                br_if 0 (;@6;)
                local.get 1
                i32.load
                local.tee 7
                local.get 4
                i32.add
                i32.load8_u
                local.set 8
                local.get 1
                i32.const 8
                i32.add
                local.get 6
                i32.store
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 8
                      i32.const 255
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 8
                      i32.const 254
                      i32.ne
                      br_if 1 (;@8;)
                      local.get 4
                      i32.const 3
                      i32.add
                      local.tee 4
                      local.get 5
                      i32.gt_u
                      br_if 3 (;@6;)
                      local.get 6
                      i32.const -2
                      i32.ge_u
                      br_if 5 (;@4;)
                      local.get 1
                      i32.const 8
                      i32.add
                      local.get 4
                      i32.store
                      local.get 7
                      local.get 6
                      i32.add
                      i32.load16_u align=1
                      local.set 8
                      i32.const 3
                      local.set 3
                      br 2 (;@7;)
                    end
                    local.get 4
                    i32.const 5
                    i32.add
                    local.tee 4
                    local.get 5
                    i32.gt_u
                    br_if 2 (;@6;)
                    local.get 6
                    i32.const -4
                    i32.ge_u
                    br_if 4 (;@4;)
                    local.get 1
                    i32.const 8
                    i32.add
                    local.get 4
                    i32.store
                    local.get 7
                    local.get 6
                    i32.add
                    i32.load align=1
                    local.set 8
                    i32.const 5
                    local.set 3
                    br 1 (;@7;)
                  end
                  i32.const 1
                  local.set 3
                  local.get 6
                  local.set 4
                end
                i32.const 1
                i32.const 3
                i32.const 5
                local.get 8
                i32.const 65536
                i32.lt_u
                select
                local.get 8
                i32.const 254
                i32.lt_u
                select
                local.get 3
                i32.eq
                local.tee 3
                br_if 1 (;@5;)
                i32.const 0
                i32.const 5
                local.get 3
                select
                local.set 3
              end
              local.get 0
              i32.const 1
              i32.store8
              local.get 0
              local.get 3
              i32.store8 offset=1
              br 4 (;@1;)
            end
            local.get 4
            local.get 8
            i32.add
            local.tee 3
            local.get 4
            i32.lt_u
            br_if 1 (;@3;)
            local.get 5
            local.get 3
            i32.lt_u
            br_if 2 (;@2;)
            local.get 1
            i32.load
            local.get 4
            i32.add
            local.set 4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 8
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 8
                  i32.const -7
                  i32.add
                  i32.const 0
                  local.get 8
                  i32.const 7
                  i32.gt_u
                  select
                  local.set 6
                  i32.const 0
                  local.set 3
                  loop  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              local.get 4
                                              local.get 3
                                              i32.add
                                              local.tee 7
                                              i32.load8_u
                                              local.tee 5
                                              i32.const 24
                                              i32.shl
                                              i32.const 24
                                              i32.shr_s
                                              local.tee 9
                                              i32.const 0
                                              i32.lt_s
                                              br_if 0 (;@21;)
                                              local.get 7
                                              i32.const 3
                                              i32.and
                                              i32.eqz
                                              br_if 1 (;@20;)
                                              local.get 3
                                              i32.const 1
                                              i32.add
                                              local.set 3
                                              br 12 (;@9;)
                                            end
                                            local.get 5
                                            i32.const 33424
                                            i32.add
                                            i32.load8_u
                                            local.tee 7
                                            i32.const 4
                                            i32.eq
                                            br_if 2 (;@18;)
                                            local.get 7
                                            i32.const 3
                                            i32.eq
                                            br_if 1 (;@19;)
                                            local.get 7
                                            i32.const 2
                                            i32.ne
                                            br_if 14 (;@6;)
                                            local.get 3
                                            i32.const 1
                                            i32.add
                                            local.tee 3
                                            local.get 8
                                            i32.ge_u
                                            br_if 14 (;@6;)
                                            local.get 4
                                            local.get 3
                                            i32.add
                                            i32.load8_u
                                            i32.const 192
                                            i32.and
                                            i32.const 128
                                            i32.eq
                                            br_if 10 (;@10;)
                                            br 14 (;@6;)
                                          end
                                          block  ;; label = @20
                                            local.get 3
                                            local.get 6
                                            i32.ge_u
                                            br_if 0 (;@20;)
                                            loop  ;; label = @21
                                              local.get 4
                                              local.get 3
                                              i32.add
                                              local.tee 5
                                              i32.const 4
                                              i32.add
                                              i32.load
                                              local.get 5
                                              i32.load
                                              i32.or
                                              i32.const -2139062144
                                              i32.and
                                              br_if 1 (;@20;)
                                              local.get 3
                                              i32.const 8
                                              i32.add
                                              local.tee 3
                                              local.get 6
                                              i32.lt_u
                                              br_if 0 (;@21;)
                                            end
                                          end
                                          local.get 3
                                          local.get 8
                                          i32.ge_u
                                          br_if 10 (;@9;)
                                          loop  ;; label = @20
                                            local.get 4
                                            local.get 3
                                            i32.add
                                            i32.load8_s
                                            i32.const 0
                                            i32.lt_s
                                            br_if 11 (;@9;)
                                            local.get 3
                                            i32.const 1
                                            i32.add
                                            local.tee 3
                                            local.get 8
                                            i32.lt_u
                                            br_if 0 (;@20;)
                                            br 11 (;@9;)
                                          end
                                        end
                                        local.get 3
                                        i32.const 1
                                        i32.add
                                        local.tee 7
                                        local.get 8
                                        i32.ge_u
                                        br_if 12 (;@6;)
                                        local.get 4
                                        local.get 7
                                        i32.add
                                        i32.load8_u
                                        local.set 7
                                        local.get 5
                                        i32.const 224
                                        i32.eq
                                        br_if 1 (;@17;)
                                        local.get 5
                                        i32.const 237
                                        i32.ne
                                        br_if 3 (;@15;)
                                        local.get 7
                                        i32.const 24
                                        i32.shl
                                        i32.const 24
                                        i32.shr_s
                                        i32.const -1
                                        i32.gt_s
                                        br_if 12 (;@6;)
                                        local.get 7
                                        i32.const 255
                                        i32.and
                                        i32.const 160
                                        i32.lt_u
                                        br_if 7 (;@11;)
                                        br 12 (;@6;)
                                      end
                                      local.get 3
                                      i32.const 1
                                      i32.add
                                      local.tee 7
                                      local.get 8
                                      i32.ge_u
                                      br_if 11 (;@6;)
                                      local.get 4
                                      local.get 7
                                      i32.add
                                      i32.load8_u
                                      local.set 7
                                      local.get 5
                                      i32.const 240
                                      i32.eq
                                      br_if 1 (;@16;)
                                      local.get 5
                                      i32.const 244
                                      i32.ne
                                      br_if 3 (;@14;)
                                      local.get 7
                                      i32.const 24
                                      i32.shl
                                      i32.const 24
                                      i32.shr_s
                                      i32.const -1
                                      i32.gt_s
                                      br_if 11 (;@6;)
                                      local.get 7
                                      i32.const 255
                                      i32.and
                                      i32.const 143
                                      i32.le_u
                                      br_if 4 (;@13;)
                                      br 11 (;@6;)
                                    end
                                    local.get 7
                                    i32.const 224
                                    i32.and
                                    i32.const 160
                                    i32.eq
                                    br_if 5 (;@11;)
                                    br 10 (;@6;)
                                  end
                                  local.get 7
                                  i32.const 112
                                  i32.add
                                  i32.const 255
                                  i32.and
                                  i32.const 48
                                  i32.lt_u
                                  br_if 2 (;@13;)
                                  br 9 (;@6;)
                                end
                                local.get 9
                                i32.const 31
                                i32.add
                                i32.const 255
                                i32.and
                                i32.const 12
                                i32.ge_u
                                br_if 2 (;@12;)
                                local.get 7
                                i32.const 24
                                i32.shl
                                i32.const 24
                                i32.shr_s
                                i32.const -1
                                i32.gt_s
                                br_if 8 (;@6;)
                                local.get 7
                                i32.const 255
                                i32.and
                                i32.const 191
                                i32.le_u
                                br_if 3 (;@11;)
                                br 8 (;@6;)
                              end
                              local.get 7
                              i32.const 255
                              i32.and
                              i32.const 191
                              i32.gt_u
                              br_if 7 (;@6;)
                              local.get 9
                              i32.const 15
                              i32.add
                              i32.const 255
                              i32.and
                              i32.const 2
                              i32.gt_u
                              br_if 7 (;@6;)
                              local.get 7
                              i32.const 24
                              i32.shl
                              i32.const 24
                              i32.shr_s
                              i32.const 0
                              i32.ge_s
                              br_if 7 (;@6;)
                            end
                            local.get 3
                            i32.const 2
                            i32.add
                            local.tee 5
                            local.get 8
                            i32.ge_u
                            br_if 6 (;@6;)
                            local.get 4
                            local.get 5
                            i32.add
                            i32.load8_u
                            i32.const 192
                            i32.and
                            i32.const 128
                            i32.ne
                            br_if 6 (;@6;)
                            local.get 3
                            i32.const 3
                            i32.add
                            local.tee 3
                            local.get 8
                            i32.ge_u
                            br_if 6 (;@6;)
                            local.get 4
                            local.get 3
                            i32.add
                            i32.load8_u
                            i32.const 192
                            i32.and
                            i32.const 128
                            i32.eq
                            br_if 2 (;@10;)
                            br 6 (;@6;)
                          end
                          local.get 7
                          i32.const 255
                          i32.and
                          i32.const 191
                          i32.gt_u
                          br_if 5 (;@6;)
                          local.get 9
                          i32.const 254
                          i32.and
                          i32.const 238
                          i32.ne
                          br_if 5 (;@6;)
                          local.get 7
                          i32.const 24
                          i32.shl
                          i32.const 24
                          i32.shr_s
                          i32.const 0
                          i32.ge_s
                          br_if 5 (;@6;)
                        end
                        local.get 3
                        i32.const 2
                        i32.add
                        local.tee 3
                        local.get 8
                        i32.ge_u
                        br_if 4 (;@6;)
                        local.get 4
                        local.get 3
                        i32.add
                        i32.load8_u
                        i32.const 192
                        i32.and
                        i32.const 128
                        i32.ne
                        br_if 4 (;@6;)
                      end
                      local.get 3
                      i32.const 1
                      i32.add
                      local.set 3
                    end
                    local.get 3
                    local.get 8
                    i32.lt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 2
                local.get 4
                local.get 8
                call $alloc::slice::<impl_alloc::borrow::ToOwned_for__T_>::to_owned::hafb320e4309ca6c4
                local.get 1
                i32.const 8
                i32.add
                local.tee 3
                i32.load
                local.get 8
                i32.add
                local.tee 8
                local.get 1
                i32.const 4
                i32.add
                i32.load
                i32.le_u
                br_if 1 (;@5;)
                local.get 0
                i32.const 1025
                i32.store16
                local.get 2
                i32.load offset=4
                local.tee 3
                i32.eqz
                br_if 5 (;@1;)
                local.get 2
                i32.load
                local.get 3
                call $__rust_dealloc
                br 5 (;@1;)
              end
              local.get 0
              i32.const 1537
              i32.store16
              br 4 (;@1;)
            end
            local.get 0
            i32.const 0
            i32.store8
            local.get 0
            i32.const 4
            i32.add
            local.get 2
            i64.load
            i64.store align=4
            local.get 3
            local.get 8
            i32.store
            local.get 0
            i32.const 12
            i32.add
            local.get 2
            i32.const 8
            i32.add
            i32.load
            i32.store
            br 3 (;@1;)
          end
          local.get 6
          local.get 4
          call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
          unreachable
        end
        local.get 4
        local.get 3
        call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
        unreachable
      end
      local.get 3
      local.get 5
      call $core::slice::slice_index_len_fail::hb81ac75c4a989ce8
      unreachable
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func $alloc::slice::<impl_alloc::borrow::ToOwned_for__T_>::to_owned::hafb320e4309ca6c4 (type 9) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    i32.const 0
    call $alloc::raw_vec::RawVec<T_A>::allocate_in::h0630cf576e49aff5
    local.get 3
    i32.const 0
    i32.store offset=24
    local.get 3
    local.get 3
    i64.load offset=8
    i64.store offset=16
    local.get 3
    i32.const 16
    i32.add
    local.get 1
    local.get 1
    local.get 2
    i32.add
    call $<alloc::vec::Vec<T>_as_alloc::vec::SpecExtend<&T_core::slice::Iter<T>>>::spec_extend::h0f66faf24fcc23f6
    local.get 0
    i32.const 8
    i32.add
    local.get 3
    i32.load offset=24
    i32.store
    local.get 0
    local.get 3
    i64.load offset=16
    i64.store align=4
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func $core::slice::slice_index_order_fail::h3d34e0ef769a011f (type 7) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.const 44
    i32.add
    i32.const 5
    i32.store
    local.get 2
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i32.const 5
    i32.store offset=36
    local.get 2
    i64.const 2
    i64.store offset=12 align=4
    local.get 2
    i32.const 34524
    i32.store offset=8
    local.get 2
    local.get 2
    i32.const 4
    i32.add
    i32.store offset=40
    local.get 2
    local.get 2
    i32.store offset=32
    local.get 2
    local.get 2
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 2
    i32.const 8
    i32.add
    i32.const 34540
    call $core::panicking::panic_fmt::h8a97af3c4a58de81
    unreachable)
  (func $core::slice::slice_index_len_fail::hb81ac75c4a989ce8 (type 7) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.const 44
    i32.add
    i32.const 5
    i32.store
    local.get 2
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i32.const 5
    i32.store offset=36
    local.get 2
    i64.const 2
    i64.store offset=12 align=4
    local.get 2
    i32.const 34492
    i32.store offset=8
    local.get 2
    local.get 2
    i32.const 4
    i32.add
    i32.store offset=40
    local.get 2
    local.get 2
    i32.store offset=32
    local.get 2
    local.get 2
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 2
    i32.const 8
    i32.add
    i32.const 34508
    call $core::panicking::panic_fmt::h8a97af3c4a58de81
    unreachable)
  (func $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_alloc::string::String>::encode::h2827780ce273a6c9 (type 7) (param i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 4
        i32.const 253
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        local.get 4
        call $bxa_abi::bxa::sink::Sink::write_byte::h922998bade43d6f2
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.const 65534
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 254
        call $bxa_abi::bxa::sink::Sink::write_byte::h922998bade43d6f2
        local.get 2
        local.get 4
        i32.store16 offset=10
        local.get 1
        local.get 2
        i32.const 10
        i32.add
        local.get 2
        i32.const 12
        i32.add
        call $<alloc::vec::Vec<T>_as_alloc::vec::SpecExtend<&T_core::slice::Iter<T>>>::spec_extend::h0f66faf24fcc23f6
        br 1 (;@1;)
      end
      local.get 1
      i32.const 255
      call $bxa_abi::bxa::sink::Sink::write_byte::h922998bade43d6f2
      local.get 2
      local.get 4
      i32.store offset=12
      local.get 1
      local.get 2
      i32.const 12
      i32.add
      local.get 2
      i32.const 16
      i32.add
      call $<alloc::vec::Vec<T>_as_alloc::vec::SpecExtend<&T_core::slice::Iter<T>>>::spec_extend::h0f66faf24fcc23f6
    end
    local.get 1
    local.get 3
    local.get 3
    local.get 4
    i32.add
    call $<alloc::vec::Vec<T>_as_alloc::vec::SpecExtend<&T_core::slice::Iter<T>>>::spec_extend::h0f66faf24fcc23f6
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      call $__rust_dealloc
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func $bxa_abi::bxa::sink::Sink::write_byte::h922998bade43d6f2 (type 7) (param i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.tee 2
      local.get 0
      i32.load offset=4
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.const 1
      call $alloc::raw_vec::RawVec<T_A>::reserve::h5c1a7b75ee2471fc
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.set 2
    end
    local.get 0
    i32.load
    local.get 2
    i32.add
    local.get 1
    i32.store8
    local.get 0
    i32.const 8
    i32.add
    local.tee 0
    local.get 0
    i32.load
    i32.const 1
    i32.add
    i32.store)
  (func $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_alloc::string::String>::push_type::h3d7cbc6e59a6014e (type 7) (param i32 i32)
    local.get 1
    i32.const 8
    call $bxa_abi::bxa::sink::Sink::write_byte::h922998bade43d6f2
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.get 1
      call $__rust_dealloc
    end)
  (func $<&T_as_core::fmt::Debug>::fmt::h79c7246e3b7370d2 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load
              local.tee 3
              i32.const 16
              i32.and
              br_if 0 (;@5;)
              local.get 0
              i32.load
              local.set 4
              local.get 3
              i32.const 32
              i32.and
              br_if 1 (;@4;)
              local.get 4
              i64.extend_i32_u
              local.get 1
              call $core::fmt::num::imp::fmt_u64::h410eebb512c98a23
              local.set 0
              br 2 (;@3;)
            end
            local.get 0
            i32.load
            local.set 4
            i32.const 0
            local.set 0
            loop  ;; label = @5
              local.get 2
              local.get 0
              i32.add
              i32.const 127
              i32.add
              local.get 4
              i32.const 15
              i32.and
              local.tee 3
              i32.const 48
              i32.or
              local.get 3
              i32.const 87
              i32.add
              local.get 3
              i32.const 10
              i32.lt_u
              select
              i32.store8
              local.get 0
              i32.const -1
              i32.add
              local.set 0
              local.get 4
              i32.const 4
              i32.shr_u
              local.tee 4
              br_if 0 (;@5;)
            end
            local.get 0
            i32.const 128
            i32.add
            local.tee 4
            i32.const 129
            i32.ge_u
            br_if 2 (;@2;)
            local.get 1
            i32.const 34029
            i32.const 2
            local.get 2
            local.get 0
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get 0
            i32.sub
            call $core::fmt::Formatter::pad_integral::hedb0fe99a5f5806f
            local.set 0
            br 1 (;@3;)
          end
          i32.const 0
          local.set 0
          loop  ;; label = @4
            local.get 2
            local.get 0
            i32.add
            i32.const 127
            i32.add
            local.get 4
            i32.const 15
            i32.and
            local.tee 3
            i32.const 48
            i32.or
            local.get 3
            i32.const 55
            i32.add
            local.get 3
            i32.const 10
            i32.lt_u
            select
            i32.store8
            local.get 0
            i32.const -1
            i32.add
            local.set 0
            local.get 4
            i32.const 4
            i32.shr_u
            local.tee 4
            br_if 0 (;@4;)
          end
          local.get 0
          i32.const 128
          i32.add
          local.tee 4
          i32.const 129
          i32.ge_u
          br_if 2 (;@1;)
          local.get 1
          i32.const 34029
          i32.const 2
          local.get 2
          local.get 0
          i32.add
          i32.const 128
          i32.add
          i32.const 0
          local.get 0
          i32.sub
          call $core::fmt::Formatter::pad_integral::hedb0fe99a5f5806f
          local.set 0
        end
        local.get 2
        i32.const 128
        i32.add
        global.set 0
        local.get 0
        return
      end
      local.get 4
      i32.const 128
      call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
      unreachable
    end
    local.get 4
    i32.const 128
    call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
    unreachable)
  (func $core::fmt::Formatter::pad_integral::hedb0fe99a5f5806f (type 6) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load
    local.tee 5
    i32.const 1
    i32.and
    local.tee 6
    local.get 4
    i32.add
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      i32.const 0
      local.set 8
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.set 9
        local.get 1
        local.set 10
        loop  ;; label = @3
          local.get 8
          local.get 10
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.eq
          i32.add
          local.set 8
          local.get 10
          i32.const 1
          i32.add
          local.set 10
          local.get 9
          i32.const -1
          i32.add
          local.tee 9
          br_if 0 (;@3;)
        end
      end
      local.get 7
      local.get 2
      i32.add
      local.get 8
      i32.sub
      local.set 7
    end
    i32.const 43
    i32.const 1114112
    local.get 6
    select
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 0
                                i32.load offset=8
                                i32.const 1
                                i32.ne
                                br_if 0 (;@14;)
                                local.get 0
                                i32.const 12
                                i32.add
                                i32.load
                                local.tee 8
                                local.get 7
                                i32.le_u
                                br_if 1 (;@13;)
                                local.get 5
                                i32.const 8
                                i32.and
                                br_if 2 (;@12;)
                                local.get 8
                                local.get 7
                                i32.sub
                                local.set 10
                                i32.const 1
                                local.get 0
                                i32.load8_u offset=48
                                local.tee 8
                                local.get 8
                                i32.const 3
                                i32.eq
                                select
                                local.tee 8
                                i32.const 3
                                i32.and
                                i32.eqz
                                br_if 3 (;@11;)
                                local.get 8
                                i32.const 2
                                i32.eq
                                br_if 4 (;@10;)
                                i32.const 0
                                local.set 11
                                local.get 10
                                local.set 8
                                br 5 (;@9;)
                              end
                              i32.const 1
                              local.set 10
                              local.get 0
                              local.get 6
                              local.get 1
                              local.get 2
                              call $core::fmt::Formatter::pad_integral::write_prefix::ha9a4dda6c99c9c72
                              br_if 12 (;@1;)
                              local.get 0
                              i32.load offset=24
                              local.get 3
                              local.get 4
                              local.get 0
                              i32.const 28
                              i32.add
                              i32.load
                              i32.load offset=12
                              call_indirect (type 0)
                              return
                            end
                            i32.const 1
                            local.set 10
                            local.get 0
                            local.get 6
                            local.get 1
                            local.get 2
                            call $core::fmt::Formatter::pad_integral::write_prefix::ha9a4dda6c99c9c72
                            br_if 11 (;@1;)
                            local.get 0
                            i32.load offset=24
                            local.get 3
                            local.get 4
                            local.get 0
                            i32.const 28
                            i32.add
                            i32.load
                            i32.load offset=12
                            call_indirect (type 0)
                            return
                          end
                          i32.const 1
                          local.set 10
                          local.get 0
                          i32.const 1
                          i32.store8 offset=48
                          local.get 0
                          i32.const 48
                          i32.store offset=4
                          local.get 0
                          local.get 6
                          local.get 1
                          local.get 2
                          call $core::fmt::Formatter::pad_integral::write_prefix::ha9a4dda6c99c9c72
                          br_if 10 (;@1;)
                          local.get 8
                          local.get 7
                          i32.sub
                          local.set 10
                          i32.const 1
                          local.get 0
                          i32.const 48
                          i32.add
                          i32.load8_u
                          local.tee 8
                          local.get 8
                          i32.const 3
                          i32.eq
                          select
                          local.tee 8
                          i32.const 3
                          i32.and
                          i32.eqz
                          br_if 3 (;@8;)
                          local.get 8
                          i32.const 2
                          i32.eq
                          br_if 4 (;@7;)
                          i32.const 0
                          local.set 7
                          local.get 10
                          local.set 8
                          br 5 (;@6;)
                        end
                        i32.const 0
                        local.set 8
                        local.get 10
                        local.set 11
                        br 1 (;@9;)
                      end
                      local.get 10
                      i32.const 1
                      i32.shr_u
                      local.set 8
                      local.get 10
                      i32.const 1
                      i32.add
                      i32.const 1
                      i32.shr_u
                      local.set 11
                    end
                    i32.const -1
                    local.set 10
                    local.get 0
                    i32.const 4
                    i32.add
                    local.set 9
                    local.get 0
                    i32.const 24
                    i32.add
                    local.set 7
                    local.get 0
                    i32.const 28
                    i32.add
                    local.set 5
                    block  ;; label = @9
                      loop  ;; label = @10
                        local.get 10
                        i32.const 1
                        i32.add
                        local.tee 10
                        local.get 8
                        i32.ge_u
                        br_if 1 (;@9;)
                        local.get 7
                        i32.load
                        local.get 9
                        i32.load
                        local.get 5
                        i32.load
                        i32.load offset=16
                        call_indirect (type 1)
                        i32.eqz
                        br_if 0 (;@10;)
                        br 5 (;@5;)
                      end
                    end
                    local.get 0
                    i32.const 4
                    i32.add
                    i32.load
                    local.set 9
                    i32.const 1
                    local.set 10
                    local.get 0
                    local.get 6
                    local.get 1
                    local.get 2
                    call $core::fmt::Formatter::pad_integral::write_prefix::ha9a4dda6c99c9c72
                    br_if 7 (;@1;)
                    local.get 0
                    i32.const 24
                    i32.add
                    local.tee 8
                    i32.load
                    local.get 3
                    local.get 4
                    local.get 0
                    i32.const 28
                    i32.add
                    local.tee 2
                    i32.load
                    i32.load offset=12
                    call_indirect (type 0)
                    br_if 7 (;@1;)
                    local.get 8
                    i32.load
                    local.set 0
                    i32.const -1
                    local.set 8
                    local.get 2
                    i32.load
                    i32.const 16
                    i32.add
                    local.set 2
                    loop  ;; label = @9
                      local.get 8
                      i32.const 1
                      i32.add
                      local.tee 8
                      local.get 11
                      i32.ge_u
                      br_if 6 (;@3;)
                      i32.const 1
                      local.set 10
                      local.get 0
                      local.get 9
                      local.get 2
                      i32.load
                      call_indirect (type 1)
                      i32.eqz
                      br_if 0 (;@9;)
                      br 8 (;@1;)
                    end
                  end
                  i32.const 0
                  local.set 8
                  local.get 10
                  local.set 7
                  br 1 (;@6;)
                end
                local.get 10
                i32.const 1
                i32.shr_u
                local.set 8
                local.get 10
                i32.const 1
                i32.add
                i32.const 1
                i32.shr_u
                local.set 7
              end
              i32.const -1
              local.set 10
              local.get 0
              i32.const 4
              i32.add
              local.set 9
              local.get 0
              i32.const 24
              i32.add
              local.set 2
              local.get 0
              i32.const 28
              i32.add
              local.set 1
              loop  ;; label = @6
                local.get 10
                i32.const 1
                i32.add
                local.tee 10
                local.get 8
                i32.ge_u
                br_if 2 (;@4;)
                local.get 2
                i32.load
                local.get 9
                i32.load
                local.get 1
                i32.load
                i32.load offset=16
                call_indirect (type 1)
                i32.eqz
                br_if 0 (;@6;)
              end
            end
            i32.const 1
            local.set 10
            br 3 (;@1;)
          end
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.set 9
          i32.const 1
          local.set 10
          local.get 0
          i32.const 24
          i32.add
          local.tee 8
          i32.load
          local.get 3
          local.get 4
          local.get 0
          i32.const 28
          i32.add
          local.tee 2
          i32.load
          i32.load offset=12
          call_indirect (type 0)
          br_if 2 (;@1;)
          local.get 8
          i32.load
          local.set 0
          i32.const -1
          local.set 8
          local.get 2
          i32.load
          i32.const 16
          i32.add
          local.set 2
          loop  ;; label = @4
            local.get 8
            i32.const 1
            i32.add
            local.tee 8
            local.get 7
            i32.ge_u
            br_if 2 (;@2;)
            i32.const 1
            local.set 10
            local.get 0
            local.get 9
            local.get 2
            i32.load
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        i32.const 0
        return
      end
      i32.const 0
      return
    end
    local.get 10)
  (func $core::slice::<impl__T_>::copy_from_slice::hc4123bc55a8a8b08 (type 2) (param i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    local.get 3
    i32.store offset=12
    block  ;; label = @1
      local.get 1
      local.get 3
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      call $memcpy
      drop
      local.get 4
      i32.const 96
      i32.add
      global.set 0
      return
    end
    local.get 4
    local.get 4
    i32.const 8
    i32.add
    i32.store offset=64
    local.get 4
    local.get 4
    i32.const 12
    i32.add
    i32.store offset=68
    local.get 4
    i32.const 72
    i32.add
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get 4
    i32.const 40
    i32.add
    i32.const 20
    i32.add
    i32.const 6
    i32.store
    local.get 4
    i32.const 52
    i32.add
    i32.const 7
    i32.store
    local.get 4
    i32.const 16
    i32.add
    i32.const 20
    i32.add
    i32.const 3
    i32.store
    local.get 4
    i32.const 34148
    i32.store offset=88
    local.get 4
    i64.const 1
    i64.store offset=76 align=4
    local.get 4
    i32.const 34308
    i32.store offset=72
    local.get 4
    i32.const 7
    i32.store offset=44
    local.get 4
    i64.const 3
    i64.store offset=20 align=4
    local.get 4
    i32.const 34284
    i32.store offset=16
    local.get 4
    local.get 4
    i32.const 72
    i32.add
    i32.store offset=56
    local.get 4
    local.get 4
    i32.const 68
    i32.add
    i32.store offset=48
    local.get 4
    local.get 4
    i32.const 64
    i32.add
    i32.store offset=40
    local.get 4
    local.get 4
    i32.const 40
    i32.add
    i32.store offset=32
    local.get 4
    i32.const 16
    i32.add
    i32.const 34316
    call $core::panicking::panic_fmt::h8a97af3c4a58de81
    unreachable)
  (func $<core::fmt::Arguments_as_core::fmt::Display>::fmt::h5f719d68cf877a91 (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.const 28
    i32.add
    i32.load
    local.set 3
    local.get 1
    i32.load offset=24
    local.set 1
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 0
    i64.load align=4
    i64.store offset=8
    local.get 1
    local.get 3
    local.get 2
    i32.const 8
    i32.add
    call $core::fmt::write::hf7a0d3bddcb07d0c
    local.set 0
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (func $__rust_alloc_zeroed (type 3) (param i32) (result i32)
    local.get 0
    call $__rg_alloc_zeroed)
  (func $__rust_alloc (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__rg_alloc)
  (func $alloc::raw_vec::RawVec<T_A>::allocate_in::__closure__::he75bee96af4048ba (type 8)
    call $alloc::raw_vec::capacity_overflow::hf2acb48acb5ae20a
    unreachable)
  (func $alloc::raw_vec::capacity_overflow::hf2acb48acb5ae20a (type 8)
    i32.const 34364
    call $core::panicking::panic::hb7cb5b256fd27bcf
    unreachable)
  (func $std::panicking::rust_panic_with_hook::hda811be35d0f5267 (type 5) (param i32)
    (local i32 i32)
    i32.const 1
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=34648
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            i32.const 0
            i32.load offset=34652
            i32.const 1
            i32.add
            local.tee 1
            i32.store offset=34652
            local.get 1
            i32.const 3
            i32.lt_u
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          i32.const 0
          i64.const 4294967297
          i64.store offset=34648
        end
        i32.const 0
        i32.load offset=34656
        local.tee 2
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        i32.const 0
        local.get 2
        i32.store offset=34656
        local.get 1
        i32.const 2
        i32.lt_u
        br_if 1 (;@1;)
      end
      unreachable
      unreachable
    end
    call $rust_panic
    unreachable)
  (func $rust_panic (type 8)
    unreachable
    unreachable)
  (func $std::panicking::continue_panic_fmt::hc2cf477c81abced1 (type 5) (param i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.load offset=8
    call $core::option::Option<T>::unwrap::hc5a33c9ae5f8e105
    drop
    local.get 1
    local.get 0
    i32.const 20
    i32.add
    i64.load align=4
    i64.store offset=8
    local.get 1
    local.get 0
    i64.load offset=12 align=4
    i64.store
    local.get 1
    call $std::panicking::rust_panic_with_hook::hda811be35d0f5267
    unreachable)
  (func $core::option::Option<T>::unwrap::hc5a33c9ae5f8e105 (type 3) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      return
    end
    i32.const 34556
    call $core::panicking::panic::hb7cb5b256fd27bcf
    unreachable)
  (func $rust_begin_unwind (type 5) (param i32)
    local.get 0
    call $std::panicking::continue_panic_fmt::hc2cf477c81abced1
    unreachable)
  (func $alloc::raw_vec::RawVec<T_A>::allocate_in::__closure__::h673561f8f2f177da (type 8)
    call $alloc::raw_vec::capacity_overflow::hf2acb48acb5ae20a
    unreachable)
  (func $__rg_alloc (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $<wee_alloc::WeeAlloc_as_core::alloc::GlobalAlloc>::alloc::h5f6727536d6bc77f)
  (func $<wee_alloc::WeeAlloc_as_core::alloc::GlobalAlloc>::alloc::h5f6727536d6bc77f (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.const 1
    local.get 1
    select
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 3
      i32.add
      i32.const 2
      i32.shr_u
      local.set 0
      block  ;; label = @2
        local.get 1
        i32.const 4
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const -1
        i32.add
        local.tee 3
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 2
        i32.shl
        i32.const 34664
        i32.add
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 34660
        i32.store offset=4
        local.get 2
        local.get 3
        i32.load
        i32.store offset=12
        local.get 0
        local.get 1
        local.get 2
        i32.const 12
        i32.add
        local.get 2
        i32.const 4
        i32.add
        i32.const 34412
        call $wee_alloc::alloc_with_refill::hf098685871d9df6e
        local.set 1
        local.get 3
        local.get 2
        i32.load offset=12
        i32.store
        br 1 (;@1;)
      end
      local.get 2
      i32.const 0
      i32.load offset=34660
      i32.store offset=8
      local.get 0
      local.get 1
      local.get 2
      i32.const 8
      i32.add
      i32.const 34148
      i32.const 34436
      call $wee_alloc::alloc_with_refill::hf098685871d9df6e
      local.set 1
      i32.const 0
      local.get 2
      i32.load offset=8
      i32.store offset=34660
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func $__rg_dealloc (type 7) (param i32 i32)
    local.get 0
    local.get 1
    call $<wee_alloc::WeeAlloc_as_core::alloc::GlobalAlloc>::dealloc::h4a9e07f4c470c478)
  (func $<wee_alloc::WeeAlloc_as_core::alloc::GlobalAlloc>::dealloc::h4a9e07f4c470c478 (type 7) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      i32.store offset=4
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.const 3
        i32.add
        i32.const 2
        i32.shr_u
        i32.const -1
        i32.add
        local.tee 0
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 2
        i32.shl
        i32.const 34664
        i32.add
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 34660
        i32.store offset=8
        local.get 2
        local.get 0
        i32.load
        i32.store offset=12
        local.get 2
        i32.const 4
        i32.add
        local.get 2
        i32.const 12
        i32.add
        local.get 2
        i32.const 8
        i32.add
        i32.const 34412
        call $wee_alloc::WeeAlloc::dealloc_impl::__closure__::h78220dde08d1f3d8
        local.get 0
        local.get 2
        i32.load offset=12
        i32.store
        br 1 (;@1;)
      end
      local.get 2
      i32.const 0
      i32.load offset=34660
      i32.store offset=12
      local.get 2
      i32.const 4
      i32.add
      local.get 2
      i32.const 12
      i32.add
      i32.const 34148
      i32.const 34436
      call $wee_alloc::WeeAlloc::dealloc_impl::__closure__::h78220dde08d1f3d8
      i32.const 0
      local.get 2
      i32.load offset=12
      i32.store offset=34660
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func $__rg_realloc (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      i32.const 1
      call $<wee_alloc::WeeAlloc_as_core::alloc::GlobalAlloc>::alloc::h5f6727536d6bc77f
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      local.get 2
      local.get 1
      local.get 1
      local.get 2
      i32.gt_u
      select
      call $memcpy
      drop
      local.get 0
      local.get 1
      call $<wee_alloc::WeeAlloc_as_core::alloc::GlobalAlloc>::dealloc::h4a9e07f4c470c478
    end
    local.get 3)
  (func $__rg_alloc_zeroed (type 3) (param i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.const 1
      call $<wee_alloc::WeeAlloc_as_core::alloc::GlobalAlloc>::alloc::h5f6727536d6bc77f
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 0
      local.get 0
      call $memset
      drop
    end
    local.get 1)
  (func $<wee_alloc::size_classes::SizeClassAllocPolicy_as_wee_alloc::AllocPolicy>::new_cell_for_free_list::h7f322e3989781476 (type 2) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 1
    i32.load
    local.tee 1
    i32.load
    i32.store offset=12
    local.get 2
    i32.const 2
    i32.add
    local.tee 2
    local.get 2
    i32.mul
    local.tee 2
    i32.const 2048
    local.get 2
    i32.const 2048
    i32.gt_u
    select
    local.tee 5
    i32.const 4
    local.get 4
    i32.const 12
    i32.add
    i32.const 34148
    i32.const 34388
    call $wee_alloc::alloc_with_refill::hf098685871d9df6e
    local.set 2
    local.get 1
    local.get 4
    i32.load offset=12
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i64.const 0
        i64.store offset=4 align=4
        local.get 2
        local.get 2
        local.get 5
        i32.const 2
        i32.shl
        i32.add
        i32.const 2
        i32.or
        i32.store
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      i32.const 1
      local.set 1
    end
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func $wee_alloc::alloc_with_refill::hf098685871d9df6e (type 6) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 5
    global.set 0
    block  ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      call $wee_alloc::alloc_first_fit::heb08c623bbd02e66
      local.tee 6
      br_if 0 (;@1;)
      local.get 5
      i32.const 8
      i32.add
      local.get 3
      local.get 0
      local.get 1
      local.get 4
      i32.load offset=12
      call_indirect (type 2)
      i32.const 0
      local.set 6
      local.get 5
      i32.load offset=8
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=12
      local.tee 6
      local.get 2
      i32.load
      i32.store offset=8
      local.get 2
      local.get 6
      i32.store
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      call $wee_alloc::alloc_first_fit::heb08c623bbd02e66
      local.set 6
    end
    local.get 5
    i32.const 16
    i32.add
    global.set 0
    local.get 6)
  (func $core::ptr::real_drop_in_place::hb362d9cbd0511fba (type 5) (param i32))
  (func $<wee_alloc::size_classes::SizeClassAllocPolicy_as_wee_alloc::AllocPolicy>::min_cell_size::h449f13d5e04898a2 (type 1) (param i32 i32) (result i32)
    local.get 1)
  (func $<wee_alloc::size_classes::SizeClassAllocPolicy_as_wee_alloc::AllocPolicy>::should_merge_adjacent_free_cells::h51f2062887788390 (type 3) (param i32) (result i32)
    i32.const 0)
  (func $<wee_alloc::LargeAllocPolicy_as_wee_alloc::AllocPolicy>::new_cell_for_free_list::he8633747b3e68f20 (type 2) (param i32 i32 i32 i32)
    (local i32)
    i32.const 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        local.get 2
        i32.const 2
        i32.shl
        local.tee 2
        local.get 3
        i32.const 3
        i32.shl
        i32.const 16384
        i32.add
        local.tee 3
        local.get 3
        local.get 2
        i32.lt_u
        select
        i32.const 65543
        i32.add
        local.tee 2
        i32.const 16
        i32.shr_u
        memory.grow
        local.tee 3
        i32.const 16
        i32.shl
        local.get 3
        i32.const -1
        i32.eq
        select
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i64.const 0
        i64.store offset=4 align=4
        local.get 3
        local.get 3
        local.get 2
        i32.const -65536
        i32.and
        i32.add
        i32.const 2
        i32.or
        i32.store
        br 1 (;@1;)
      end
      i32.const 1
      local.set 4
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store)
  (func $<wee_alloc::LargeAllocPolicy_as_wee_alloc::AllocPolicy>::min_cell_size::h36473a24a292ef1e (type 1) (param i32 i32) (result i32)
    i32.const 512)
  (func $<wee_alloc::LargeAllocPolicy_as_wee_alloc::AllocPolicy>::should_merge_adjacent_free_cells::h9fb2f0c3765940e8 (type 3) (param i32) (result i32)
    i32.const 1)
  (func $wee_alloc::alloc_first_fit::heb08c623bbd02e66 (type 6) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load
            local.tee 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const -1
            i32.add
            local.set 6
            local.get 0
            i32.const 2
            i32.shl
            local.set 7
            i32.const 0
            local.get 1
            i32.sub
            local.set 8
            local.get 4
            i32.const 16
            i32.add
            local.set 9
            loop  ;; label = @5
              local.get 5
              i32.const 8
              i32.add
              local.set 4
              block  ;; label = @6
                local.get 5
                i32.load offset=8
                local.tee 10
                i32.const 1
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                loop  ;; label = @7
                  local.get 4
                  local.get 10
                  i32.const -2
                  i32.and
                  i32.store
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 5
                      i32.load offset=4
                      local.tee 10
                      i32.const -4
                      i32.and
                      local.tee 4
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 0
                      local.get 4
                      local.get 4
                      i32.load8_u
                      i32.const 1
                      i32.and
                      select
                      local.set 1
                      br 1 (;@8;)
                    end
                    i32.const 0
                    local.set 1
                  end
                  block  ;; label = @8
                    local.get 5
                    i32.load
                    local.tee 11
                    i32.const -4
                    i32.and
                    local.tee 12
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 11
                    i32.const 2
                    i32.and
                    br_if 0 (;@8;)
                    local.get 12
                    local.get 12
                    i32.load offset=4
                    i32.const 3
                    i32.and
                    local.get 4
                    i32.or
                    i32.store offset=4
                    local.get 5
                    i32.const 4
                    i32.add
                    i32.load
                    local.tee 10
                    i32.const -4
                    i32.and
                    local.set 4
                  end
                  block  ;; label = @8
                    local.get 4
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 4
                    local.get 4
                    i32.load
                    i32.const 3
                    i32.and
                    local.get 5
                    i32.load
                    i32.const -4
                    i32.and
                    i32.or
                    i32.store
                    local.get 5
                    i32.const 4
                    i32.add
                    i32.load
                    local.set 10
                  end
                  local.get 5
                  i32.const 4
                  i32.add
                  local.get 10
                  i32.const 3
                  i32.and
                  i32.store
                  local.get 5
                  local.get 5
                  i32.load
                  local.tee 4
                  i32.const 3
                  i32.and
                  i32.store
                  block  ;; label = @8
                    local.get 4
                    i32.const 2
                    i32.and
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 1
                    local.get 1
                    i32.load
                    i32.const 2
                    i32.or
                    i32.store
                  end
                  local.get 2
                  local.get 1
                  i32.store
                  local.get 1
                  i32.const 8
                  i32.add
                  local.set 4
                  local.get 1
                  local.set 5
                  local.get 1
                  i32.load offset=8
                  local.tee 10
                  i32.const 1
                  i32.and
                  br_if 0 (;@7;)
                end
                local.get 1
                local.set 5
              end
              block  ;; label = @6
                local.get 5
                i32.load
                i32.const -4
                i32.and
                local.tee 1
                local.get 4
                i32.sub
                local.get 7
                i32.lt_u
                br_if 0 (;@6;)
                local.get 4
                local.get 3
                local.get 0
                local.get 9
                i32.load
                call_indirect (type 1)
                i32.const 2
                i32.shl
                i32.add
                i32.const 8
                i32.add
                local.get 1
                local.get 7
                i32.sub
                local.get 8
                i32.and
                local.tee 1
                i32.le_u
                br_if 3 (;@3;)
                local.get 6
                local.get 4
                i32.and
                i32.eqz
                br_if 4 (;@2;)
              end
              local.get 2
              local.get 5
              i32.load offset=8
              local.tee 5
              i32.store
              local.get 5
              br_if 0 (;@5;)
            end
          end
          i32.const 0
          return
        end
        local.get 1
        i32.const 0
        i32.store
        local.get 1
        i32.const -8
        i32.add
        local.tee 1
        i64.const 0
        i64.store align=4
        local.get 1
        local.get 5
        i32.load
        i32.const -4
        i32.and
        i32.store
        block  ;; label = @3
          local.get 5
          i32.load
          local.tee 12
          i32.const -4
          i32.and
          local.tee 10
          i32.eqz
          br_if 0 (;@3;)
          local.get 12
          i32.const 2
          i32.and
          br_if 0 (;@3;)
          local.get 10
          local.get 10
          i32.load offset=4
          i32.const 3
          i32.and
          local.get 1
          i32.or
          i32.store offset=4
        end
        local.get 1
        local.get 1
        i32.load offset=4
        i32.const 3
        i32.and
        local.get 5
        i32.or
        i32.store offset=4
        local.get 5
        local.get 5
        i32.load
        i32.const 3
        i32.and
        local.get 1
        i32.or
        i32.store
        local.get 4
        local.get 4
        i32.load
        i32.const -2
        i32.and
        i32.store
        local.get 5
        i32.load
        local.tee 4
        i32.const 2
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        local.get 4
        i32.const -3
        i32.and
        i32.store
        local.get 1
        local.get 1
        i32.load
        i32.const 2
        i32.or
        i32.store
        br 1 (;@1;)
      end
      local.get 2
      local.get 4
      i32.load
      i32.const -4
      i32.and
      i32.store
      local.get 5
      local.set 1
    end
    local.get 1
    local.get 1
    i32.load
    i32.const 1
    i32.or
    i32.store
    local.get 1
    i32.const 8
    i32.add)
  (func $core::ptr::real_drop_in_place::hb362d9cbd0511fba.143 (type 5) (param i32))
  (func $core::ptr::real_drop_in_place::h7f1c6dba4d8a1f3e (type 5) (param i32))
  (func $wee_alloc::WeeAlloc::dealloc_impl::__closure__::h78220dde08d1f3d8 (type 2) (param i32 i32 i32 i32)
    (local i32 i32)
    local.get 0
    i32.load
    local.tee 4
    i32.const 0
    i32.store
    local.get 4
    i32.const -8
    i32.add
    local.tee 0
    local.get 0
    i32.load
    i32.const -2
    i32.and
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            local.get 3
            i32.load offset=20
            call_indirect (type 3)
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 4
              i32.const -4
              i32.add
              local.tee 3
              i32.load
              i32.const -4
              i32.and
              local.tee 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.load
              local.tee 5
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              local.get 0
              i32.load
              local.tee 1
              i32.const -4
              i32.and
              local.tee 4
              i32.eqz
              br_if 2 (;@3;)
              local.get 1
              i32.const 2
              i32.and
              br_if 2 (;@3;)
              local.get 4
              local.get 4
              i32.load offset=4
              i32.const 3
              i32.and
              local.get 2
              i32.or
              i32.store offset=4
              local.get 3
              i32.load
              local.tee 4
              i32.const -4
              i32.and
              local.tee 1
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              i32.load
              i32.const -4
              i32.and
              local.set 4
              local.get 1
              i32.load
              local.set 5
              br 3 (;@2;)
            end
            local.get 0
            i32.load
            local.tee 2
            i32.const -4
            i32.and
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const 2
            i32.and
            br_if 0 (;@4;)
            local.get 3
            i32.load8_u
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 4
            local.get 3
            i32.load offset=8
            i32.const -4
            i32.and
            i32.store
            local.get 3
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=8
            return
          end
          local.get 4
          local.get 1
          i32.load
          i32.store
          local.get 1
          local.get 0
          i32.store
          return
        end
        local.get 2
        local.set 1
      end
      local.get 1
      local.get 5
      i32.const 3
      i32.and
      local.get 4
      i32.or
      i32.store
      local.get 3
      i32.load
      local.set 4
    end
    local.get 3
    local.get 4
    i32.const 3
    i32.and
    i32.store
    local.get 0
    local.get 0
    i32.load
    local.tee 4
    i32.const 3
    i32.and
    i32.store
    block  ;; label = @1
      local.get 4
      i32.const 2
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 2
      i32.load
      i32.const 2
      i32.or
      i32.store
    end)
  (func $core::fmt::num::imp::<impl_core::fmt::Display_for_u32>::fmt::h54afc21076a8cd63 (type 1) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    local.get 1
    call $core::fmt::num::imp::fmt_u64::h410eebb512c98a23)
  (func $core::ptr::real_drop_in_place::ha16765b235858e2e (type 5) (param i32))
  (func $<T_as_core::any::Any>::type_id::hfbb4b8d9c7d9a397 (type 11) (param i32) (result i64)
    i64.const 7449047898292658853)
  (func $core::fmt::Formatter::pad_integral::write_prefix::ha9a4dda6c99c9c72 (type 12) (param i32 i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 1114112
          i32.eq
          br_if 0 (;@3;)
          i32.const 1
          local.set 4
          local.get 0
          i32.load offset=24
          local.get 1
          local.get 0
          i32.const 28
          i32.add
          i32.load
          i32.load offset=16
          call_indirect (type 1)
          br_if 1 (;@2;)
        end
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=24
        local.get 2
        local.get 3
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 0)
        local.set 4
      end
      local.get 4
      return
    end
    i32.const 0)
  (func $core::fmt::ArgumentV1::show_usize::h12bd52c1ec043e4f (type 1) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    local.get 1
    call $core::fmt::num::imp::fmt_u64::h410eebb512c98a23)
  (func $core::result::unwrap_failed::h6cbc2caa0c13403b (type 7) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 43
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store8 offset=23
    local.get 2
    i32.const 60
    i32.add
    i32.const 8
    i32.store
    local.get 2
    i32.const 44
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i32.const 4
    i32.store offset=52
    local.get 2
    i64.const 2
    i64.store offset=28 align=4
    local.get 2
    i32.const 34612
    i32.store offset=24
    local.get 2
    local.get 2
    i32.const 23
    i32.add
    i32.store offset=56
    local.get 2
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=48
    local.get 2
    local.get 2
    i32.const 48
    i32.add
    i32.store offset=40
    local.get 2
    i32.const 24
    i32.add
    i32.const 34628
    call $core::panicking::panic_fmt::h8a97af3c4a58de81
    unreachable)
  (func $bxa_api::db::get::h536c31f322ca0737 (type 7) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 32
          call $__rust_alloc_zeroed
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i64.const 137438953504
          i64.store offset=20 align=4
          local.get 2
          local.get 3
          i32.store offset=16
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 1
                              i32.const 20
                              local.get 3
                              i32.const 32
                              i32.const 0
                              call $storage_read
                              local.tee 4
                              i32.const -1
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 4
                              i32.const 33
                              i32.lt_u
                              br_if 1 (;@12;)
                              local.get 2
                              i32.const 16
                              i32.add
                              i32.const 32
                              local.get 4
                              i32.const -32
                              i32.add
                              local.tee 5
                              call $alloc::raw_vec::RawVec<T_A>::reserve::h5c1a7b75ee2471fc
                              local.get 2
                              i32.const 24
                              i32.add
                              i32.load
                              local.set 6
                              local.get 2
                              i32.load offset=16
                              local.set 3
                              local.get 5
                              i32.const 2
                              i32.lt_u
                              br_if 2 (;@11;)
                              local.get 3
                              local.get 6
                              i32.add
                              local.set 7
                              i32.const 0
                              local.set 3
                              loop  ;; label = @14
                                local.get 7
                                local.get 3
                                i32.add
                                i32.const 0
                                i32.store8
                                local.get 3
                                i32.const 2
                                i32.add
                                local.set 8
                                local.get 3
                                i32.const 1
                                i32.add
                                local.tee 9
                                local.set 3
                                local.get 8
                                local.get 5
                                i32.lt_u
                                br_if 0 (;@14;)
                              end
                              local.get 6
                              local.get 9
                              i32.add
                              local.set 6
                              local.get 7
                              local.get 9
                              i32.add
                              local.set 3
                              br 3 (;@10;)
                            end
                            local.get 3
                            i32.const 32
                            call $__rust_dealloc
                            br 7 (;@5;)
                          end
                          local.get 4
                          i32.const 32
                          i32.ne
                          br_if 2 (;@9;)
                          local.get 2
                          i32.const 24
                          i32.add
                          i32.const 32
                          i32.store
                          br 4 (;@7;)
                        end
                        local.get 3
                        local.get 6
                        i32.add
                        local.set 3
                      end
                      local.get 3
                      i32.const 0
                      i32.store8
                      local.get 6
                      i32.const 1
                      i32.add
                      local.set 3
                      br 1 (;@8;)
                    end
                    i32.const 0
                    local.set 3
                    loop  ;; label = @9
                      local.get 4
                      local.get 3
                      i32.const 1
                      i32.add
                      local.tee 3
                      i32.add
                      i32.const 32
                      i32.lt_u
                      br_if 0 (;@9;)
                    end
                    i32.const 32
                    local.get 3
                    i32.sub
                    local.set 3
                  end
                  local.get 2
                  i32.const 24
                  i32.add
                  local.get 3
                  i32.store
                  local.get 4
                  i32.const 33
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 31
                  i32.le_u
                  br_if 6 (;@1;)
                  local.get 1
                  i32.const 20
                  local.get 2
                  i32.load offset=16
                  local.tee 8
                  i32.const 32
                  i32.add
                  local.get 3
                  i32.const -32
                  i32.add
                  i32.const 32
                  call $storage_read
                  drop
                  br 1 (;@6;)
                end
                local.get 2
                i32.load offset=16
                local.tee 8
                i32.eqz
                br_if 1 (;@5;)
              end
              local.get 2
              i64.load offset=20 align=4
              local.set 10
              local.get 2
              i32.const 0
              i32.store offset=8
              local.get 2
              local.get 8
              i32.store
              local.get 2
              local.get 10
              i64.const 32
              i64.shr_u
              i64.store32 offset=4
              local.get 2
              i32.const 16
              i32.add
              local.get 2
              call $bxa_abi::bxa::stream::Stream::pop::hb1450fc294345120
              local.get 2
              i32.load8_u offset=16
              i32.const 1
              i32.eq
              br_if 3 (;@2;)
              local.get 2
              i32.const 24
              i32.add
              i64.load
              local.set 11
              i64.const 1
              local.set 12
              local.get 10
              i32.wrap_i64
              local.tee 3
              i32.eqz
              br_if 1 (;@4;)
              local.get 8
              local.get 3
              call $__rust_dealloc
              br 1 (;@4;)
            end
            i64.const 0
            local.set 12
          end
          local.get 0
          local.get 11
          i64.store offset=8
          local.get 0
          local.get 12
          i64.store
          local.get 2
          i32.const 32
          i32.add
          global.set 0
          return
        end
        unreachable
        unreachable
      end
      i32.const 34150
      local.get 2
      i32.load8_u offset=17
      call $core::result::unwrap_failed::h6cbc2caa0c13403b
      unreachable
    end
    i32.const 32
    local.get 3
    call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
    unreachable)
  (func $bxa_abi::bxa::stream::Stream::pop::hb1450fc294345120 (type 7) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=8
          local.tee 2
          i32.const 8
          i32.add
          local.tee 3
          local.get 1
          i32.load offset=4
          i32.le_u
          br_if 0 (;@3;)
          local.get 0
          i32.const 4
          i32.store8 offset=1
          i32.const 1
          local.set 1
          br 1 (;@2;)
        end
        local.get 1
        i32.const 8
        i32.add
        local.get 3
        i32.store
        local.get 2
        i32.const -9
        i32.gt_u
        br_if 1 (;@1;)
        local.get 0
        i32.const 8
        i32.add
        local.get 1
        i32.load
        local.get 2
        i32.add
        local.tee 1
        i64.load8_u offset=1
        i64.const 8
        i64.shl
        local.get 1
        i64.load8_u
        i64.or
        local.get 1
        i64.load8_u offset=2
        i64.const 16
        i64.shl
        i64.or
        local.get 1
        i64.load8_u offset=3
        i64.const 24
        i64.shl
        i64.or
        local.get 1
        i64.load8_u offset=4
        i64.const 32
        i64.shl
        i64.or
        local.get 1
        i64.load8_u offset=5
        i64.const 40
        i64.shl
        i64.or
        local.get 1
        i64.load8_u offset=6
        i64.const 48
        i64.shl
        i64.add
        local.get 1
        i64.load8_u offset=7
        i64.const 56
        i64.shl
        i64.add
        i64.store
        i32.const 0
        local.set 1
      end
      local.get 0
      local.get 1
      i32.store8
      return
    end
    local.get 2
    local.get 3
    call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
    unreachable)
  (func $bxa_api::db::put::hb5ab1c2e7688b0db (type 13) (param i32 i64)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      i32.const 128
      i32.const 1
      call $__rust_alloc
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i64.const 128
      i64.store offset=4 align=4
      local.get 2
      local.get 3
      i32.store
      local.get 2
      local.get 1
      call $bxa_abi::bxa::sink::Sink::push::hc61f671c098ef436
      local.get 0
      i32.const 20
      local.get 2
      i32.load
      local.tee 3
      local.get 2
      i32.load offset=8
      call $storage_write
      block  ;; label = @2
        local.get 2
        i32.load offset=4
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 0
        call $__rust_dealloc
      end
      local.get 2
      i32.const 16
      i32.add
      global.set 0
      return
    end
    unreachable
    unreachable)
  (func $bxa_abi::bxa::sink::Sink::push::hc61f671c098ef436 (type 13) (param i32 i64)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i64.store8 offset=8
    local.get 2
    local.get 1
    i64.const 56
    i64.shr_u
    i64.store8 offset=15
    local.get 2
    local.get 1
    i64.const 48
    i64.shr_u
    i64.store8 offset=14
    local.get 2
    local.get 1
    i64.const 40
    i64.shr_u
    i64.store8 offset=13
    local.get 2
    local.get 1
    i64.const 32
    i64.shr_u
    i64.store8 offset=12
    local.get 2
    local.get 1
    i64.const 24
    i64.shr_u
    i64.store8 offset=11
    local.get 2
    local.get 1
    i64.const 16
    i64.shr_u
    i64.store8 offset=10
    local.get 2
    local.get 1
    i64.const 8
    i64.shr_u
    i64.store8 offset=9
    local.get 0
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 16
    i32.add
    call $<alloc::vec::Vec<T>_as_alloc::vec::SpecExtend<&T_core::slice::Iter<T>>>::spec_extend::h0f66faf24fcc23f6
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func $call (type 8)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i32 i32 i32)
    global.get 0
    i32.const 240
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 56
    i32.add
    call $bxa_api::ext::input::h487ed32442735fb9
    local.get 0
    i32.load offset=56
    local.set 1
    local.get 0
    i32.load offset=64
    local.set 2
    local.get 0
    i32.const 0
    i32.store offset=80
    local.get 0
    local.get 2
    i32.store offset=76
    local.get 0
    local.get 1
    i32.store offset=72
    local.get 0
    i32.const 136
    i32.add
    local.get 0
    i32.const 72
    i32.add
    call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_alloc::string::String>::decode::hb9a0cf8d2f134f07
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load8_u offset=136
                      i32.const 1
                      i32.eq
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        local.get 0
                        i32.const 148
                        i32.add
                        i32.load
                        i32.const -4
                        i32.add
                        i32.const 31
                        i32.rotl
                        local.tee 3
                        i32.const 6
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 0
                        i32.const 144
                        i32.add
                        i32.load
                        local.set 4
                        local.get 0
                        i32.load offset=140
                        local.set 2
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 3
                                          br_table 0 (;@19;) 9 (;@10;) 2 (;@17;) 3 (;@16;) 9 (;@10;) 9 (;@10;) 1 (;@18;) 0 (;@19;)
                                        end
                                        block  ;; label = @19
                                          local.get 2
                                          i32.const 32768
                                          i32.eq
                                          br_if 0 (;@19;)
                                          local.get 2
                                          i32.load align=1
                                          i32.const 1953066601
                                          i32.ne
                                          br_if 9 (;@10;)
                                        end
                                        local.get 0
                                        i32.const 136
                                        i32.add
                                        local.get 0
                                        i32.const 72
                                        i32.add
                                        call $bxa_abi::bxa::stream::Stream::pop::h6e917d8e37f7b1a1
                                        i32.const 1
                                        local.set 3
                                        local.get 0
                                        i32.load8_u offset=136
                                        i32.const 1
                                        i32.eq
                                        br_if 10 (;@8;)
                                        local.get 0
                                        i32.const 160
                                        i32.add
                                        i32.const 16
                                        i32.add
                                        local.tee 5
                                        local.get 0
                                        i32.const 136
                                        i32.add
                                        i32.const 1
                                        i32.or
                                        local.tee 6
                                        i32.const 16
                                        i32.add
                                        i32.load align=1
                                        i32.store
                                        local.get 0
                                        i32.const 160
                                        i32.add
                                        i32.const 8
                                        i32.add
                                        local.tee 7
                                        local.get 6
                                        i32.const 8
                                        i32.add
                                        i64.load align=1
                                        i64.store
                                        local.get 0
                                        local.get 6
                                        i64.load align=1
                                        i64.store offset=160
                                        local.get 0
                                        i32.const 136
                                        i32.add
                                        i32.const 16
                                        i32.add
                                        local.get 5
                                        i32.load
                                        i32.store
                                        local.get 0
                                        i32.const 136
                                        i32.add
                                        i32.const 8
                                        i32.add
                                        local.get 7
                                        i64.load
                                        i64.store
                                        local.get 0
                                        local.get 0
                                        i64.load offset=160
                                        i64.store offset=136
                                        local.get 0
                                        i32.const 136
                                        i32.add
                                        i64.const 100000000000
                                        call $bxa_api::db::put::hb5ab1c2e7688b0db
                                        i32.const 0
                                        local.set 5
                                        i32.const 0
                                        local.set 6
                                        local.get 4
                                        br_if 16 (;@2;)
                                        br 17 (;@1;)
                                      end
                                      block  ;; label = @18
                                        local.get 2
                                        i32.const 32782
                                        i32.eq
                                        br_if 0 (;@18;)
                                        local.get 2
                                        i32.const 32782
                                        i32.const 16
                                        call $memcmp
                                        br_if 8 (;@10;)
                                      end
                                      i32.const 32
                                      i32.const 1
                                      call $__rust_alloc
                                      local.tee 3
                                      i32.eqz
                                      br_if 4 (;@13;)
                                      local.get 0
                                      i64.const 32
                                      i64.store offset=140 align=4
                                      local.get 0
                                      local.get 3
                                      i32.store offset=136
                                      local.get 0
                                      i32.const 136
                                      i32.add
                                      i32.const 7
                                      call $bxa_abi::bxa::sink::Sink::write_byte::h922998bade43d6f2
                                      local.get 0
                                      i64.const 100000000000
                                      i64.store offset=160 align=1
                                      local.get 0
                                      i32.const 136
                                      i32.add
                                      local.get 0
                                      i32.const 160
                                      i32.add
                                      local.get 0
                                      i32.const 168
                                      i32.add
                                      call $<alloc::vec::Vec<T>_as_alloc::vec::SpecExtend<&T_core::slice::Iter<T>>>::spec_extend::h0f66faf24fcc23f6
                                      br 2 (;@15;)
                                    end
                                    block  ;; label = @17
                                      local.get 2
                                      i32.const 32798
                                      i32.eq
                                      br_if 0 (;@17;)
                                      local.get 2
                                      i64.load align=1
                                      i64.const 8243107338930713204
                                      i64.ne
                                      br_if 7 (;@10;)
                                    end
                                    local.get 0
                                    i32.const 136
                                    i32.add
                                    local.get 0
                                    i32.const 72
                                    i32.add
                                    call $bxa_abi::bxa::stream::Stream::pop::h6e917d8e37f7b1a1
                                    local.get 0
                                    i32.load8_u offset=136
                                    i32.const 1
                                    i32.eq
                                    br_if 9 (;@7;)
                                    local.get 0
                                    i32.const 88
                                    i32.add
                                    i32.const 16
                                    i32.add
                                    local.get 0
                                    i32.const 136
                                    i32.add
                                    i32.const 1
                                    i32.or
                                    local.tee 3
                                    i32.const 16
                                    i32.add
                                    local.tee 6
                                    i32.load align=1
                                    i32.store
                                    local.get 0
                                    i32.const 88
                                    i32.add
                                    i32.const 8
                                    i32.add
                                    local.get 3
                                    i32.const 8
                                    i32.add
                                    local.tee 5
                                    i64.load align=1
                                    i64.store
                                    local.get 0
                                    local.get 3
                                    i64.load align=1
                                    i64.store offset=88
                                    local.get 0
                                    i32.const 136
                                    i32.add
                                    local.get 0
                                    i32.const 72
                                    i32.add
                                    call $bxa_abi::bxa::stream::Stream::pop::h6e917d8e37f7b1a1
                                    local.get 0
                                    i32.load8_u offset=136
                                    i32.const 1
                                    i32.eq
                                    br_if 10 (;@6;)
                                    local.get 0
                                    i32.const 112
                                    i32.add
                                    i32.const 16
                                    i32.add
                                    local.get 6
                                    i32.load align=1
                                    i32.store
                                    local.get 0
                                    i32.const 112
                                    i32.add
                                    i32.const 8
                                    i32.add
                                    local.get 5
                                    i64.load align=1
                                    i64.store
                                    local.get 0
                                    local.get 3
                                    i64.load align=1
                                    i64.store offset=112
                                    local.get 0
                                    i32.const 136
                                    i32.add
                                    local.get 0
                                    i32.const 72
                                    i32.add
                                    call $bxa_abi::bxa::stream::Stream::pop::hb1450fc294345120
                                    local.get 0
                                    i32.load8_u offset=136
                                    i32.const 1
                                    i32.eq
                                    br_if 11 (;@5;)
                                    local.get 0
                                    i32.const 136
                                    i32.add
                                    i32.const 8
                                    i32.add
                                    local.tee 3
                                    i64.load
                                    local.set 8
                                    local.get 0
                                    i32.const 136
                                    i32.add
                                    i32.const 16
                                    i32.add
                                    local.tee 6
                                    local.get 0
                                    i32.const 88
                                    i32.add
                                    i32.const 16
                                    i32.add
                                    i32.load
                                    i32.store
                                    local.get 3
                                    local.get 0
                                    i32.const 88
                                    i32.add
                                    i32.const 8
                                    i32.add
                                    i64.load
                                    i64.store
                                    local.get 0
                                    local.get 0
                                    i64.load offset=88
                                    i64.store offset=136
                                    local.get 0
                                    i32.const 40
                                    i32.add
                                    local.get 0
                                    i32.const 136
                                    i32.add
                                    call $bxa_api::db::get::h536c31f322ca0737
                                    local.get 0
                                    i64.load offset=48
                                    local.set 9
                                    local.get 0
                                    i32.load offset=40
                                    local.set 5
                                    local.get 6
                                    local.get 0
                                    i32.const 112
                                    i32.add
                                    i32.const 16
                                    i32.add
                                    i32.load
                                    i32.store
                                    local.get 3
                                    local.get 0
                                    i32.const 112
                                    i32.add
                                    i32.const 8
                                    i32.add
                                    i64.load
                                    i64.store
                                    local.get 0
                                    local.get 0
                                    i64.load offset=112
                                    i64.store offset=136
                                    local.get 0
                                    i32.const 24
                                    i32.add
                                    local.get 0
                                    i32.const 136
                                    i32.add
                                    call $bxa_api::db::get::h536c31f322ca0737
                                    i32.const 0
                                    local.set 3
                                    block  ;; label = @17
                                      local.get 8
                                      i64.const -1
                                      i64.add
                                      local.get 9
                                      i64.const 0
                                      local.get 5
                                      select
                                      local.tee 9
                                      i64.ge_u
                                      br_if 0 (;@17;)
                                      local.get 0
                                      i32.load offset=24
                                      local.set 5
                                      local.get 0
                                      i64.load offset=32
                                      local.set 10
                                      local.get 0
                                      i32.const 112
                                      i32.add
                                      local.get 0
                                      i32.const 88
                                      i32.add
                                      i32.const 20
                                      call $memcmp
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      local.get 0
                                      i32.const 136
                                      i32.add
                                      i32.const 16
                                      i32.add
                                      local.tee 3
                                      local.get 0
                                      i32.const 88
                                      i32.add
                                      i32.const 16
                                      i32.add
                                      local.tee 7
                                      i32.load
                                      i32.store
                                      local.get 0
                                      i32.const 136
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      local.tee 6
                                      local.get 0
                                      i32.const 88
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      local.tee 11
                                      i64.load
                                      i64.store
                                      local.get 0
                                      local.get 0
                                      i64.load offset=88
                                      i64.store offset=136
                                      local.get 0
                                      i32.const 136
                                      i32.add
                                      local.get 9
                                      local.get 8
                                      i64.sub
                                      call $bxa_api::db::put::hb5ab1c2e7688b0db
                                      local.get 3
                                      local.get 0
                                      i32.const 112
                                      i32.add
                                      i32.const 16
                                      i32.add
                                      local.tee 12
                                      i32.load
                                      i32.store
                                      local.get 6
                                      local.get 0
                                      i32.const 112
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      local.tee 13
                                      i64.load
                                      i64.store
                                      local.get 0
                                      local.get 0
                                      i64.load offset=112
                                      i64.store offset=136
                                      local.get 0
                                      i32.const 136
                                      i32.add
                                      local.get 10
                                      i64.const 0
                                      local.get 5
                                      select
                                      local.get 8
                                      i64.add
                                      call $bxa_api::db::put::hb5ab1c2e7688b0db
                                      local.get 0
                                      i32.const 160
                                      i32.add
                                      i32.const 16
                                      i32.add
                                      local.get 7
                                      i32.load
                                      i32.store
                                      local.get 0
                                      i32.const 160
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      local.get 11
                                      i64.load
                                      i64.store
                                      local.get 0
                                      local.get 0
                                      i64.load offset=88
                                      i64.store offset=160
                                      local.get 3
                                      local.get 12
                                      i32.load
                                      i32.store
                                      local.get 6
                                      local.get 13
                                      i64.load
                                      i64.store
                                      local.get 0
                                      local.get 0
                                      i64.load offset=112
                                      i64.store offset=136
                                      local.get 0
                                      local.get 8
                                      i64.store offset=184
                                      i32.const 128
                                      i32.const 1
                                      call $__rust_alloc
                                      local.tee 3
                                      i32.eqz
                                      br_if 4 (;@13;)
                                      local.get 0
                                      i64.const 128
                                      i64.store offset=196 align=4
                                      local.get 0
                                      local.get 3
                                      i32.store offset=192
                                      local.get 0
                                      i32.const 208
                                      i32.add
                                      i32.const 34196
                                      i32.const 8
                                      call $alloc::slice::<impl_alloc::borrow::ToOwned_for__T_>::to_owned::hafb320e4309ca6c4
                                      local.get 0
                                      i32.const 224
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      local.tee 3
                                      local.get 0
                                      i32.const 208
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      local.tee 6
                                      i32.load
                                      i32.store
                                      local.get 0
                                      local.get 0
                                      i64.load offset=208
                                      i64.store offset=224
                                      local.get 0
                                      i32.const 224
                                      i32.add
                                      local.get 0
                                      i32.const 192
                                      i32.add
                                      call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_alloc::string::String>::encode::h2827780ce273a6c9
                                      local.get 0
                                      i32.const 208
                                      i32.add
                                      local.get 0
                                      i32.const 160
                                      i32.add
                                      call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::ToBXAString_for_bxa_std::types::H160>::to_bxa_string::h2a0079dc3b7fcaec
                                      local.get 3
                                      local.get 6
                                      i32.load
                                      i32.store
                                      local.get 0
                                      local.get 0
                                      i64.load offset=208
                                      i64.store offset=224
                                      local.get 0
                                      i32.const 224
                                      i32.add
                                      local.get 0
                                      i32.const 192
                                      i32.add
                                      call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_alloc::string::String>::encode::h2827780ce273a6c9
                                      local.get 0
                                      i32.const 208
                                      i32.add
                                      local.get 0
                                      i32.const 136
                                      i32.add
                                      call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::ToBXAString_for_bxa_std::types::H160>::to_bxa_string::h2a0079dc3b7fcaec
                                      local.get 3
                                      local.get 6
                                      i32.load
                                      i32.store
                                      local.get 0
                                      local.get 0
                                      i64.load offset=208
                                      i64.store offset=224
                                      local.get 0
                                      i32.const 224
                                      i32.add
                                      local.get 0
                                      i32.const 192
                                      i32.add
                                      call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_alloc::string::String>::encode::h2827780ce273a6c9
                                      local.get 0
                                      i32.const 208
                                      i32.add
                                      local.get 0
                                      i32.const 184
                                      i32.add
                                      call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::ToBXAString_for_u64>::to_bxa_string::h4d564631669f5fbf
                                      local.get 3
                                      local.get 6
                                      i32.load
                                      i32.store
                                      local.get 0
                                      local.get 0
                                      i64.load offset=208
                                      i64.store offset=224
                                      local.get 0
                                      i32.const 224
                                      i32.add
                                      local.get 0
                                      i32.const 192
                                      i32.add
                                      call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_alloc::string::String>::encode::h2827780ce273a6c9
                                      local.get 0
                                      i32.load offset=196
                                      local.set 3
                                      local.get 0
                                      i32.load offset=192
                                      local.tee 6
                                      local.get 0
                                      i32.load offset=200
                                      call $elog
                                      block  ;; label = @18
                                        local.get 3
                                        i32.eqz
                                        br_if 0 (;@18;)
                                        local.get 6
                                        local.get 3
                                        call $__rust_dealloc
                                      end
                                      i32.const 1
                                      local.set 3
                                    end
                                    i32.const 32
                                    i32.const 1
                                    call $__rust_alloc
                                    local.tee 6
                                    i32.eqz
                                    br_if 3 (;@13;)
                                    local.get 0
                                    i64.const 32
                                    i64.store offset=140 align=4
                                    local.get 0
                                    local.get 6
                                    i32.store offset=136
                                    local.get 0
                                    i32.const 136
                                    i32.add
                                    i32.const 9
                                    call $bxa_abi::bxa::sink::Sink::write_byte::h922998bade43d6f2
                                    local.get 0
                                    local.get 3
                                    i32.store8 offset=160
                                    local.get 0
                                    i32.const 136
                                    i32.add
                                    local.get 0
                                    i32.const 160
                                    i32.add
                                    local.get 0
                                    i32.const 160
                                    i32.add
                                    i32.const 1
                                    i32.add
                                    call $<alloc::vec::Vec<T>_as_alloc::vec::SpecExtend<&T_core::slice::Iter<T>>>::spec_extend::h0f66faf24fcc23f6
                                    br 1 (;@15;)
                                  end
                                  local.get 2
                                  i32.const 32772
                                  i32.eq
                                  br_if 1 (;@14;)
                                  local.get 2
                                  i32.const 32772
                                  i32.const 10
                                  call $memcmp
                                  i32.eqz
                                  br_if 1 (;@14;)
                                  block  ;; label = @16
                                    local.get 2
                                    i32.const 32806
                                    i32.eq
                                    br_if 0 (;@16;)
                                    local.get 2
                                    i32.const 32806
                                    i32.const 10
                                    call $memcmp
                                    br_if 6 (;@10;)
                                  end
                                  local.get 0
                                  i32.const 136
                                  i32.add
                                  local.get 0
                                  i32.const 72
                                  i32.add
                                  call $bxa_abi::bxa::stream::Stream::pop::h6e917d8e37f7b1a1
                                  local.get 0
                                  i32.load8_u offset=136
                                  i32.const 1
                                  i32.eq
                                  br_if 12 (;@3;)
                                  local.get 0
                                  i32.const 160
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  local.tee 6
                                  local.get 0
                                  i32.const 136
                                  i32.add
                                  i32.const 1
                                  i32.or
                                  local.tee 3
                                  i32.const 16
                                  i32.add
                                  i32.load align=1
                                  i32.store
                                  local.get 0
                                  i32.const 160
                                  i32.add
                                  i32.const 8
                                  i32.add
                                  local.tee 5
                                  local.get 3
                                  i32.const 8
                                  i32.add
                                  i64.load align=1
                                  i64.store
                                  local.get 0
                                  local.get 3
                                  i64.load align=1
                                  i64.store offset=160
                                  local.get 0
                                  i32.const 136
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  local.get 6
                                  i32.load
                                  i32.store
                                  local.get 0
                                  i32.const 136
                                  i32.add
                                  i32.const 8
                                  i32.add
                                  local.get 5
                                  i64.load
                                  i64.store
                                  local.get 0
                                  local.get 0
                                  i64.load offset=160
                                  i64.store offset=136
                                  local.get 0
                                  i32.const 8
                                  i32.add
                                  local.get 0
                                  i32.const 136
                                  i32.add
                                  call $bxa_api::db::get::h536c31f322ca0737
                                  local.get 0
                                  i64.load offset=16
                                  local.set 8
                                  local.get 0
                                  i64.load offset=8
                                  local.set 9
                                  i32.const 32
                                  i32.const 1
                                  call $__rust_alloc
                                  local.tee 3
                                  i32.eqz
                                  br_if 2 (;@13;)
                                  local.get 0
                                  i64.const 32
                                  i64.store offset=140 align=4
                                  local.get 0
                                  local.get 3
                                  i32.store offset=136
                                  local.get 0
                                  i32.const 136
                                  i32.add
                                  i32.const 7
                                  call $bxa_abi::bxa::sink::Sink::write_byte::h922998bade43d6f2
                                  local.get 0
                                  i32.const 136
                                  i32.add
                                  local.get 8
                                  i64.const 0
                                  local.get 9
                                  i32.wrap_i64
                                  select
                                  call $bxa_abi::bxa::sink::Sink::push::hc61f671c098ef436
                                end
                                local.get 0
                                i32.load offset=144
                                local.set 5
                                local.get 0
                                i32.load offset=140
                                local.set 6
                                local.get 0
                                i32.load offset=136
                                local.set 3
                                local.get 4
                                i32.eqz
                                br_if 13 (;@1;)
                                br 12 (;@2;)
                              end
                              local.get 0
                              i32.const 112
                              i32.add
                              i32.const 34193
                              i32.const 3
                              call $alloc::slice::<impl_alloc::borrow::ToOwned_for__T_>::to_owned::hafb320e4309ca6c4
                              i32.const 32
                              i32.const 1
                              call $__rust_alloc
                              local.tee 3
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 0
                              i64.const 32
                              i64.store offset=164 align=4
                              local.get 0
                              local.get 3
                              i32.store offset=160
                              local.get 0
                              i32.load offset=120
                              local.tee 3
                              i32.const -1
                              i32.le_s
                              br_if 9 (;@4;)
                              local.get 0
                              i32.load offset=112
                              local.set 6
                              local.get 3
                              i32.eqz
                              br_if 1 (;@12;)
                              local.get 3
                              i32.const 1
                              call $__rust_alloc
                              local.tee 5
                              br_if 2 (;@11;)
                            end
                            unreachable
                            unreachable
                          end
                          i32.const 1
                          local.set 5
                        end
                        local.get 5
                        local.get 6
                        local.get 3
                        call $memcpy
                        local.set 6
                        local.get 0
                        local.get 3
                        i32.store offset=144
                        local.get 0
                        local.get 3
                        i32.store offset=140
                        local.get 0
                        local.get 6
                        i32.store offset=136
                        local.get 0
                        i32.const 136
                        i32.add
                        local.get 0
                        i32.const 160
                        i32.add
                        call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_alloc::string::String>::push_type::h3d7cbc6e59a6014e
                        local.get 0
                        i32.const 136
                        i32.add
                        i32.const 8
                        i32.add
                        local.get 0
                        i32.const 112
                        i32.add
                        i32.const 8
                        i32.add
                        i32.load
                        i32.store
                        local.get 0
                        local.get 0
                        i64.load offset=112
                        i64.store offset=136
                        local.get 0
                        i32.const 136
                        i32.add
                        local.get 0
                        i32.const 160
                        i32.add
                        call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_alloc::string::String>::encode::h2827780ce273a6c9
                        local.get 0
                        i32.const 160
                        i32.add
                        i32.const 8
                        i32.add
                        i32.load
                        local.set 5
                        local.get 0
                        i32.load offset=164
                        local.set 6
                        local.get 0
                        i32.load offset=160
                        local.set 3
                        local.get 4
                        br_if 8 (;@2;)
                        br 9 (;@1;)
                      end
                      i32.const 34204
                      call $core::panicking::panic::hb7cb5b256fd27bcf
                      unreachable
                    end
                    i32.const 34150
                    local.get 0
                    i32.load8_u offset=137
                    call $core::result::unwrap_failed::h6cbc2caa0c13403b
                    unreachable
                  end
                  i32.const 34150
                  local.get 0
                  i32.load8_u offset=137
                  call $core::result::unwrap_failed::h6cbc2caa0c13403b
                  unreachable
                end
                i32.const 34150
                local.get 0
                i32.load8_u offset=137
                call $core::result::unwrap_failed::h6cbc2caa0c13403b
                unreachable
              end
              i32.const 34150
              local.get 0
              i32.load8_u offset=137
              call $core::result::unwrap_failed::h6cbc2caa0c13403b
              unreachable
            end
            i32.const 34150
            local.get 0
            i32.load8_u offset=137
            call $core::result::unwrap_failed::h6cbc2caa0c13403b
            unreachable
          end
          call $alloc::raw_vec::RawVec<T_A>::allocate_in::__closure__::h673561f8f2f177da
          unreachable
        end
        i32.const 34150
        local.get 0
        i32.load8_u offset=137
        call $core::result::unwrap_failed::h6cbc2caa0c13403b
        unreachable
      end
      local.get 2
      local.get 4
      call $__rust_dealloc
    end
    local.get 3
    local.get 5
    call $ret
    block  ;; label = @1
      local.get 6
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 6
      call $__rust_dealloc
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=60
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      call $__rust_dealloc
    end
    local.get 0
    i32.const 240
    i32.add
    global.set 0)
  (func $bxa_abi::bxa::stream::Stream::pop::h6e917d8e37f7b1a1 (type 7) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=8
          local.tee 2
          i32.const 20
          i32.add
          local.tee 3
          local.get 1
          i32.load offset=4
          i32.le_u
          br_if 0 (;@3;)
          local.get 0
          i32.const 4
          i32.store8 offset=1
          i32.const 1
          local.set 1
          br 1 (;@2;)
        end
        local.get 2
        i32.const -20
        i32.ge_u
        br_if 1 (;@1;)
        local.get 1
        i32.const 8
        i32.add
        local.get 3
        i32.store
        local.get 0
        local.get 1
        i32.load
        local.get 2
        i32.add
        local.tee 1
        i64.load align=1
        i64.store offset=1 align=1
        local.get 0
        i32.const 17
        i32.add
        local.get 1
        i32.const 16
        i32.add
        i32.load align=1
        i32.store align=1
        local.get 0
        i32.const 9
        i32.add
        local.get 1
        i32.const 8
        i32.add
        i64.load align=1
        i64.store align=1
        i32.const 0
        local.set 1
      end
      local.get 0
      local.get 1
      i32.store8
      return
    end
    local.get 2
    local.get 3
    call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
    unreachable)
  (func $deploy (type 8)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    call $bxa_api::ext::input::h487ed32442735fb9
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.get 1
      call $__rust_dealloc
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func $memset (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $memcpy (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $memcmp (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 3
        loop  ;; label = @3
          local.get 0
          local.get 3
          i32.add
          i32.load8_u
          local.tee 4
          local.get 1
          local.get 3
          i32.add
          i32.load8_u
          local.tee 5
          i32.ne
          br_if 2 (;@1;)
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          local.get 2
          i32.lt_u
          br_if 0 (;@3;)
        end
        i32.const 0
        return
      end
      i32.const 0
      return
    end
    local.get 4
    local.get 5
    i32.sub)
  (table (;0;) 24 24 anyfunc)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 32768))
  (global (;1;) i32 (i32.const 35688))
  (global (;2;) i32 (i32.const 35688))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "call" (func $call))
  (export "deploy" (func $deploy))
  (elem (;0;) (i32.const 1) $<&T_as_core::fmt::Display>::fmt::h3607e0147c7c00ba $core::fmt::ArgumentV1::show_usize::h12bd52c1ec043e4f $<core::fmt::Error_as_core::fmt::Debug>::fmt::h40371bb409cc3d1e $<&T_as_core::fmt::Display>::fmt::h8d9426a6c22b32f6 $core::fmt::num::imp::<impl_core::fmt::Display_for_u32>::fmt::h54afc21076a8cd63 $<core::fmt::Arguments_as_core::fmt::Display>::fmt::h5f719d68cf877a91 $<&T_as_core::fmt::Debug>::fmt::h79c7246e3b7370d2 $<bxa_abi::bxa::Error_as_core::fmt::Debug>::fmt::hebd60cc42c9cdcff $core::ptr::real_drop_in_place::hd0094952c9696ad1 $<&mut_W_as_core::fmt::Write>::write_str::hf3451c251786d6da $<&mut_W_as_core::fmt::Write>::write_char::h4bec29724944e39b $<&mut_W_as_core::fmt::Write>::write_fmt::h13b3254cf0bee8a7 $core::ptr::real_drop_in_place::hb362d9cbd0511fba $<wee_alloc::LargeAllocPolicy_as_wee_alloc::AllocPolicy>::new_cell_for_free_list::he8633747b3e68f20 $<wee_alloc::LargeAllocPolicy_as_wee_alloc::AllocPolicy>::min_cell_size::h36473a24a292ef1e $<wee_alloc::LargeAllocPolicy_as_wee_alloc::AllocPolicy>::should_merge_adjacent_free_cells::h9fb2f0c3765940e8 $core::ptr::real_drop_in_place::h7f1c6dba4d8a1f3e $<wee_alloc::size_classes::SizeClassAllocPolicy_as_wee_alloc::AllocPolicy>::new_cell_for_free_list::h7f322e3989781476 $<wee_alloc::size_classes::SizeClassAllocPolicy_as_wee_alloc::AllocPolicy>::min_cell_size::h449f13d5e04898a2 $<wee_alloc::size_classes::SizeClassAllocPolicy_as_wee_alloc::AllocPolicy>::should_merge_adjacent_free_cells::h51f2062887788390 $core::ptr::real_drop_in_place::hb362d9cbd0511fba.143 $core::ptr::real_drop_in_place::ha16765b235858e2e $<T_as_core::any::Any>::type_id::hfbb4b8d9c7d9a397)
  (data (;0;) (i32.const 32768) "initget_symbolget_total_supplytransferbalance_ofInvalid method nameexamples/token/src/lib.rsa Display implementation returned an error unexpectedlyTried to shrink to a larger capacityInvalidBoolInvalidU32InvalidU64DataSizeOutOfRangeUnexpectedEofUnexpectedDataOtherassertion failed: `(left == right)`\0a  left: ``,\0a right: ``: destination and source slices have different lengths123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz\00\00\00\00\00\00\00\00\00\00\00\00\00\00/Users/admin/.cargo/registry/src/mirrors.ustc.edu.cn-61ef6e0cd06fb9b8/base58-0.1.0/src/lib.rs\00\00\00/rustc/0576ac109b1ee40cc3201ac3c9ed58339487140e/src/libcore/slice/mod.rscapacity overflowsrc/liballoc/raw_vec.rs\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00index out of bounds: the len is  but the index is 00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899src/libcore/slice/mod.rsindex  out of range for slice of length slice index starts at  but ends at 0x\00src/libcore/fmt/mod.rscalled `Option::unwrap()` on a `None` valuesrc/libcore/option.rs,\0a)Errorsrc/libcore/result.rs\00: called `Result::unwrap()` on an `Err` valueABCTransfer")
  (data (;1;) (i32.const 34204) "0\80\00\00\13\00\00\00C\80\00\00\19\00\00\00\14\00\00\00\01\00\00\00d\85\00\00\00\00\00\00\93\80\00\00$\00\00\00y\82\00\00\17\00\00\00@\02\00\00\09\00\00\00\09\00\00\00\04\00\00\00\04\00\00\00\0a\00\00\00\0b\00\00\00\0c\00\00\00\08\81\00\00-\00\00\005\81\00\00\0c\00\00\00A\81\00\00\03\00\00\00D\81\00\004\00\00\00\8a\84\00\00\18\00\00\00\b0\07\00\00\09\00\00\00 \82\00\00H\00\00\00\eb\09\00\00\0a\00\00\00\c0\81\00\00]\00\00\00M\00\00\00\10\00\00\00h\82\00\00\11\00\00\00y\82\00\00\17\00\00\00\ea\02\00\00\05\00\00\00\0d\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\00\0f\00\00\00\10\00\00\00\11\00\00\00\04\00\00\00\04\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\15\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\00\0f\00\00\00\10\00\00\00\90\83\00\00 \00\00\00\b0\83\00\00\12\00\00\00\16\00\00\00\00\00\00\00\01\00\00\00\17\00\00\00\a2\84\00\00\06\00\00\00\a8\84\00\00\22\00\00\00\8a\84\00\00\18\00\00\00m\09\00\00\05\00\00\00\ca\84\00\00\16\00\00\00\e0\84\00\00\0d\00\00\00\8a\84\00\00\18\00\00\00s\09\00\00\05\00\00\00\06\85\00\00+\00\00\001\85\00\00\15\00\00\00Y\01\00\00\15\00\00\00\f0\84\00\00\16\00\00\00T\04\00\00\11\00\00\00\f0\84\00\00\16\00\00\00H\04\00\00(\00\00\00d\85\00\00\00\00\00\00d\85\00\00\02\00\00\00N\85\00\00\15\00\00\00\e5\03\00\00\05\00\00\00")
  (data (;2;) (i32.const 34648) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
