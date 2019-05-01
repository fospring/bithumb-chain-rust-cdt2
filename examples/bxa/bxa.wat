(module
  (type (;0;) (func (param i32 i32 i32 i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (result i32)))
  (type (;6;) (func))
  (type (;7;) (func (param i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (import "env" "storage_read" (func $storage_read (type 3)))
  (import "env" "value" (func $value (type 4)))
  (import "env" "sender" (func $sender (type 4)))
  (import "env" "storage_write" (func $storage_write (type 3)))
  (import "env" "elog" (func $elog (type 0)))
  (import "env" "ret" (func $ret (type 3)))
  (import "env" "input_length" (func $input_length (type 5)))
  (import "env" "fetch_input" (func $fetch_input (type 4)))
  (import "env" "panic" (func $panic (type 3)))
  (func $__wasm_call_ctors (type 6))
  (func $_ZN3bxa15read_balance_of17hb0f99d7d7efca8e8E (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 83
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=1
    i64.store align=1
    local.get 2
    i32.const 91
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i32.load align=1
    i32.store align=1
    local.get 2
    i32.const 0
    i32.store offset=71 align=1
    local.get 2
    local.get 1
    i64.load align=1
    i64.store offset=75 align=1
    local.get 2
    i32.const 8
    i32.add
    local.tee 3
    local.get 2
    i32.const 64
    i32.add
    i32.const 8
    i32.add
    local.tee 1
    i64.load
    i64.store
    local.get 2
    i32.const 16
    i32.add
    local.tee 4
    local.get 2
    i32.const 64
    i32.add
    i32.const 16
    i32.add
    local.tee 5
    i64.load
    i64.store
    local.get 2
    i32.const 23
    i32.add
    local.tee 6
    local.get 2
    i32.const 64
    i32.add
    i32.const 23
    i32.add
    i64.load align=1
    i64.store align=1
    local.get 2
    i64.const 0
    i64.store offset=64
    local.get 2
    local.get 2
    i64.load offset=64
    i64.store
    local.get 2
    i32.const 41
    i32.add
    local.get 3
    i64.load
    i64.store align=1
    local.get 2
    i32.const 49
    i32.add
    local.get 4
    i64.load
    i64.store align=1
    local.get 2
    i32.const 32
    i32.add
    i32.const 24
    i32.add
    local.get 6
    i64.load align=1
    i64.store align=1
    local.get 2
    i32.const 1
    i32.store8 offset=32
    local.get 2
    local.get 2
    i64.load
    i64.store offset=33 align=1
    local.get 2
    i32.const 64
    i32.add
    i32.const 24
    i32.add
    local.tee 6
    i64.const 0
    i64.store
    local.get 5
    i64.const 0
    i64.store
    local.get 1
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store offset=64
    local.get 2
    i32.const 32
    i32.add
    local.get 2
    i32.const 64
    i32.add
    call $storage_read
    local.get 2
    i32.const 24
    i32.add
    local.get 6
    i64.load
    i64.store
    local.get 4
    local.get 5
    i64.load
    i64.store
    local.get 3
    local.get 1
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=64
    i64.store
    local.get 6
    i64.const 0
    i64.store
    local.get 5
    i64.const 0
    i64.store
    local.get 1
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store offset=64
    i32.const 31
    local.set 1
    local.get 2
    i32.const 64
    i32.add
    local.set 5
    loop  ;; label = @1
      local.get 5
      local.get 2
      local.get 1
      i32.add
      i32.load8_u
      i32.store8
      local.get 5
      i32.const 1
      i32.add
      local.set 5
      local.get 1
      i32.const -1
      i32.add
      local.tee 1
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 2
    i64.load offset=64
    i64.store
    local.get 0
    i32.const 24
    i32.add
    local.get 2
    i32.const 64
    i32.add
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 16
    i32.add
    local.get 2
    i32.const 64
    i32.add
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    i32.const 64
    i32.add
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 96
    i32.add
    global.set 0)
  (func $call (type 6)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i32 i32)
    global.get 0
    i32.const 400
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    call $_ZN12bxa_ethereum3ext5input17hc86ce898da4ce5acE
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
                                block  ;; label = @15
                                  local.get 0
                                  i32.load offset=8
                                  local.tee 1
                                  i32.const 3
                                  i32.le_u
                                  br_if 0 (;@15;)
                                  local.get 1
                                  i32.const -4
                                  i32.add
                                  local.set 2
                                  local.get 0
                                  i32.load
                                  local.tee 1
                                  i32.const 4
                                  i32.add
                                  local.set 3
                                  block  ;; label = @16
                                    local.get 1
                                    i32.load align=1
                                    local.tee 1
                                    i32.const 24
                                    i32.shl
                                    local.get 1
                                    i32.const 8
                                    i32.shl
                                    i32.const 16711680
                                    i32.and
                                    i32.or
                                    local.get 1
                                    i32.const 8
                                    i32.shr_u
                                    i32.const 65280
                                    i32.and
                                    local.get 1
                                    i32.const 24
                                    i32.shr_u
                                    i32.or
                                    i32.or
                                    local.tee 1
                                    i32.const -1459249989
                                    i32.eq
                                    br_if 0 (;@16;)
                                    block  ;; label = @17
                                      local.get 1
                                      i32.const 1889567281
                                      i32.eq
                                      br_if 0 (;@17;)
                                      local.get 1
                                      i32.const 404098525
                                      i32.ne
                                      br_if 3 (;@14;)
                                      local.get 0
                                      i32.const 304
                                      i32.add
                                      i32.const 24
                                      i32.add
                                      i64.const 0
                                      i64.store
                                      local.get 0
                                      i32.const 304
                                      i32.add
                                      i32.const 16
                                      i32.add
                                      i64.const 0
                                      i64.store
                                      local.get 0
                                      i32.const 304
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      i64.const 0
                                      i64.store
                                      local.get 0
                                      i64.const 0
                                      i64.store offset=304
                                      local.get 0
                                      i32.const 304
                                      i32.add
                                      call $value
                                      local.get 0
                                      i32.const 88
                                      i32.add
                                      i32.const 24
                                      i32.add
                                      i64.const 0
                                      i64.store
                                      local.get 0
                                      i32.const 88
                                      i32.add
                                      i32.const 16
                                      i32.add
                                      i64.const 0
                                      i64.store
                                      local.get 0
                                      i32.const 88
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      i64.const 0
                                      i64.store
                                      local.get 0
                                      i64.const 0
                                      i64.store offset=88
                                      i32.const 31
                                      local.set 1
                                      local.get 0
                                      i32.const 88
                                      i32.add
                                      local.set 4
                                      loop  ;; label = @18
                                        local.get 4
                                        local.get 0
                                        i32.const 304
                                        i32.add
                                        local.get 1
                                        i32.add
                                        i32.load8_u
                                        i32.store8
                                        local.get 4
                                        i32.const 1
                                        i32.add
                                        local.set 4
                                        local.get 1
                                        i32.const -1
                                        i32.add
                                        local.tee 1
                                        i32.const -1
                                        i32.ne
                                        br_if 0 (;@18;)
                                      end
                                      local.get 0
                                      i32.const 368
                                      i32.add
                                      i32.const 24
                                      i32.add
                                      local.tee 1
                                      local.get 0
                                      i32.const 88
                                      i32.add
                                      i32.const 24
                                      i32.add
                                      local.tee 4
                                      i64.load
                                      i64.store
                                      local.get 0
                                      i32.const 368
                                      i32.add
                                      i32.const 16
                                      i32.add
                                      local.tee 2
                                      local.get 0
                                      i32.const 88
                                      i32.add
                                      i32.const 16
                                      i32.add
                                      local.tee 3
                                      i64.load
                                      i64.store
                                      local.get 0
                                      i32.const 368
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      local.tee 5
                                      local.get 0
                                      i32.const 88
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      local.tee 6
                                      i64.load
                                      i64.store
                                      local.get 0
                                      local.get 0
                                      i64.load offset=88
                                      i64.store offset=368
                                      local.get 0
                                      i32.const 208
                                      i32.add
                                      i32.const 24
                                      i32.add
                                      i64.const 0
                                      i64.store
                                      local.get 0
                                      i32.const 208
                                      i32.add
                                      i32.const 16
                                      i32.add
                                      i64.const 0
                                      i64.store
                                      local.get 0
                                      i32.const 208
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      i64.const 0
                                      i64.store
                                      local.get 0
                                      i64.const 0
                                      i64.store offset=208
                                      local.get 0
                                      i32.const 368
                                      i32.add
                                      local.get 0
                                      i32.const 208
                                      i32.add
                                      call $_ZN60_$LT$uint..common..U256$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h12569bf1b8225b4bE
                                      i32.const 255
                                      i32.and
                                      i32.const 1
                                      i32.eq
                                      br_if 4 (;@13;)
                                      call $_ZN4spin4once13Once$LT$T$GT$9call_once17hd351eca639ee601cE
                                      local.set 7
                                      local.get 0
                                      i32.const 304
                                      i32.add
                                      i32.const 24
                                      i32.add
                                      local.tee 8
                                      i64.const 0
                                      i64.store
                                      local.get 0
                                      i32.const 304
                                      i32.add
                                      i32.const 16
                                      i32.add
                                      local.tee 9
                                      i64.const 0
                                      i64.store
                                      local.get 0
                                      i32.const 304
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      local.tee 10
                                      i64.const 0
                                      i64.store
                                      local.get 0
                                      i64.const 0
                                      i64.store offset=304
                                      local.get 7
                                      local.get 0
                                      i32.const 304
                                      i32.add
                                      call $storage_read
                                      local.get 1
                                      local.get 8
                                      i64.load
                                      i64.store
                                      local.get 2
                                      local.get 9
                                      i64.load
                                      i64.store
                                      local.get 5
                                      local.get 10
                                      i64.load
                                      i64.store
                                      local.get 0
                                      local.get 0
                                      i64.load offset=304
                                      i64.store offset=368
                                      local.get 4
                                      i64.const 0
                                      i64.store
                                      local.get 3
                                      i64.const 0
                                      i64.store
                                      local.get 6
                                      i64.const 0
                                      i64.store
                                      local.get 0
                                      i64.const 0
                                      i64.store offset=88
                                      i32.const 31
                                      local.set 1
                                      local.get 0
                                      i32.const 88
                                      i32.add
                                      local.set 4
                                      loop  ;; label = @18
                                        local.get 4
                                        local.get 0
                                        i32.const 368
                                        i32.add
                                        local.get 1
                                        i32.add
                                        i32.load8_u
                                        i32.store8
                                        local.get 4
                                        i32.const 1
                                        i32.add
                                        local.set 4
                                        local.get 1
                                        i32.const -1
                                        i32.add
                                        local.tee 1
                                        i32.const -1
                                        i32.ne
                                        br_if 0 (;@18;)
                                      end
                                      local.get 0
                                      i32.const 336
                                      i32.add
                                      i32.const 24
                                      i32.add
                                      local.tee 1
                                      local.get 0
                                      i32.const 88
                                      i32.add
                                      i32.const 24
                                      i32.add
                                      i64.load
                                      i64.store
                                      local.get 0
                                      i32.const 336
                                      i32.add
                                      i32.const 16
                                      i32.add
                                      local.tee 4
                                      local.get 0
                                      i32.const 88
                                      i32.add
                                      i32.const 16
                                      i32.add
                                      i64.load
                                      i64.store
                                      local.get 0
                                      i32.const 336
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      local.tee 2
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
                                      i64.store offset=336
                                      i32.const 32
                                      call $__rust_alloc
                                      local.tee 3
                                      i32.eqz
                                      br_if 5 (;@12;)
                                      local.get 0
                                      i32.const 368
                                      i32.add
                                      i32.const 24
                                      i32.add
                                      local.tee 5
                                      i32.const 0
                                      i32.store
                                      local.get 0
                                      i32.const 368
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      local.tee 6
                                      i64.const 32
                                      i64.store
                                      local.get 0
                                      i64.const 1
                                      i64.store offset=384
                                      local.get 0
                                      local.get 3
                                      i32.store offset=372
                                      local.get 0
                                      i32.const 32
                                      i32.store offset=368
                                      local.get 0
                                      i32.const 208
                                      i32.add
                                      i32.const 24
                                      i32.add
                                      local.tee 3
                                      local.get 1
                                      i64.load
                                      i64.store
                                      local.get 0
                                      i32.const 208
                                      i32.add
                                      i32.const 16
                                      i32.add
                                      local.tee 1
                                      local.get 4
                                      i64.load
                                      i64.store
                                      local.get 0
                                      i32.const 208
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      local.tee 4
                                      local.get 2
                                      i64.load
                                      i64.store
                                      local.get 0
                                      local.get 0
                                      i64.load offset=336
                                      i64.store offset=208
                                      local.get 0
                                      i32.const 368
                                      i32.add
                                      local.get 0
                                      i32.const 208
                                      i32.add
                                      call $_ZN7bxa_abi3bxa4sink4Sink4push17h7eeccc759114f2fbE
                                      local.get 3
                                      local.get 5
                                      i32.load
                                      i32.store
                                      local.get 1
                                      local.get 0
                                      i64.load offset=384
                                      i64.store
                                      local.get 4
                                      local.get 6
                                      i64.load
                                      i64.store
                                      local.get 0
                                      local.get 0
                                      i64.load offset=368
                                      i64.store offset=208
                                      local.get 0
                                      i32.const 176
                                      i32.add
                                      local.get 0
                                      i32.const 208
                                      i32.add
                                      call $_ZN7bxa_abi3bxa4sink4Sink18finalize_panicking17h5fa553e69416a7f8E
                                      br 14 (;@3;)
                                    end
                                    local.get 0
                                    i32.const 304
                                    i32.add
                                    i32.const 24
                                    i32.add
                                    i64.const 0
                                    i64.store
                                    local.get 0
                                    i32.const 304
                                    i32.add
                                    i32.const 16
                                    i32.add
                                    i64.const 0
                                    i64.store
                                    local.get 0
                                    i32.const 304
                                    i32.add
                                    i32.const 8
                                    i32.add
                                    i64.const 0
                                    i64.store
                                    local.get 0
                                    i64.const 0
                                    i64.store offset=304
                                    local.get 0
                                    i32.const 304
                                    i32.add
                                    call $value
                                    local.get 0
                                    i32.const 88
                                    i32.add
                                    i32.const 24
                                    i32.add
                                    i64.const 0
                                    i64.store
                                    local.get 0
                                    i32.const 88
                                    i32.add
                                    i32.const 16
                                    i32.add
                                    i64.const 0
                                    i64.store
                                    local.get 0
                                    i32.const 88
                                    i32.add
                                    i32.const 8
                                    i32.add
                                    i64.const 0
                                    i64.store
                                    local.get 0
                                    i64.const 0
                                    i64.store offset=88
                                    i32.const 31
                                    local.set 1
                                    local.get 0
                                    i32.const 88
                                    i32.add
                                    local.set 4
                                    loop  ;; label = @17
                                      local.get 4
                                      local.get 0
                                      i32.const 304
                                      i32.add
                                      local.get 1
                                      i32.add
                                      i32.load8_u
                                      i32.store8
                                      local.get 4
                                      i32.const 1
                                      i32.add
                                      local.set 4
                                      local.get 1
                                      i32.const -1
                                      i32.add
                                      local.tee 1
                                      i32.const -1
                                      i32.ne
                                      br_if 0 (;@17;)
                                    end
                                    local.get 0
                                    i32.const 368
                                    i32.add
                                    i32.const 24
                                    i32.add
                                    local.get 0
                                    i32.const 88
                                    i32.add
                                    i32.const 24
                                    i32.add
                                    i64.load
                                    i64.store
                                    local.get 0
                                    i32.const 368
                                    i32.add
                                    i32.const 16
                                    i32.add
                                    local.get 0
                                    i32.const 88
                                    i32.add
                                    i32.const 16
                                    i32.add
                                    i64.load
                                    i64.store
                                    local.get 0
                                    i32.const 368
                                    i32.add
                                    i32.const 8
                                    i32.add
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
                                    i64.store offset=368
                                    local.get 0
                                    i32.const 208
                                    i32.add
                                    i32.const 24
                                    i32.add
                                    i64.const 0
                                    i64.store
                                    local.get 0
                                    i32.const 208
                                    i32.add
                                    i32.const 16
                                    i32.add
                                    i64.const 0
                                    i64.store
                                    local.get 0
                                    i32.const 208
                                    i32.add
                                    i32.const 8
                                    i32.add
                                    i64.const 0
                                    i64.store
                                    local.get 0
                                    i64.const 0
                                    i64.store offset=208
                                    local.get 0
                                    i32.const 368
                                    i32.add
                                    local.get 0
                                    i32.const 208
                                    i32.add
                                    call $_ZN60_$LT$uint..common..U256$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h12569bf1b8225b4bE
                                    i32.const 255
                                    i32.and
                                    i32.const 1
                                    i32.eq
                                    br_if 5 (;@11;)
                                    local.get 0
                                    i32.const 0
                                    i32.store offset=312
                                    local.get 0
                                    local.get 2
                                    i32.store offset=308
                                    local.get 0
                                    local.get 3
                                    i32.store offset=304
                                    local.get 0
                                    i32.const 208
                                    i32.add
                                    local.get 0
                                    i32.const 304
                                    i32.add
                                    call $_ZN7bxa_abi3bxa6stream6Stream3pop17hd583ddae499c33f0E
                                    local.get 0
                                    i32.load8_u offset=208
                                    i32.const 1
                                    i32.eq
                                    br_if 6 (;@10;)
                                    local.get 0
                                    i32.const 336
                                    i32.add
                                    i32.const 16
                                    i32.add
                                    local.get 0
                                    i32.const 208
                                    i32.add
                                    i32.const 1
                                    i32.or
                                    local.tee 1
                                    i32.const 16
                                    i32.add
                                    i32.load align=1
                                    i32.store
                                    local.get 0
                                    i32.const 336
                                    i32.add
                                    i32.const 8
                                    i32.add
                                    local.tee 4
                                    local.get 1
                                    i32.const 8
                                    i32.add
                                    i64.load align=1
                                    i64.store
                                    local.get 0
                                    local.get 1
                                    i64.load align=1
                                    i64.store offset=336
                                    local.get 0
                                    i32.const 368
                                    i32.add
                                    local.get 0
                                    i32.const 336
                                    i32.add
                                    call $_ZN3bxa15read_balance_of17hb0f99d7d7efca8e8E
                                    i32.const 32
                                    call $__rust_alloc
                                    local.tee 1
                                    i32.eqz
                                    br_if 7 (;@9;)
                                    local.get 0
                                    i32.const 336
                                    i32.add
                                    i32.const 24
                                    i32.add
                                    local.tee 2
                                    i32.const 0
                                    i32.store
                                    local.get 4
                                    i64.const 32
                                    i64.store
                                    local.get 0
                                    i64.const 1
                                    i64.store offset=352
                                    local.get 0
                                    local.get 1
                                    i32.store offset=340
                                    local.get 0
                                    i32.const 32
                                    i32.store offset=336
                                    local.get 0
                                    i32.const 208
                                    i32.add
                                    i32.const 24
                                    i32.add
                                    local.tee 1
                                    local.get 0
                                    i32.const 368
                                    i32.add
                                    i32.const 24
                                    i32.add
                                    i64.load
                                    i64.store
                                    local.get 0
                                    i32.const 208
                                    i32.add
                                    i32.const 16
                                    i32.add
                                    local.tee 3
                                    local.get 0
                                    i32.const 368
                                    i32.add
                                    i32.const 16
                                    i32.add
                                    i64.load
                                    i64.store
                                    local.get 0
                                    i32.const 208
                                    i32.add
                                    i32.const 8
                                    i32.add
                                    local.tee 5
                                    local.get 0
                                    i32.const 368
                                    i32.add
                                    i32.const 8
                                    i32.add
                                    i64.load
                                    i64.store
                                    local.get 0
                                    local.get 0
                                    i64.load offset=368
                                    i64.store offset=208
                                    local.get 0
                                    i32.const 336
                                    i32.add
                                    local.get 0
                                    i32.const 208
                                    i32.add
                                    call $_ZN7bxa_abi3bxa4sink4Sink4push17h7eeccc759114f2fbE
                                    local.get 1
                                    local.get 2
                                    i32.load
                                    i32.store
                                    local.get 3
                                    local.get 0
                                    i64.load offset=352
                                    i64.store
                                    local.get 5
                                    local.get 4
                                    i64.load
                                    i64.store
                                    local.get 0
                                    local.get 0
                                    i64.load offset=336
                                    i64.store offset=208
                                    local.get 0
                                    i32.const 176
                                    i32.add
                                    local.get 0
                                    i32.const 208
                                    i32.add
                                    call $_ZN7bxa_abi3bxa4sink4Sink18finalize_panicking17h5fa553e69416a7f8E
                                    br 13 (;@3;)
                                  end
                                  local.get 0
                                  i32.const 304
                                  i32.add
                                  i32.const 24
                                  i32.add
                                  i64.const 0
                                  i64.store
                                  local.get 0
                                  i32.const 304
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  i64.const 0
                                  i64.store
                                  local.get 0
                                  i32.const 304
                                  i32.add
                                  i32.const 8
                                  i32.add
                                  i64.const 0
                                  i64.store
                                  local.get 0
                                  i64.const 0
                                  i64.store offset=304
                                  local.get 0
                                  i32.const 304
                                  i32.add
                                  call $value
                                  local.get 0
                                  i32.const 88
                                  i32.add
                                  i32.const 24
                                  i32.add
                                  i64.const 0
                                  i64.store
                                  local.get 0
                                  i32.const 88
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  i64.const 0
                                  i64.store
                                  local.get 0
                                  i32.const 88
                                  i32.add
                                  i32.const 8
                                  i32.add
                                  i64.const 0
                                  i64.store
                                  local.get 0
                                  i64.const 0
                                  i64.store offset=88
                                  i32.const 31
                                  local.set 1
                                  local.get 0
                                  i32.const 88
                                  i32.add
                                  local.set 4
                                  loop  ;; label = @16
                                    local.get 4
                                    local.get 0
                                    i32.const 304
                                    i32.add
                                    local.get 1
                                    i32.add
                                    i32.load8_u
                                    i32.store8
                                    local.get 4
                                    i32.const 1
                                    i32.add
                                    local.set 4
                                    local.get 1
                                    i32.const -1
                                    i32.add
                                    local.tee 1
                                    i32.const -1
                                    i32.ne
                                    br_if 0 (;@16;)
                                  end
                                  local.get 0
                                  i32.const 368
                                  i32.add
                                  i32.const 24
                                  i32.add
                                  local.get 0
                                  i32.const 88
                                  i32.add
                                  i32.const 24
                                  i32.add
                                  i64.load
                                  i64.store
                                  local.get 0
                                  i32.const 368
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  local.get 0
                                  i32.const 88
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  i64.load
                                  i64.store
                                  local.get 0
                                  i32.const 368
                                  i32.add
                                  i32.const 8
                                  i32.add
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
                                  i64.store offset=368
                                  local.get 0
                                  i32.const 208
                                  i32.add
                                  i32.const 24
                                  i32.add
                                  i64.const 0
                                  i64.store
                                  local.get 0
                                  i32.const 208
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  i64.const 0
                                  i64.store
                                  local.get 0
                                  i32.const 208
                                  i32.add
                                  i32.const 8
                                  i32.add
                                  i64.const 0
                                  i64.store
                                  local.get 0
                                  i64.const 0
                                  i64.store offset=208
                                  local.get 0
                                  i32.const 368
                                  i32.add
                                  local.get 0
                                  i32.const 208
                                  i32.add
                                  call $_ZN60_$LT$uint..common..U256$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h12569bf1b8225b4bE
                                  i32.const 255
                                  i32.and
                                  i32.const 1
                                  i32.eq
                                  br_if 7 (;@8;)
                                  local.get 0
                                  i32.const 0
                                  i32.store offset=24
                                  local.get 0
                                  local.get 2
                                  i32.store offset=20
                                  local.get 0
                                  local.get 3
                                  i32.store offset=16
                                  local.get 0
                                  i32.const 208
                                  i32.add
                                  local.get 0
                                  i32.const 16
                                  i32.add
                                  call $_ZN7bxa_abi3bxa6stream6Stream3pop17hd583ddae499c33f0E
                                  local.get 0
                                  i32.load8_u offset=208
                                  i32.const 1
                                  i32.eq
                                  br_if 8 (;@7;)
                                  local.get 0
                                  i32.const 32
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  local.get 0
                                  i32.const 208
                                  i32.add
                                  i32.const 1
                                  i32.or
                                  local.tee 1
                                  i32.const 16
                                  i32.add
                                  i32.load align=1
                                  i32.store
                                  local.get 0
                                  i32.const 32
                                  i32.add
                                  i32.const 8
                                  i32.add
                                  local.get 1
                                  i32.const 8
                                  i32.add
                                  i64.load align=1
                                  i64.store
                                  local.get 0
                                  local.get 1
                                  i64.load align=1
                                  i64.store offset=32
                                  local.get 0
                                  i32.const 208
                                  i32.add
                                  local.get 0
                                  i32.const 16
                                  i32.add
                                  call $_ZN7bxa_abi3bxa6stream6Stream3pop17h6bc1e74d1b907f95E
                                  local.get 0
                                  i32.load8_u offset=208
                                  i32.const 1
                                  i32.eq
                                  br_if 9 (;@6;)
                                  local.get 0
                                  i32.const 56
                                  i32.add
                                  i32.const 24
                                  i32.add
                                  local.get 0
                                  i32.const 208
                                  i32.add
                                  i32.const 32
                                  i32.add
                                  i64.load
                                  i64.store
                                  local.get 0
                                  i32.const 56
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  local.get 0
                                  i32.const 208
                                  i32.add
                                  i32.const 24
                                  i32.add
                                  local.tee 3
                                  i64.load
                                  i64.store
                                  local.get 0
                                  i32.const 56
                                  i32.add
                                  i32.const 8
                                  i32.add
                                  local.get 0
                                  i32.const 208
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  local.tee 1
                                  i64.load
                                  i64.store
                                  local.get 0
                                  local.get 0
                                  i32.const 208
                                  i32.add
                                  i32.const 8
                                  i32.add
                                  local.tee 4
                                  i64.load
                                  i64.store offset=56
                                  i32.const 0
                                  local.set 2
                                  local.get 1
                                  i32.const 0
                                  i32.store
                                  local.get 4
                                  i64.const 0
                                  i64.store
                                  local.get 0
                                  i64.const 0
                                  i64.store offset=208
                                  local.get 0
                                  i32.const 208
                                  i32.add
                                  call $sender
                                  local.get 0
                                  i32.const 120
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  local.get 1
                                  i32.load
                                  i32.store
                                  local.get 0
                                  i32.const 120
                                  i32.add
                                  i32.const 8
                                  i32.add
                                  local.get 4
                                  i64.load
                                  i64.store
                                  local.get 0
                                  local.get 0
                                  i64.load offset=208
                                  i64.store offset=120
                                  local.get 0
                                  i32.const 144
                                  i32.add
                                  local.get 0
                                  i32.const 120
                                  i32.add
                                  call $_ZN3bxa15read_balance_of17hb0f99d7d7efca8e8E
                                  local.get 0
                                  i32.const 176
                                  i32.add
                                  local.get 0
                                  i32.const 32
                                  i32.add
                                  call $_ZN3bxa15read_balance_of17hb0f99d7d7efca8e8E
                                  local.get 3
                                  i64.const 0
                                  i64.store
                                  local.get 1
                                  i64.const 0
                                  i64.store
                                  local.get 4
                                  i64.const 0
                                  i64.store
                                  local.get 0
                                  i64.const 0
                                  i64.store offset=208
                                  local.get 0
                                  i32.const 56
                                  i32.add
                                  local.get 0
                                  i32.const 208
                                  i32.add
                                  i32.const 32
                                  call $memcmp
                                  i32.eqz
                                  br_if 11 (;@4;)
                                  local.get 0
                                  i32.const 144
                                  i32.add
                                  local.get 0
                                  i32.const 56
                                  i32.add
                                  call $_ZN60_$LT$uint..common..U256$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h12569bf1b8225b4bE
                                  i32.const 255
                                  i32.and
                                  i32.const 255
                                  i32.eq
                                  br_if 11 (;@4;)
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 0
                                        i32.const 32
                                        i32.add
                                        local.get 0
                                        i32.const 120
                                        i32.add
                                        i32.const 20
                                        call $memcmp
                                        i32.eqz
                                        br_if 0 (;@18;)
                                        local.get 0
                                        i64.load offset=152
                                        local.tee 11
                                        local.get 0
                                        i64.load offset=64
                                        local.tee 12
                                        i64.sub
                                        local.tee 13
                                        local.get 11
                                        i64.gt_u
                                        local.set 4
                                        local.get 0
                                        i64.load offset=80
                                        local.set 11
                                        local.get 0
                                        i64.load offset=72
                                        local.set 14
                                        local.get 0
                                        i64.load offset=168
                                        local.set 15
                                        local.get 0
                                        i64.load offset=160
                                        local.set 16
                                        local.get 0
                                        i64.load offset=144
                                        local.tee 17
                                        local.get 0
                                        i64.load offset=56
                                        local.tee 18
                                        i64.sub
                                        local.tee 19
                                        local.get 17
                                        i64.le_u
                                        br_if 1 (;@17;)
                                        local.get 13
                                        i64.const -1
                                        i64.add
                                        local.tee 17
                                        local.get 13
                                        i64.gt_u
                                        local.get 4
                                        i32.add
                                        local.set 4
                                        br 2 (;@16;)
                                      end
                                      i32.const 0
                                      local.set 2
                                      br 13 (;@4;)
                                    end
                                    local.get 13
                                    local.set 17
                                  end
                                  local.get 16
                                  local.get 14
                                  i64.sub
                                  local.tee 13
                                  local.get 16
                                  i64.gt_u
                                  local.set 1
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 4
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      local.get 13
                                      local.get 4
                                      i64.extend_i32_u
                                      i64.sub
                                      local.tee 20
                                      local.get 13
                                      i64.gt_u
                                      local.get 1
                                      i32.add
                                      local.set 1
                                      br 1 (;@16;)
                                    end
                                    local.get 13
                                    local.set 20
                                  end
                                  local.get 15
                                  local.get 11
                                  i64.sub
                                  local.tee 16
                                  local.get 15
                                  i64.gt_u
                                  local.set 4
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 1
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      local.get 16
                                      local.get 1
                                      i64.extend_i32_u
                                      i64.sub
                                      local.tee 21
                                      local.get 16
                                      i64.gt_u
                                      local.get 4
                                      i32.add
                                      br_if 1 (;@16;)
                                      br 12 (;@5;)
                                    end
                                    local.get 16
                                    local.set 21
                                    local.get 4
                                    i32.eqz
                                    br_if 11 (;@5;)
                                  end
                                  i32.const 33932
                                  call $_ZN4core9panicking5panic17hb7cb5b256fd27bcfE
                                  unreachable
                                end
                                i32.const 33956
                                call $_ZN4core9panicking5panic17hb7cb5b256fd27bcfE
                                unreachable
                              end
                              i32.const 34004
                              call $_ZN4core9panicking5panic17hb7cb5b256fd27bcfE
                              unreachable
                            end
                            i32.const 33980
                            call $_ZN4core9panicking5panic17hb7cb5b256fd27bcfE
                            unreachable
                          end
                          i32.const 32
                          i32.const 1
                          call $rust_oom
                          unreachable
                        end
                        i32.const 33980
                        call $_ZN4core9panicking5panic17hb7cb5b256fd27bcfE
                        unreachable
                      end
                      local.get 0
                      i32.load8_u offset=209
                      call $_ZN4core6result13unwrap_failed17hb454cd1bb2d0306eE
                      unreachable
                    end
                    i32.const 32
                    i32.const 1
                    call $rust_oom
                    unreachable
                  end
                  i32.const 33980
                  call $_ZN4core9panicking5panic17hb7cb5b256fd27bcfE
                  unreachable
                end
                local.get 0
                i32.load8_u offset=209
                call $_ZN4core6result13unwrap_failed17hb454cd1bb2d0306eE
                unreachable
              end
              local.get 0
              i32.load8_u offset=209
              call $_ZN4core6result13unwrap_failed17hb454cd1bb2d0306eE
              unreachable
            end
            local.get 0
            i64.load offset=184
            local.tee 15
            local.get 12
            i64.add
            local.tee 13
            local.get 15
            i64.lt_u
            local.set 4
            local.get 0
            i64.load offset=200
            local.set 15
            local.get 0
            i64.load offset=192
            local.set 16
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i64.load offset=176
                local.tee 12
                local.get 18
                i64.add
                local.tee 18
                local.get 12
                i64.ge_u
                br_if 0 (;@6;)
                local.get 13
                i64.const 1
                i64.add
                local.tee 12
                local.get 13
                i64.lt_u
                local.get 4
                i32.add
                local.set 4
                br 1 (;@5;)
              end
              local.get 13
              local.set 12
            end
            local.get 16
            local.get 14
            i64.add
            local.tee 14
            local.get 16
            i64.lt_u
            local.set 1
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                i32.eqz
                br_if 0 (;@6;)
                local.get 14
                local.get 4
                i64.extend_i32_u
                i64.add
                local.tee 16
                local.get 14
                i64.lt_u
                local.get 1
                i32.add
                local.set 1
                br 1 (;@5;)
              end
              local.get 14
              local.set 16
            end
            local.get 15
            local.get 11
            i64.add
            local.tee 11
            local.get 15
            i64.lt_u
            local.set 4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 11
                  local.get 1
                  i64.extend_i32_u
                  i64.add
                  local.tee 14
                  local.get 11
                  i64.lt_u
                  local.get 4
                  i32.add
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
                local.get 11
                local.set 14
                local.get 4
                i32.eqz
                br_if 1 (;@5;)
              end
              i32.const 33932
              call $_ZN4core9panicking5panic17hb7cb5b256fd27bcfE
              unreachable
            end
            local.get 0
            i32.const 227
            i32.add
            local.get 0
            i32.const 120
            i32.add
            i32.const 8
            i32.add
            i64.load
            i64.store align=1
            local.get 0
            i32.const 235
            i32.add
            local.get 0
            i32.const 120
            i32.add
            i32.const 16
            i32.add
            i32.load
            i32.store align=1
            local.get 0
            i32.const 0
            i32.store offset=215 align=1
            local.get 0
            local.get 0
            i64.load offset=120
            i64.store offset=219 align=1
            local.get 0
            i32.const 368
            i32.add
            i32.const 8
            i32.add
            local.tee 1
            local.get 0
            i32.const 208
            i32.add
            i32.const 8
            i32.add
            i64.load
            i64.store
            local.get 0
            i32.const 368
            i32.add
            i32.const 16
            i32.add
            local.tee 4
            local.get 0
            i32.const 208
            i32.add
            i32.const 16
            i32.add
            i64.load
            i64.store
            local.get 0
            i32.const 368
            i32.add
            i32.const 23
            i32.add
            local.tee 2
            local.get 0
            i32.const 208
            i32.add
            i32.const 23
            i32.add
            i64.load align=1
            i64.store align=1
            local.get 0
            i64.const 0
            i64.store offset=208
            local.get 0
            local.get 0
            i64.load offset=208
            i64.store offset=368
            local.get 0
            i32.const 345
            i32.add
            local.get 1
            i64.load
            i64.store align=1
            local.get 0
            i32.const 353
            i32.add
            local.get 4
            i64.load
            i64.store align=1
            i32.const 24
            local.set 1
            local.get 0
            i32.const 336
            i32.add
            i32.const 24
            i32.add
            local.get 2
            i64.load align=1
            i64.store align=1
            local.get 0
            i32.const 1
            i32.store8 offset=336
            local.get 0
            local.get 0
            i64.load offset=368
            i64.store offset=337 align=1
            local.get 0
            local.get 21
            i64.store offset=232
            local.get 0
            local.get 20
            i64.store offset=224
            local.get 0
            local.get 17
            i64.store offset=216
            local.get 0
            local.get 19
            i64.store offset=208
            local.get 0
            i32.const 304
            i32.add
            i32.const 24
            i32.add
            i64.const 0
            i64.store
            local.get 0
            i32.const 304
            i32.add
            i32.const 16
            i32.add
            i64.const 0
            i64.store
            local.get 0
            i32.const 304
            i32.add
            i32.const 8
            i32.add
            i64.const 0
            i64.store
            local.get 0
            i64.const 0
            i64.store offset=304
            local.get 0
            i32.const 304
            i32.add
            local.set 4
            loop  ;; label = @5
              local.get 4
              local.get 0
              i32.const 208
              i32.add
              local.get 1
              i32.add
              i64.load
              local.tee 11
              i64.const 56
              i64.shl
              local.get 11
              i64.const 40
              i64.shl
              i64.const 71776119061217280
              i64.and
              i64.or
              local.get 11
              i64.const 24
              i64.shl
              i64.const 280375465082880
              i64.and
              local.get 11
              i64.const 8
              i64.shl
              i64.const 1095216660480
              i64.and
              i64.or
              i64.or
              local.get 11
              i64.const 8
              i64.shr_u
              i64.const 4278190080
              i64.and
              local.get 11
              i64.const 24
              i64.shr_u
              i64.const 16711680
              i64.and
              i64.or
              local.get 11
              i64.const 40
              i64.shr_u
              i64.const 65280
              i64.and
              local.get 11
              i64.const 56
              i64.shr_u
              i64.or
              i64.or
              i64.or
              i64.store align=1
              local.get 4
              i32.const 8
              i32.add
              local.set 4
              local.get 1
              i32.const -8
              i32.add
              local.tee 1
              i32.const -8
              i32.ne
              br_if 0 (;@5;)
            end
            i32.const 24
            local.set 1
            local.get 0
            i32.const 368
            i32.add
            i32.const 24
            i32.add
            local.get 0
            i32.const 304
            i32.add
            i32.const 24
            i32.add
            local.tee 3
            i64.load
            i64.store
            local.get 0
            i32.const 368
            i32.add
            i32.const 16
            i32.add
            local.tee 4
            local.get 0
            i32.const 304
            i32.add
            i32.const 16
            i32.add
            local.tee 5
            i64.load
            i64.store
            local.get 0
            i32.const 368
            i32.add
            i32.const 8
            i32.add
            local.tee 2
            local.get 0
            i32.const 304
            i32.add
            i32.const 8
            i32.add
            local.tee 6
            i64.load
            i64.store
            local.get 0
            local.get 0
            i64.load offset=304
            i64.store offset=368
            local.get 0
            i32.const 336
            i32.add
            local.get 0
            i32.const 368
            i32.add
            call $storage_write
            local.get 0
            i32.const 227
            i32.add
            local.get 0
            i32.const 32
            i32.add
            i32.const 8
            i32.add
            i64.load
            i64.store align=1
            local.get 0
            i32.const 235
            i32.add
            local.get 0
            i32.const 32
            i32.add
            i32.const 16
            i32.add
            i32.load
            i32.store align=1
            local.get 0
            i32.const 0
            i32.store offset=215 align=1
            local.get 0
            local.get 0
            i64.load offset=32
            i64.store offset=219 align=1
            local.get 2
            local.get 0
            i32.const 208
            i32.add
            i32.const 8
            i32.add
            i64.load
            i64.store
            local.get 4
            local.get 0
            i32.const 208
            i32.add
            i32.const 16
            i32.add
            i64.load
            i64.store
            local.get 0
            i32.const 368
            i32.add
            i32.const 23
            i32.add
            local.tee 7
            local.get 0
            i32.const 208
            i32.add
            i32.const 23
            i32.add
            i64.load align=1
            i64.store align=1
            local.get 0
            i64.const 0
            i64.store offset=208
            local.get 0
            local.get 0
            i64.load offset=208
            i64.store offset=368
            local.get 0
            i32.const 345
            i32.add
            local.get 2
            i64.load
            i64.store align=1
            local.get 0
            i32.const 353
            i32.add
            local.get 4
            i64.load
            i64.store align=1
            local.get 0
            i32.const 336
            i32.add
            i32.const 24
            i32.add
            local.get 7
            i64.load align=1
            i64.store align=1
            local.get 0
            i32.const 1
            i32.store8 offset=336
            local.get 0
            local.get 0
            i64.load offset=368
            i64.store offset=337 align=1
            local.get 0
            local.get 14
            i64.store offset=232
            local.get 0
            local.get 16
            i64.store offset=224
            local.get 0
            local.get 12
            i64.store offset=216
            local.get 0
            local.get 18
            i64.store offset=208
            local.get 3
            i64.const 0
            i64.store
            local.get 5
            i64.const 0
            i64.store
            local.get 6
            i64.const 0
            i64.store
            local.get 0
            i64.const 0
            i64.store offset=304
            local.get 0
            i32.const 304
            i32.add
            local.set 4
            loop  ;; label = @5
              local.get 4
              local.get 0
              i32.const 208
              i32.add
              local.get 1
              i32.add
              i64.load
              local.tee 11
              i64.const 56
              i64.shl
              local.get 11
              i64.const 40
              i64.shl
              i64.const 71776119061217280
              i64.and
              i64.or
              local.get 11
              i64.const 24
              i64.shl
              i64.const 280375465082880
              i64.and
              local.get 11
              i64.const 8
              i64.shl
              i64.const 1095216660480
              i64.and
              i64.or
              i64.or
              local.get 11
              i64.const 8
              i64.shr_u
              i64.const 4278190080
              i64.and
              local.get 11
              i64.const 24
              i64.shr_u
              i64.const 16711680
              i64.and
              i64.or
              local.get 11
              i64.const 40
              i64.shr_u
              i64.const 65280
              i64.and
              local.get 11
              i64.const 56
              i64.shr_u
              i64.or
              i64.or
              i64.or
              i64.store align=1
              local.get 4
              i32.const 8
              i32.add
              local.set 4
              local.get 1
              i32.const -8
              i32.add
              local.tee 1
              i32.const -8
              i32.ne
              br_if 0 (;@5;)
            end
            local.get 0
            i32.const 368
            i32.add
            i32.const 24
            i32.add
            local.tee 4
            local.get 0
            i32.const 304
            i32.add
            i32.const 24
            i32.add
            local.tee 6
            i64.load
            i64.store
            local.get 0
            i32.const 368
            i32.add
            i32.const 16
            i32.add
            local.tee 2
            local.get 0
            i32.const 304
            i32.add
            i32.const 16
            i32.add
            local.tee 7
            i64.load
            i64.store
            local.get 0
            i32.const 368
            i32.add
            i32.const 8
            i32.add
            local.tee 1
            local.get 0
            i32.const 304
            i32.add
            i32.const 8
            i32.add
            local.tee 8
            i64.load
            i64.store
            local.get 0
            local.get 0
            i64.load offset=304
            i64.store offset=368
            local.get 0
            i32.const 336
            i32.add
            local.get 0
            i32.const 368
            i32.add
            call $storage_write
            local.get 0
            i32.const 88
            i32.add
            i32.const 24
            i32.add
            local.tee 9
            local.get 0
            i32.const 56
            i32.add
            i32.const 24
            i32.add
            i64.load
            i64.store
            local.get 0
            i32.const 88
            i32.add
            i32.const 16
            i32.add
            local.tee 10
            local.get 0
            i32.const 56
            i32.add
            i32.const 16
            i32.add
            i64.load
            i64.store
            local.get 0
            i32.const 88
            i32.add
            i32.const 8
            i32.add
            local.tee 22
            local.get 0
            i32.const 56
            i32.add
            i32.const 8
            i32.add
            i64.load
            i64.store
            local.get 0
            local.get 0
            i64.load offset=56
            i64.store offset=88
            local.get 0
            i32.const 208
            i32.add
            i32.const 8
            i32.add
            i64.const -6157203558317899159
            i64.store
            local.get 0
            i32.const 208
            i32.add
            i32.const 24
            i32.add
            i64.const -1174555541341801176
            i64.store
            local.get 0
            i32.const 208
            i32.add
            i32.const 16
            i32.add
            i64.const 1630800473619901333
            i64.store
            local.get 0
            i64.const -7221273393988701475
            i64.store offset=368 align=1
            local.get 0
            i64.const 1630800473619901333
            i64.store offset=384 align=1
            local.get 0
            i64.const -1174555541341801176
            i64.store offset=392 align=1
            local.get 0
            i64.const -7221273393988701475
            i64.store offset=208
            local.get 0
            i64.const -6157203558317899159
            i64.store offset=376 align=1
            local.get 1
            i32.const 0
            i32.store
            local.get 0
            i32.const 388
            i32.add
            local.tee 3
            local.get 0
            i32.const 120
            i32.add
            i32.const 8
            i32.add
            i64.load
            i64.store align=4
            local.get 0
            i32.const 396
            i32.add
            local.tee 5
            local.get 0
            i32.const 120
            i32.add
            i32.const 16
            i32.add
            i32.load
            i32.store
            local.get 0
            local.get 0
            i64.load offset=120
            i64.store offset=380 align=4
            local.get 8
            local.get 1
            i64.load
            i64.store
            local.get 7
            local.get 2
            i64.load
            i64.store
            local.get 6
            local.get 4
            i64.load
            i64.store
            local.get 0
            i64.const 0
            i64.store offset=368
            local.get 0
            i64.const 0
            i64.store offset=304
            local.get 1
            i32.const 0
            i32.store
            local.get 3
            local.get 0
            i32.const 32
            i32.add
            i32.const 8
            i32.add
            i64.load
            i64.store align=4
            local.get 5
            local.get 0
            i32.const 32
            i32.add
            i32.const 16
            i32.add
            i32.load
            i32.store
            local.get 0
            local.get 0
            i64.load offset=32
            i64.store offset=380 align=4
            local.get 0
            i32.const 336
            i32.add
            i32.const 8
            i32.add
            local.tee 3
            local.get 1
            i64.load
            i64.store
            local.get 0
            i32.const 336
            i32.add
            i32.const 16
            i32.add
            local.tee 23
            local.get 2
            i64.load
            i64.store
            local.get 0
            i32.const 336
            i32.add
            i32.const 24
            i32.add
            local.tee 5
            local.get 4
            i64.load
            i64.store
            local.get 0
            i64.const 0
            i64.store offset=368
            local.get 0
            i64.const 0
            i64.store offset=336
            local.get 0
            i32.const 264
            i32.add
            local.get 6
            i64.load
            i64.store
            local.get 0
            i32.const 256
            i32.add
            local.get 7
            i64.load
            i64.store
            local.get 0
            i32.const 248
            i32.add
            local.get 8
            i64.load
            i64.store
            local.get 0
            i32.const 280
            i32.add
            local.get 3
            i64.load
            i64.store
            local.get 0
            i32.const 288
            i32.add
            local.get 23
            i64.load
            i64.store
            local.get 0
            i32.const 296
            i32.add
            local.get 5
            i64.load
            i64.store
            local.get 0
            local.get 0
            i64.load offset=304
            i64.store offset=240
            local.get 0
            local.get 0
            i64.load offset=336
            i64.store offset=272
            i32.const 32
            call $__rust_alloc
            local.tee 6
            i32.eqz
            br_if 3 (;@1;)
            local.get 5
            i32.const 0
            i32.store
            local.get 3
            i64.const 32
            i64.store
            local.get 0
            i64.const 1
            i64.store offset=352
            local.get 0
            local.get 6
            i32.store offset=340
            local.get 0
            i32.const 32
            i32.store offset=336
            local.get 4
            local.get 9
            i64.load
            i64.store
            local.get 2
            local.get 10
            i64.load
            i64.store
            local.get 1
            local.get 22
            i64.load
            i64.store
            local.get 0
            local.get 0
            i64.load offset=88
            i64.store offset=368
            local.get 0
            i32.const 336
            i32.add
            local.get 0
            i32.const 368
            i32.add
            call $_ZN7bxa_abi3bxa4sink4Sink4push17h7eeccc759114f2fbE
            local.get 4
            local.get 5
            i32.load
            i32.store
            local.get 2
            local.get 0
            i64.load offset=352
            i64.store
            local.get 1
            local.get 3
            i64.load
            i64.store
            local.get 0
            local.get 0
            i64.load offset=336
            i64.store offset=368
            local.get 0
            i32.const 304
            i32.add
            local.get 0
            i32.const 368
            i32.add
            call $_ZN7bxa_abi3bxa4sink4Sink18finalize_panicking17h5fa553e69416a7f8E
            local.get 0
            i32.const 208
            i32.add
            i32.const 3
            local.get 0
            i32.load offset=304
            local.tee 1
            local.get 0
            i32.load offset=312
            call $elog
            block  ;; label = @5
              local.get 0
              i32.load offset=308
              local.tee 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              local.get 4
              call $__rust_dealloc
            end
            i32.const 1
            local.set 2
          end
          i32.const 32
          call $__rust_alloc
          local.tee 1
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.const 368
          i32.add
          i32.const 24
          i32.add
          local.tee 4
          i32.const 0
          i32.store
          local.get 0
          i32.const 368
          i32.add
          i32.const 8
          i32.add
          local.tee 3
          i64.const 32
          i64.store
          local.get 0
          i64.const 1
          i64.store offset=384
          local.get 0
          local.get 1
          i32.store offset=372
          local.get 0
          i32.const 32
          i32.store offset=368
          local.get 0
          i32.const 327
          i32.add
          i64.const 0
          i64.store align=1
          local.get 0
          i32.const 304
          i32.add
          i32.const 16
          i32.add
          i64.const 0
          i64.store
          local.get 0
          i32.const 304
          i32.add
          i32.const 8
          i32.add
          i64.const 0
          i64.store
          local.get 0
          i32.const 335
          i32.add
          local.get 2
          i32.store8
          local.get 0
          i64.const 0
          i64.store offset=304
          local.get 0
          i32.const 368
          i32.add
          i32.const 4
          i32.or
          local.get 0
          i32.const 304
          i32.add
          local.get 0
          i32.const 304
          i32.add
          i32.const 32
          i32.add
          call $_ZN109_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$$RF$T$C$core..slice..Iter$LT$T$GT$$GT$$GT$11spec_extend17h7b67a650fda91297E
          local.get 0
          i32.const 208
          i32.add
          i32.const 24
          i32.add
          local.get 4
          i32.load
          i32.store
          local.get 0
          i32.const 208
          i32.add
          i32.const 16
          i32.add
          local.get 0
          i64.load offset=384
          i64.store
          local.get 0
          i32.const 208
          i32.add
          i32.const 8
          i32.add
          local.get 3
          i64.load
          i64.store
          local.get 0
          local.get 0
          i64.load offset=368
          i64.store offset=208
          local.get 0
          i32.const 176
          i32.add
          local.get 0
          i32.const 208
          i32.add
          call $_ZN7bxa_abi3bxa4sink4Sink18finalize_panicking17h5fa553e69416a7f8E
        end
        local.get 0
        i32.load offset=176
        local.tee 1
        local.get 0
        i32.load offset=184
        call $ret
        block  ;; label = @3
          local.get 0
          i32.load offset=180
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 4
          call $__rust_dealloc
        end
        block  ;; label = @3
          local.get 0
          i32.load offset=4
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load
          local.get 1
          call $__rust_dealloc
        end
        local.get 0
        i32.const 400
        i32.add
        global.set 0
        return
      end
      i32.const 32
      i32.const 1
      call $rust_oom
      unreachable
    end
    i32.const 32
    i32.const 1
    call $rust_oom
    unreachable)
  (func $_ZN12bxa_ethereum3ext5input17hc86ce898da4ce5acE (type 4) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            call $input_length
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const -1
            i32.le_s
            br_if 2 (;@2;)
            local.get 1
            call $__rust_alloc
            local.tee 2
            i32.eqz
            br_if 3 (;@1;)
            local.get 2
            call $fetch_input
            local.get 1
            local.set 3
            br 1 (;@3;)
          end
          i32.const 0
          local.set 3
          i32.const 1
          local.set 2
        end
        local.get 0
        local.get 1
        i32.store offset=8
        local.get 0
        local.get 3
        i32.store offset=4
        local.get 0
        local.get 2
        i32.store
        return
      end
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h821b4ebcd561d883E.llvm.16801011177413829184
      unreachable
    end
    local.get 1
    i32.const 1
    call $rust_oom
    unreachable)
  (func $_ZN60_$LT$uint..common..U256$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h12569bf1b8225b4bE (type 1) (param i32 i32) (result i32)
    (local i32 i64 i64)
    local.get 0
    i32.const 24
    i32.add
    local.set 0
    local.get 1
    i32.const 24
    i32.add
    local.set 2
    i32.const 3
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.const -1
            i32.eq
            br_if 1 (;@3;)
            local.get 1
            i32.const 3
            i32.gt_u
            br_if 3 (;@1;)
            local.get 0
            i64.load
            local.tee 3
            local.get 2
            i64.load
            local.tee 4
            i64.lt_u
            br_if 2 (;@2;)
            local.get 0
            i32.const -8
            i32.add
            local.set 0
            local.get 2
            i32.const -8
            i32.add
            local.set 2
            local.get 1
            i32.const -1
            i32.add
            local.set 1
            local.get 3
            local.get 4
            i64.le_u
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        i32.const 0
        return
      end
      i32.const 255
      return
    end
    local.get 1
    i32.const 4
    call $_ZN4core9panicking18panic_bounds_check17h8e3d7d625bb942bbE
    unreachable)
  (func $_ZN4spin4once13Once$LT$T$GT$9call_once17hd351eca639ee601cE (type 5) (result i32)
    (local i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=32768
      local.tee 0
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      i32.load offset=32768
      local.tee 0
      i32.const 1
      local.get 0
      select
      i32.store offset=32768
      local.get 0
      br_if 0 (;@1;)
      i32.const 0
      i64.const 0
      i64.store offset=32797 align=1
      i32.const 0
      i64.const 0
      i64.store offset=32790 align=2
      i32.const 0
      i64.const 0
      i64.store offset=32782 align=2
      i32.const 0
      i64.const 0
      i64.store offset=32774 align=2
      i32.const 0
      i32.const 513
      i32.store16 offset=32772
      i32.const 0
      i32.const 2
      i32.store offset=32768
      i32.const 32773
      return
    end
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        i32.const 0
        i32.load offset=32768
        local.set 0
        br 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 0
      i32.const 2
      i32.ne
      br_if 0 (;@1;)
      i32.const 32773
      i32.const 0
      i32.const 0
      i32.load8_u offset=32772
      i32.const 1
      i32.eq
      select
      return
    end
    block  ;; label = @1
      local.get 0
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      i32.const 34052
      call $_ZN4core9panicking5panic17hb7cb5b256fd27bcfE
      unreachable
    end
    i32.const 34028
    call $_ZN4core9panicking5panic17hb7cb5b256fd27bcfE
    unreachable)
  (func $__rust_alloc (type 2) (param i32) (result i32)
    local.get 0
    call $__rg_alloc)
  (func $_ZN7bxa_abi3bxa4sink4Sink4push17h7eeccc759114f2fbE (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 24
    i32.add
    local.get 1
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 2
    local.get 1
    i64.load
    i64.store
    local.get 0
    i32.const 4
    i32.add
    local.set 1
    local.get 0
    i32.const 12
    i32.add
    local.tee 3
    i32.load
    local.tee 4
    i32.const 32
    i32.add
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.const -33
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        local.get 4
        i32.const 32
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hf65b1e8caf0de8c8E
        local.get 1
        i32.load
        local.get 3
        i32.load
        local.tee 6
        i32.add
        local.set 3
        i32.const 1
        local.set 1
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.add
          i32.const -1
          i32.add
          i32.const 0
          i32.store8
          local.get 1
          i32.const 1
          i32.add
          local.tee 1
          i32.const 32
          i32.lt_u
          br_if 0 (;@3;)
        end
        local.get 3
        local.get 1
        i32.add
        i32.const -1
        i32.add
        i32.const 0
        i32.store8
        local.get 0
        i32.const 12
        i32.add
        local.get 6
        local.get 1
        i32.add
        local.tee 6
        i32.store
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 7
        br 1 (;@1;)
      end
      local.get 1
      i32.load
      local.set 7
      local.get 5
      local.set 1
      local.get 4
      local.set 6
      block  ;; label = @2
        loop  ;; label = @3
          local.get 1
          i32.const 1
          i32.add
          local.tee 3
          local.get 1
          i32.lt_u
          br_if 1 (;@2;)
          local.get 6
          i32.const -1
          i32.add
          local.set 6
          local.get 3
          local.set 1
          local.get 3
          local.get 4
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 0
      i32.const 12
      i32.add
      local.get 6
      i32.store
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.const -32
        i32.ge_u
        br_if 0 (;@2;)
        local.get 6
        local.get 5
        i32.lt_u
        br_if 1 (;@1;)
        local.get 7
        local.get 4
        i32.add
        local.set 1
        local.get 2
        i32.const 24
        i32.add
        local.set 3
        i32.const 0
        local.set 6
        loop  ;; label = @3
          local.get 1
          local.get 3
          i64.load
          local.tee 8
          i64.const 56
          i64.shl
          local.get 8
          i64.const 40
          i64.shl
          i64.const 71776119061217280
          i64.and
          i64.or
          local.get 8
          i64.const 24
          i64.shl
          i64.const 280375465082880
          i64.and
          local.get 8
          i64.const 8
          i64.shl
          i64.const 1095216660480
          i64.and
          i64.or
          i64.or
          local.get 8
          i64.const 8
          i64.shr_u
          i64.const 4278190080
          i64.and
          local.get 8
          i64.const 24
          i64.shr_u
          i64.const 16711680
          i64.and
          i64.or
          local.get 8
          i64.const 40
          i64.shr_u
          i64.const 65280
          i64.and
          local.get 8
          i64.const 56
          i64.shr_u
          i64.or
          i64.or
          i64.or
          i64.store align=1
          local.get 1
          i32.const 8
          i32.add
          local.set 1
          local.get 3
          i32.const -8
          i32.add
          local.set 3
          local.get 6
          i32.const 1
          i32.add
          local.tee 6
          i32.const 4
          i32.lt_u
          br_if 0 (;@3;)
        end
        local.get 2
        i32.const 32
        i32.add
        global.set 0
        return
      end
      local.get 4
      local.get 5
      call $_ZN4core5slice22slice_index_order_fail17h3d34e0ef769a011fE
      unreachable
    end
    local.get 5
    local.get 6
    call $_ZN4core5slice20slice_index_len_fail17hb81ac75c4a989ce8E
    unreachable)
  (func $_ZN7bxa_abi3bxa4sink4Sink18finalize_panicking17h5fa553e69416a7f8E (type 3) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.const 12
      i32.add
      local.tee 3
      i32.load
      local.get 1
      i32.load
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.const 8
      i32.add
      local.tee 4
      local.get 3
      i32.load
      i32.store
      local.get 2
      local.get 1
      i64.load offset=4 align=4
      i64.store
      local.get 1
      i32.const 20
      i32.add
      i32.load
      local.set 3
      local.get 2
      local.get 1
      i32.load offset=16
      local.tee 5
      local.get 5
      local.get 1
      i32.const 24
      i32.add
      i32.load
      i32.add
      call $_ZN109_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$$RF$T$C$core..slice..Iter$LT$T$GT$$GT$$GT$11spec_extend17h7b67a650fda91297E
      local.get 0
      i32.const 8
      i32.add
      local.get 4
      i32.load
      i32.store
      local.get 0
      local.get 2
      i64.load
      i64.store align=4
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        local.get 3
        call $__rust_dealloc
      end
      local.get 2
      i32.const 16
      i32.add
      global.set 0
      return
    end
    call $_ZN4core9panicking9panic_fmt17h8a97af3c4a58de81E
    unreachable)
  (func $_ZN7bxa_abi3bxa6stream6Stream3pop17hd583ddae499c33f0E (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i64 i32 i32 i32)
    global.get 0
    i32.const 160
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=8
          local.tee 3
          i32.const 32
          i32.add
          local.tee 4
          local.get 1
          i32.load offset=4
          i32.le_u
          br_if 0 (;@3;)
          local.get 2
          i32.const 96
          i32.add
          i32.const 23
          i32.add
          local.get 2
          i32.const 128
          i32.add
          i32.const 23
          i32.add
          i64.load align=1
          i64.store align=1
          local.get 2
          i32.const 96
          i32.add
          i32.const 16
          i32.add
          local.get 2
          i32.const 128
          i32.add
          i32.const 16
          i32.add
          i64.load
          i64.store
          local.get 2
          i32.const 96
          i32.add
          i32.const 8
          i32.add
          local.get 2
          i32.const 128
          i32.add
          i32.const 8
          i32.add
          i64.load
          i64.store
          local.get 2
          local.get 2
          i64.load offset=128
          i64.store offset=96
          local.get 2
          i32.const 32
          i32.add
          i32.const 23
          i32.add
          local.get 2
          i32.const 64
          i32.add
          i32.const 23
          i32.add
          i64.load align=1
          i64.store align=1
          local.get 2
          i32.const 32
          i32.add
          i32.const 16
          i32.add
          local.get 2
          i32.const 64
          i32.add
          i32.const 16
          i32.add
          i64.load
          i64.store
          local.get 2
          i32.const 32
          i32.add
          i32.const 8
          i32.add
          local.get 2
          i32.const 64
          i32.add
          i32.const 8
          i32.add
          i64.load
          i64.store
          local.get 2
          local.get 2
          i64.load offset=64
          i64.store offset=32
          local.get 0
          i32.const 3
          i32.store8 offset=1
          i32.const 1
          local.set 1
          br 1 (;@2;)
        end
        local.get 1
        i32.const 8
        i32.add
        local.get 4
        i32.store
        local.get 3
        i32.const -32
        i32.ge_u
        br_if 1 (;@1;)
        local.get 2
        i32.const 128
        i32.add
        i32.const 23
        i32.add
        local.tee 5
        local.get 1
        i32.load
        local.get 3
        i32.add
        local.tee 1
        i32.const 24
        i32.add
        i64.load align=1
        i64.store align=1
        local.get 2
        i32.const 128
        i32.add
        i32.const 16
        i32.add
        local.tee 6
        local.get 1
        i32.const 17
        i32.add
        i64.load align=1
        i64.store
        local.get 2
        i32.const 128
        i32.add
        i32.const 8
        i32.add
        local.tee 7
        local.get 1
        i32.const 9
        i32.add
        i64.load align=1
        local.tee 8
        i64.store
        local.get 2
        i32.const 96
        i32.add
        i32.const 8
        i32.add
        local.tee 3
        local.get 8
        i64.store
        local.get 2
        i32.const 96
        i32.add
        i32.const 16
        i32.add
        local.tee 4
        local.get 6
        i64.load
        i64.store
        local.get 2
        i32.const 96
        i32.add
        i32.const 23
        i32.add
        local.tee 9
        local.get 5
        i64.load align=1
        i64.store align=1
        local.get 2
        local.get 1
        i64.load offset=1 align=1
        local.tee 8
        i64.store offset=128
        local.get 2
        local.get 8
        i64.store offset=96
        local.get 2
        i32.const 64
        i32.add
        i32.const 23
        i32.add
        local.tee 1
        local.get 9
        i64.load align=1
        i64.store align=1
        local.get 2
        i32.const 64
        i32.add
        i32.const 16
        i32.add
        local.tee 9
        local.get 4
        i64.load
        i64.store
        local.get 2
        i32.const 64
        i32.add
        i32.const 8
        i32.add
        local.tee 10
        local.get 3
        i64.load
        i64.store
        local.get 2
        local.get 2
        i64.load offset=96
        i64.store offset=64
        local.get 2
        i32.const 32
        i32.add
        i32.const 23
        i32.add
        local.tee 11
        local.get 1
        i64.load align=1
        i64.store align=1
        local.get 2
        i32.const 32
        i32.add
        i32.const 16
        i32.add
        local.tee 1
        local.get 9
        i64.load
        i64.store
        local.get 2
        i32.const 32
        i32.add
        i32.const 8
        i32.add
        local.tee 9
        local.get 10
        i64.load
        i64.store
        local.get 2
        local.get 2
        i64.load offset=64
        i64.store offset=32
        local.get 2
        i32.const 23
        i32.add
        local.tee 10
        local.get 11
        i64.load align=1
        i64.store align=1
        local.get 2
        i32.const 16
        i32.add
        local.tee 11
        local.get 1
        i64.load
        i64.store
        local.get 2
        i32.const 8
        i32.add
        local.tee 1
        local.get 9
        i64.load
        i64.store
        local.get 2
        local.get 2
        i64.load offset=32
        i64.store
        local.get 5
        local.get 10
        i64.load align=1
        i64.store align=1
        local.get 6
        local.get 11
        i64.load
        i64.store
        local.get 7
        local.get 1
        i64.load
        i64.store
        local.get 3
        local.get 2
        i32.const 147
        i32.add
        i64.load align=1
        i64.store
        local.get 4
        local.get 2
        i32.const 155
        i32.add
        i32.load align=1
        i32.store
        local.get 2
        local.get 2
        i64.load
        i64.store offset=128
        local.get 2
        local.get 2
        i64.load offset=139 align=1
        i64.store offset=96
        local.get 0
        i32.const 17
        i32.add
        local.get 4
        i32.load
        i32.store align=1
        local.get 0
        i32.const 9
        i32.add
        local.get 3
        i64.load
        i64.store align=1
        local.get 0
        local.get 2
        i64.load offset=96
        i64.store offset=1 align=1
        i32.const 0
        local.set 1
      end
      local.get 0
      local.get 1
      i32.store8
      local.get 2
      i32.const 160
      i32.add
      global.set 0
      return
    end
    local.get 3
    local.get 4
    call $_ZN4core5slice22slice_index_order_fail17h3d34e0ef769a011fE
    unreachable)
  (func $_ZN7bxa_abi3bxa6stream6Stream3pop17h6bc1e74d1b907f95E (type 3) (param i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=8
          local.tee 3
          i32.const 32
          i32.add
          local.tee 4
          local.get 1
          i32.load offset=4
          i32.le_u
          br_if 0 (;@3;)
          local.get 0
          i32.const 769
          i32.store16
          br 1 (;@2;)
        end
        local.get 1
        i32.const 8
        i32.add
        local.get 4
        i32.store
        local.get 3
        i32.const -33
        i32.gt_u
        br_if 1 (;@1;)
        local.get 1
        i32.load
        local.set 1
        local.get 2
        i32.const 56
        i32.add
        i64.const 0
        i64.store
        local.get 2
        i32.const 48
        i32.add
        i64.const 0
        i64.store
        local.get 2
        i32.const 32
        i32.add
        i32.const 8
        i32.add
        i64.const 0
        i64.store
        local.get 2
        i64.const 0
        i64.store offset=32
        local.get 1
        local.get 3
        i32.add
        local.set 4
        i32.const 31
        local.set 1
        local.get 2
        i32.const 32
        i32.add
        local.set 3
        loop  ;; label = @3
          local.get 3
          local.get 4
          local.get 1
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 1
          i32.const -1
          i32.add
          local.tee 1
          i32.const -1
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 2
        i32.const 24
        i32.add
        local.tee 1
        local.get 2
        i32.const 32
        i32.add
        i32.const 24
        i32.add
        i64.load
        i64.store
        local.get 2
        i32.const 16
        i32.add
        local.tee 3
        local.get 2
        i32.const 32
        i32.add
        i32.const 16
        i32.add
        i64.load
        i64.store
        local.get 2
        i32.const 8
        i32.add
        local.tee 4
        local.get 2
        i32.const 32
        i32.add
        i32.const 8
        i32.add
        i64.load
        i64.store
        local.get 2
        local.get 2
        i64.load offset=32
        i64.store
        local.get 0
        i32.const 0
        i32.store8
        local.get 0
        i32.const 32
        i32.add
        local.get 1
        i64.load
        i64.store
        local.get 0
        i32.const 24
        i32.add
        local.get 3
        i64.load
        i64.store
        local.get 0
        i32.const 16
        i32.add
        local.get 4
        i64.load
        i64.store
        local.get 0
        i32.const 8
        i32.add
        local.get 2
        i64.load
        i64.store
      end
      local.get 2
      i32.const 64
      i32.add
      global.set 0
      return
    end
    local.get 3
    local.get 4
    call $_ZN4core5slice22slice_index_order_fail17h3d34e0ef769a011fE
    unreachable)
  (func $_ZN4core9panicking5panic17hb7cb5b256fd27bcfE (type 4) (param i32)
    call $_ZN4core9panicking9panic_fmt17h8a97af3c4a58de81E
    unreachable)
  (func $rust_oom (type 3) (param i32 i32)
    unreachable
    unreachable)
  (func $_ZN4core6result13unwrap_failed17hb454cd1bb2d0306eE (type 4) (param i32)
    call $_ZN4core9panicking9panic_fmt17h8a97af3c4a58de81E
    unreachable)
  (func $__rust_dealloc (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call $__rg_dealloc)
  (func $_ZN109_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$$RF$T$C$core..slice..Iter$LT$T$GT$$GT$$GT$11spec_extend17h7b67a650fda91297E (type 7) (param i32 i32 i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load offset=8
    local.get 2
    local.get 1
    i32.sub
    local.tee 2
    call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hf65b1e8caf0de8c8E
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
    call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h517fb65d85ba666eE)
  (func $deploy (type 6)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 176
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 8
    i32.add
    call $_ZN12bxa_ethereum3ext5input17hc86ce898da4ce5acE
    local.get 0
    i32.load offset=16
    local.set 1
    local.get 0
    i32.load offset=8
    local.set 2
    local.get 0
    i32.const 112
    i32.add
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get 0
    i32.const 112
    i32.add
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get 0
    i32.const 112
    i32.add
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    local.get 0
    i64.const 0
    i64.store offset=112
    local.get 0
    i32.const 112
    i32.add
    call $value
    local.get 0
    i32.const 72
    i32.add
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get 0
    i32.const 72
    i32.add
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get 0
    i32.const 72
    i32.add
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    local.get 0
    i64.const 0
    i64.store offset=72
    i32.const 31
    local.set 3
    local.get 0
    i32.const 72
    i32.add
    local.set 4
    loop  ;; label = @1
      local.get 4
      local.get 0
      i32.const 112
      i32.add
      local.get 3
      i32.add
      i32.load8_u
      i32.store8
      local.get 4
      i32.const 1
      i32.add
      local.set 4
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 0
    i32.const 144
    i32.add
    i32.const 24
    i32.add
    local.get 0
    i32.const 72
    i32.add
    i32.const 24
    i32.add
    local.tee 3
    i64.load
    i64.store
    local.get 0
    i32.const 144
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 72
    i32.add
    i32.const 16
    i32.add
    local.tee 4
    i64.load
    i64.store
    local.get 0
    i32.const 144
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.const 72
    i32.add
    i32.const 8
    i32.add
    local.tee 5
    i64.load
    i64.store
    local.get 0
    local.get 0
    i64.load offset=72
    i64.store offset=144
    local.get 3
    i64.const 0
    i64.store
    local.get 4
    i64.const 0
    i64.store
    local.get 5
    i64.const 0
    i64.store
    local.get 0
    i64.const 0
    i64.store offset=72
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 144
        i32.add
        local.get 0
        i32.const 72
        i32.add
        call $_ZN60_$LT$uint..common..U256$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h12569bf1b8225b4bE
        i32.const 255
        i32.and
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.store offset=32
        local.get 0
        local.get 1
        i32.store offset=28
        local.get 0
        local.get 2
        i32.store offset=24
        local.get 0
        i32.const 72
        i32.add
        local.get 0
        i32.const 24
        i32.add
        call $_ZN7bxa_abi3bxa6stream6Stream3pop17h6bc1e74d1b907f95E
        local.get 0
        i32.load8_u offset=72
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        i32.const 24
        local.set 3
        local.get 0
        i32.const 40
        i32.add
        i32.const 24
        i32.add
        local.tee 4
        local.get 0
        i32.const 104
        i32.add
        i64.load
        i64.store
        local.get 0
        i32.const 40
        i32.add
        i32.const 16
        i32.add
        local.tee 1
        local.get 0
        i32.const 72
        i32.add
        i32.const 24
        i32.add
        local.tee 2
        i64.load
        i64.store
        local.get 0
        i32.const 40
        i32.add
        i32.const 8
        i32.add
        local.tee 5
        local.get 0
        i32.const 72
        i32.add
        i32.const 16
        i32.add
        local.tee 6
        i64.load
        i64.store
        local.get 0
        local.get 0
        i32.const 72
        i32.add
        i32.const 8
        i32.add
        local.tee 7
        i64.load
        i64.store offset=40
        call $_ZN4spin4once13Once$LT$T$GT$9call_once17hd351eca639ee601cE
        local.set 8
        local.get 2
        local.get 4
        i64.load
        i64.store
        local.get 6
        local.get 1
        i64.load
        i64.store
        local.get 7
        local.get 5
        i64.load
        i64.store
        local.get 0
        local.get 0
        i64.load offset=40
        i64.store offset=72
        local.get 0
        i32.const 112
        i32.add
        i32.const 24
        i32.add
        i64.const 0
        i64.store
        local.get 0
        i32.const 112
        i32.add
        i32.const 16
        i32.add
        i64.const 0
        i64.store
        local.get 0
        i32.const 112
        i32.add
        i32.const 8
        i32.add
        i64.const 0
        i64.store
        local.get 0
        i64.const 0
        i64.store offset=112
        local.get 0
        i32.const 112
        i32.add
        local.set 4
        loop  ;; label = @3
          local.get 4
          local.get 0
          i32.const 72
          i32.add
          local.get 3
          i32.add
          i64.load
          local.tee 9
          i64.const 56
          i64.shl
          local.get 9
          i64.const 40
          i64.shl
          i64.const 71776119061217280
          i64.and
          i64.or
          local.get 9
          i64.const 24
          i64.shl
          i64.const 280375465082880
          i64.and
          local.get 9
          i64.const 8
          i64.shl
          i64.const 1095216660480
          i64.and
          i64.or
          i64.or
          local.get 9
          i64.const 8
          i64.shr_u
          i64.const 4278190080
          i64.and
          local.get 9
          i64.const 24
          i64.shr_u
          i64.const 16711680
          i64.and
          i64.or
          local.get 9
          i64.const 40
          i64.shr_u
          i64.const 65280
          i64.and
          local.get 9
          i64.const 56
          i64.shr_u
          i64.or
          i64.or
          i64.or
          i64.store align=1
          local.get 4
          i32.const 8
          i32.add
          local.set 4
          local.get 3
          i32.const -8
          i32.add
          local.tee 3
          i32.const -8
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 0
        i32.const 144
        i32.add
        i32.const 24
        i32.add
        local.get 0
        i32.const 112
        i32.add
        i32.const 24
        i32.add
        i64.load
        i64.store
        local.get 0
        i32.const 144
        i32.add
        i32.const 16
        i32.add
        local.get 0
        i32.const 112
        i32.add
        i32.const 16
        i32.add
        i64.load
        i64.store
        local.get 0
        i32.const 144
        i32.add
        i32.const 8
        i32.add
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
        i64.store offset=144
        local.get 8
        local.get 0
        i32.const 144
        i32.add
        call $storage_write
        block  ;; label = @3
          local.get 0
          i32.load offset=12
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=8
          local.get 3
          call $__rust_dealloc
        end
        local.get 0
        i32.const 176
        i32.add
        global.set 0
        return
      end
      i32.const 33980
      call $_ZN4core9panicking5panic17hb7cb5b256fd27bcfE
      unreachable
    end
    local.get 0
    i32.load8_u offset=73
    call $_ZN4core6result13unwrap_failed17hb454cd1bb2d0306eE
    unreachable)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17hf65b1e8caf0de8c8E (type 7) (param i32 i32 i32)
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
            call $__rust_alloc
            local.tee 2
            br_if 2 (;@2;)
          end
          local.get 1
          i32.const 1
          call $rust_oom
          unreachable
        end
        call $_ZN5alloc7raw_vec17capacity_overflow17hf2acb48acb5ae20aE
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
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h517fb65d85ba666eE (type 0) (param i32 i32 i32 i32)
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
      return
    end
    call $_ZN4core9panicking9panic_fmt17h8a97af3c4a58de81E
    unreachable)
  (func $__rust_realloc (type 8) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $__rg_realloc)
  (func $_ZN5alloc7raw_vec17capacity_overflow17hf2acb48acb5ae20aE (type 6)
    i32.const 33836
    call $_ZN4core9panicking5panic17hb7cb5b256fd27bcfE
    unreachable)
  (func $_ZN4core9panicking9panic_fmt17h8a97af3c4a58de81E (type 6)
    call $rust_begin_unwind
    unreachable)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h821b4ebcd561d883E.llvm.16801011177413829184 (type 6)
    call $_ZN5alloc7raw_vec17capacity_overflow17hf2acb48acb5ae20aE
    unreachable)
  (func $rust_begin_unwind (type 6)
    i32.const 0
    i32.const 0
    call $panic
    unreachable)
  (func $_ZN4core9panicking18panic_bounds_check17h8e3d7d625bb942bbE (type 3) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h8a97af3c4a58de81E
    unreachable)
  (func $__rg_alloc (type 2) (param i32) (result i32)
    local.get 0
    call $_ZN64_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..GlobalAlloc$GT$5alloc17h5f6727536d6bc77fE)
  (func $_ZN64_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..GlobalAlloc$GT$5alloc17h5f6727536d6bc77fE (type 2) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 3
          i32.add
          i32.const 2
          i32.shr_u
          local.tee 0
          i32.const -1
          i32.add
          local.tee 2
          i32.const 255
          i32.gt_u
          br_if 1 (;@2;)
          local.get 2
          i32.const 2
          i32.shl
          i32.const 32812
          i32.add
          local.tee 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          i32.const 32808
          i32.store offset=4
          local.get 1
          local.get 2
          i32.load
          i32.store offset=12
          local.get 0
          i32.const 1
          local.get 1
          i32.const 12
          i32.add
          local.get 1
          i32.const 4
          i32.add
          i32.const 33884
          call $_ZN9wee_alloc17alloc_with_refill17hf098685871d9df6eE
          local.set 0
          local.get 2
          local.get 1
          i32.load offset=12
          i32.store
          br 2 (;@1;)
        end
        i32.const 1
        local.set 0
        br 1 (;@1;)
      end
      local.get 1
      i32.const 0
      i32.load offset=32808
      i32.store offset=8
      local.get 0
      i32.const 1
      local.get 1
      i32.const 8
      i32.add
      i32.const 34356
      i32.const 33908
      call $_ZN9wee_alloc17alloc_with_refill17hf098685871d9df6eE
      local.set 0
      i32.const 0
      local.get 1
      i32.load offset=8
      i32.store offset=32808
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func $__rg_dealloc (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN64_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..GlobalAlloc$GT$7dealloc17h4a9e07f4c470c478E)
  (func $_ZN64_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..GlobalAlloc$GT$7dealloc17h4a9e07f4c470c478E (type 3) (param i32 i32)
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
        i32.const 32812
        i32.add
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 32808
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
        i32.const 33884
        call $_ZN9wee_alloc8WeeAlloc12dealloc_impl28_$u7b$$u7b$closure$u7d$$u7d$17h78220dde08d1f3d8E
        local.get 0
        local.get 2
        i32.load offset=12
        i32.store
        br 1 (;@1;)
      end
      local.get 2
      i32.const 0
      i32.load offset=32808
      i32.store offset=12
      local.get 2
      i32.const 4
      i32.add
      local.get 2
      i32.const 12
      i32.add
      i32.const 34356
      i32.const 33908
      call $_ZN9wee_alloc8WeeAlloc12dealloc_impl28_$u7b$$u7b$closure$u7d$$u7d$17h78220dde08d1f3d8E
      i32.const 0
      local.get 2
      i32.load offset=12
      i32.store offset=32808
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func $__rg_realloc (type 8) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      call $_ZN64_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..GlobalAlloc$GT$5alloc17h5f6727536d6bc77fE
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
      call $_ZN64_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..GlobalAlloc$GT$7dealloc17h4a9e07f4c470c478E
    end
    local.get 3)
  (func $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$22new_cell_for_free_list17h7f322e3989781476E (type 0) (param i32 i32 i32 i32)
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
    i32.const 34356
    i32.const 33860
    call $_ZN9wee_alloc17alloc_with_refill17hf098685871d9df6eE
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
  (func $_ZN9wee_alloc17alloc_with_refill17hf098685871d9df6eE (type 9) (param i32 i32 i32 i32 i32) (result i32)
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
      call $_ZN9wee_alloc15alloc_first_fit17heb08c623bbd02e66E.llvm.12662639729503498354
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
      call_indirect (type 0)
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
      call $_ZN9wee_alloc15alloc_first_fit17heb08c623bbd02e66E.llvm.12662639729503498354
      local.set 6
    end
    local.get 5
    i32.const 16
    i32.add
    global.set 0
    local.get 6)
  (func $_ZN4core3ptr18real_drop_in_place17hb362d9cbd0511fbaE (type 4) (param i32))
  (func $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$13min_cell_size17h449f13d5e04898a2E (type 1) (param i32 i32) (result i32)
    local.get 1)
  (func $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$32should_merge_adjacent_free_cells17h51f2062887788390E (type 2) (param i32) (result i32)
    i32.const 0)
  (func $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$22new_cell_for_free_list17he8633747b3e68f20E (type 0) (param i32 i32 i32 i32)
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
  (func $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$13min_cell_size17h36473a24a292ef1eE (type 1) (param i32 i32) (result i32)
    i32.const 512)
  (func $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$32should_merge_adjacent_free_cells17h9fb2f0c3765940e8E (type 2) (param i32) (result i32)
    i32.const 1)
  (func $_ZN9wee_alloc15alloc_first_fit17heb08c623bbd02e66E.llvm.12662639729503498354 (type 9) (param i32 i32 i32 i32 i32) (result i32)
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
  (func $_ZN4core3ptr18real_drop_in_place17hb362d9cbd0511fbaE.106 (type 4) (param i32))
  (func $_ZN4core3ptr18real_drop_in_place17h7f1c6dba4d8a1f3eE (type 4) (param i32))
  (func $_ZN9wee_alloc8WeeAlloc12dealloc_impl28_$u7b$$u7b$closure$u7d$$u7d$17h78220dde08d1f3d8E (type 0) (param i32 i32 i32 i32)
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
            call_indirect (type 2)
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
  (func $_ZN4core5slice20slice_index_len_fail17hb81ac75c4a989ce8E (type 3) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h8a97af3c4a58de81E
    unreachable)
  (func $_ZN4core5slice22slice_index_order_fail17h3d34e0ef769a011fE (type 3) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h8a97af3c4a58de81E
    unreachable)
  (func $memcpy (type 8) (param i32 i32 i32) (result i32)
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
  (func $memcmp (type 8) (param i32 i32 i32) (result i32)
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
  (table (;0;) 10 10 anyfunc)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 32768))
  (global (;1;) i32 (i32.const 34505))
  (global (;2;) i32 (i32.const 34505))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "call" (func $call))
  (export "deploy" (func $deploy))
  (elem (;0;) (i32.const 1) $_ZN4core3ptr18real_drop_in_place17hb362d9cbd0511fbaE $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$22new_cell_for_free_list17he8633747b3e68f20E $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$13min_cell_size17h36473a24a292ef1eE $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$32should_merge_adjacent_free_cells17h9fb2f0c3765940e8E $_ZN4core3ptr18real_drop_in_place17h7f1c6dba4d8a1f3eE $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$22new_cell_for_free_list17h7f322e3989781476E $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$13min_cell_size17h449f13d5e04898a2E $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$32should_merge_adjacent_free_cells17h51f2062887788390E $_ZN4core3ptr18real_drop_in_place17hb362d9cbd0511fbaE.106)
  (data (;0;) (i32.const 32768) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
  (data (;1;) (i32.const 33836) "\1c\85\00\00\11\00\00\00-\85\00\00\17\00\00\00\ea\02\00\00\05\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\04\00\00\00\04\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00D\85\00\00\1d\00\00\00a\85\00\00[\00\00\00)\00\00\00\02\00\00\00!\86\00\00\12\00\00\00\d4\85\00\00\17\00\00\00\19\00\00\00\01\00\00\00\eb\85\00\006\00\00\00\d4\85\00\00\17\00\00\00\19\00\00\00\01\00\00\00\bc\85\00\00\18\00\00\00\d4\85\00\00\17\00\00\00\19\00\00\00\01\00\00\00\a1\86\00\00(\00\00\00E\86\00\00\5c\00\00\00{\00\00\00\1f\00\00\004\86\00\00\11\00\00\00E\86\00\00\5c\00\00\00\80\00\00\00\1d\00\00\00")
  (data (;2;) (i32.const 34076) "capacity overflowsrc/liballoc/raw_vec.rsarithmetic operation overflow/Users/admin/.cargo/registry/src/mirrors.ustc.edu.cn-61ef6e0cd06fb9b8/uint-0.5.0/src/lib.rsInvalid method signatureexamples/bxa/src/lib.rsUnable to accept value in non-payable constructor callInvalid abi invoke\00Once has panicked/Users/admin/.cargo/registry/src/mirrors.ustc.edu.cn-61ef6e0cd06fb9b8/spin-0.5.0/src/once.rsinternal error: entered unreachable code"))
