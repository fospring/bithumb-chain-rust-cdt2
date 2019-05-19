(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32 i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;6;) (func (result i32)))
  (type (;7;) (func (param i32)))
  (type (;8;) (func))
  (type (;9;) (func (param i32 i32 i32)))
  (type (;10;) (func (param i64 i32)))
  (type (;11;) (func (param i32 i64)))
  (type (;12;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i32 i32 i32 i32 i32)))
  (type (;14;) (func (param i64 i32) (result i32)))
  (type (;15;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;16;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;17;) (func (param i32) (result i64)))
  (type (;18;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (import "env" "check_witness" (func $check_witness (type 3)))
  (import "env" "elog" (func $elog (type 4)))
  (import "env" "storage_write" (func $storage_write (type 2)))
  (import "env" "ret" (func $ret (type 4)))
  (import "env" "storage_read" (func $storage_read (type 5)))
  (import "env" "input_length" (func $input_length (type 6)))
  (import "env" "fetch_input" (func $fetch_input (type 7)))
  (func $call (type 8)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64)
    global.get 0
    i32.const 256
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 48
    i32.add
    call $bxa_api::ext::input::hdb9170cae4d18162
    local.get 0
    i32.load offset=48
    local.set 1
    local.get 0
    i32.load offset=56
    local.set 2
    local.get 0
    i32.const 0
    i32.store offset=72
    local.get 0
    local.get 2
    i32.store offset=68
    local.get 0
    local.get 1
    i32.store offset=64
    local.get 0
    i32.const 232
    i32.add
    local.get 0
    i32.const 64
    i32.add
    call $bxa_abi::bxa::stream::Stream::read_u64::h687536c50fb5ca36
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
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    local.get 0
                                                    i32.load8_u offset=232
                                                    i32.const 1
                                                    i32.eq
                                                    br_if 0 (;@24;)
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        local.get 0
                                                        i32.const 240
                                                        i32.add
                                                        i32.load
                                                        local.tee 2
                                                        i32.eqz
                                                        br_if 0 (;@26;)
                                                        local.get 2
                                                        i32.const 0
                                                        i32.lt_s
                                                        br_if 3 (;@23;)
                                                        local.get 0
                                                        i32.const 72
                                                        i32.add
                                                        i32.load
                                                        local.tee 3
                                                        local.get 2
                                                        i32.add
                                                        local.tee 4
                                                        local.get 3
                                                        i32.lt_u
                                                        br_if 4 (;@22;)
                                                        local.get 0
                                                        i32.load offset=68
                                                        local.tee 5
                                                        local.get 4
                                                        i32.lt_u
                                                        br_if 5 (;@21;)
                                                        local.get 0
                                                        i32.const 232
                                                        i32.add
                                                        local.get 0
                                                        i32.load offset=64
                                                        local.get 3
                                                        i32.add
                                                        local.get 2
                                                        call $core::str::from_utf8::h6f6766494001eb1b
                                                        local.get 0
                                                        i32.load offset=232
                                                        i32.const 1
                                                        i32.eq
                                                        br_if 6 (;@20;)
                                                        local.get 0
                                                        i32.const 152
                                                        i32.add
                                                        local.get 0
                                                        i32.load offset=236
                                                        local.get 0
                                                        i32.const 232
                                                        i32.add
                                                        i32.const 8
                                                        i32.add
                                                        i32.load
                                                        call $alloc::slice::<impl_alloc::borrow::ToOwned_for__T_>::to_owned::hc01e0ba13e54edc4
                                                        local.get 0
                                                        i32.const 64
                                                        i32.add
                                                        i32.const 8
                                                        i32.add
                                                        local.get 4
                                                        i32.store
                                                        local.get 0
                                                        i32.load offset=152
                                                        local.set 2
                                                        local.get 0
                                                        i32.load offset=156
                                                        local.set 3
                                                        local.get 0
                                                        i32.load offset=160
                                                        local.set 4
                                                        br 1 (;@25;)
                                                      end
                                                      local.get 0
                                                      i32.const 232
                                                      i32.add
                                                      i32.const 37700
                                                      i32.const 0
                                                      call $alloc::slice::<impl_alloc::borrow::ToOwned_for__T_>::to_owned::hc01e0ba13e54edc4
                                                      local.get 0
                                                      i32.load offset=240
                                                      local.set 4
                                                      local.get 0
                                                      i32.load offset=236
                                                      local.set 3
                                                      local.get 0
                                                      i32.load offset=232
                                                      local.set 2
                                                    end
                                                    block  ;; label = @25
                                                      local.get 4
                                                      i32.const -4
                                                      i32.add
                                                      i32.const 31
                                                      i32.rotl
                                                      local.tee 4
                                                      i32.const 6
                                                      i32.gt_u
                                                      br_if 0 (;@25;)
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            local.get 4
                                                                            br_table 0 (;@36;) 11 (;@25;) 2 (;@34;) 3 (;@33;) 11 (;@25;) 11 (;@25;) 1 (;@35;) 0 (;@36;)
                                                                          end
                                                                          block  ;; label = @36
                                                                            local.get 2
                                                                            i32.const 37702
                                                                            i32.eq
                                                                            br_if 0 (;@36;)
                                                                            local.get 2
                                                                            i32.load align=1
                                                                            i32.const 1953066601
                                                                            i32.ne
                                                                            br_if 11 (;@25;)
                                                                          end
                                                                          local.get 0
                                                                          i32.const 248
                                                                          i32.add
                                                                          local.tee 4
                                                                          i32.const 0
                                                                          i32.store
                                                                          local.get 0
                                                                          i32.const 232
                                                                          i32.add
                                                                          i32.const 8
                                                                          i32.add
                                                                          i64.const 0
                                                                          i64.store
                                                                          local.get 0
                                                                          i64.const 0
                                                                          i64.store offset=232
                                                                          local.get 0
                                                                          i32.const 64
                                                                          i32.add
                                                                          local.get 0
                                                                          i32.const 232
                                                                          i32.add
                                                                          i32.const 20
                                                                          call $bxa_abi::bxa::stream::Stream::read_into::h0f08eca62ece603a
                                                                          i32.const 255
                                                                          i32.and
                                                                          local.tee 5
                                                                          i32.const 7
                                                                          i32.ne
                                                                          br_if 17 (;@18;)
                                                                          local.get 0
                                                                          i32.const 152
                                                                          i32.add
                                                                          i32.const 8
                                                                          i32.add
                                                                          local.get 0
                                                                          i32.const 241
                                                                          i32.add
                                                                          i64.load align=1
                                                                          i64.store
                                                                          local.get 0
                                                                          i32.const 167
                                                                          i32.add
                                                                          local.get 4
                                                                          i32.load align=1
                                                                          i32.store align=1
                                                                          local.get 0
                                                                          local.get 0
                                                                          i64.load offset=233 align=1
                                                                          i64.store offset=152
                                                                          local.get 0
                                                                          i32.load8_u offset=232
                                                                          local.set 6
                                                                          local.get 0
                                                                          i32.const 104
                                                                          i32.add
                                                                          i32.const 32768
                                                                          i32.const 11
                                                                          i32.const 8
                                                                          call $bxa_api::storage::read::hb1daff8f6b0670b4
                                                                          local.get 0
                                                                          i32.load offset=104
                                                                          local.tee 4
                                                                          i32.eqz
                                                                          br_if 18 (;@17;)
                                                                          local.get 0
                                                                          i32.const 104
                                                                          i32.add
                                                                          i32.const 8
                                                                          i32.add
                                                                          i32.load
                                                                          local.set 7
                                                                          local.get 0
                                                                          i32.load offset=108
                                                                          local.set 5
                                                                          i32.const 0
                                                                          local.set 8
                                                                          local.get 0
                                                                          i32.const 0
                                                                          i32.store offset=136
                                                                          local.get 0
                                                                          local.get 7
                                                                          i32.store offset=132
                                                                          local.get 0
                                                                          local.get 4
                                                                          i32.store offset=128
                                                                          local.get 0
                                                                          i32.const 232
                                                                          i32.add
                                                                          local.get 0
                                                                          i32.const 128
                                                                          i32.add
                                                                          call $bxa_abi::bxa::stream::Stream::read_u64::h687536c50fb5ca36
                                                                          local.get 0
                                                                          i32.load8_u offset=232
                                                                          i32.const 1
                                                                          i32.eq
                                                                          br_if 19 (;@16;)
                                                                          local.get 0
                                                                          i32.const 232
                                                                          i32.add
                                                                          i32.const 8
                                                                          i32.add
                                                                          i64.load
                                                                          i32.wrap_i64
                                                                          i32.const 255
                                                                          i32.and
                                                                          local.tee 9
                                                                          i32.eqz
                                                                          br_if 3 (;@32;)
                                                                          i32.const 1
                                                                          local.set 7
                                                                          local.get 9
                                                                          i32.const 1
                                                                          i32.ne
                                                                          br_if 20 (;@15;)
                                                                          local.get 5
                                                                          i32.eqz
                                                                          br_if 30 (;@5;)
                                                                          br 29 (;@6;)
                                                                        end
                                                                        block  ;; label = @35
                                                                          local.get 2
                                                                          i32.const 37716
                                                                          i32.eq
                                                                          br_if 0 (;@35;)
                                                                          local.get 2
                                                                          i32.const 37716
                                                                          i32.const 16
                                                                          call $memcmp
                                                                          br_if 10 (;@25;)
                                                                        end
                                                                        i32.const 12
                                                                        i32.const 1
                                                                        call $__rust_alloc
                                                                        local.tee 4
                                                                        i32.eqz
                                                                        br_if 33 (;@1;)
                                                                        local.get 0
                                                                        i64.const 12
                                                                        i64.store offset=236 align=4
                                                                        local.get 0
                                                                        local.get 4
                                                                        i32.store offset=232
                                                                        local.get 0
                                                                        i32.const 232
                                                                        i32.add
                                                                        i32.const 6
                                                                        call $bxa_abi::bxa::sink::Sink::write_byte::h84ed2385190c841d
                                                                        i64.const 100000000000
                                                                        local.get 0
                                                                        i32.const 232
                                                                        i32.add
                                                                        call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_u64>::encode::h9ed47bc93714650d
                                                                        br 30 (;@4;)
                                                                      end
                                                                      block  ;; label = @34
                                                                        local.get 2
                                                                        i32.const 37732
                                                                        i32.eq
                                                                        br_if 0 (;@34;)
                                                                        local.get 2
                                                                        i64.load align=1
                                                                        i64.const 8243107338930713204
                                                                        i64.ne
                                                                        br_if 9 (;@25;)
                                                                      end
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      i32.const 16
                                                                      i32.add
                                                                      local.tee 5
                                                                      i32.const 0
                                                                      i32.store
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      i32.const 8
                                                                      i32.add
                                                                      local.tee 7
                                                                      i64.const 0
                                                                      i64.store
                                                                      local.get 0
                                                                      i64.const 0
                                                                      i64.store offset=232
                                                                      local.get 0
                                                                      i32.const 64
                                                                      i32.add
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      i32.const 20
                                                                      call $bxa_abi::bxa::stream::Stream::read_into::h0f08eca62ece603a
                                                                      i32.const 255
                                                                      i32.and
                                                                      local.tee 4
                                                                      i32.const 7
                                                                      i32.ne
                                                                      br_if 19 (;@14;)
                                                                      local.get 0
                                                                      i32.const 152
                                                                      i32.add
                                                                      i32.const 8
                                                                      i32.add
                                                                      local.tee 9
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      i32.const 9
                                                                      i32.add
                                                                      local.tee 6
                                                                      i64.load align=1
                                                                      i64.store
                                                                      local.get 0
                                                                      i32.const 167
                                                                      i32.add
                                                                      local.tee 4
                                                                      local.get 5
                                                                      i32.load align=1
                                                                      i32.store align=1
                                                                      local.get 0
                                                                      local.get 0
                                                                      i64.load offset=233 align=1
                                                                      i64.store offset=152
                                                                      local.get 0
                                                                      i32.load8_u offset=232
                                                                      local.set 8
                                                                      local.get 0
                                                                      i32.const 80
                                                                      i32.add
                                                                      i32.const 9
                                                                      i32.add
                                                                      local.get 9
                                                                      i64.load
                                                                      i64.store align=1
                                                                      local.get 0
                                                                      i32.const 80
                                                                      i32.add
                                                                      i32.const 16
                                                                      i32.add
                                                                      local.get 4
                                                                      i32.load align=1
                                                                      i32.store align=1
                                                                      local.get 0
                                                                      local.get 8
                                                                      i32.store8 offset=80
                                                                      local.get 0
                                                                      local.get 0
                                                                      i64.load offset=152
                                                                      i64.store offset=81 align=1
                                                                      local.get 5
                                                                      i32.const 0
                                                                      i32.store
                                                                      local.get 7
                                                                      i64.const 0
                                                                      i64.store
                                                                      local.get 0
                                                                      i64.const 0
                                                                      i64.store offset=232
                                                                      local.get 0
                                                                      i32.const 64
                                                                      i32.add
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      i32.const 20
                                                                      call $bxa_abi::bxa::stream::Stream::read_into::h0f08eca62ece603a
                                                                      i32.const 255
                                                                      i32.and
                                                                      local.tee 5
                                                                      i32.const 7
                                                                      i32.ne
                                                                      br_if 20 (;@13;)
                                                                      local.get 0
                                                                      i32.const 152
                                                                      i32.add
                                                                      i32.const 8
                                                                      i32.add
                                                                      local.tee 5
                                                                      local.get 6
                                                                      i64.load align=1
                                                                      i64.store
                                                                      local.get 4
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      i32.const 16
                                                                      i32.add
                                                                      i32.load align=1
                                                                      i32.store align=1
                                                                      local.get 0
                                                                      local.get 0
                                                                      i64.load offset=233 align=1
                                                                      i64.store offset=152
                                                                      local.get 0
                                                                      i32.load8_u offset=232
                                                                      local.set 7
                                                                      local.get 0
                                                                      i32.const 104
                                                                      i32.add
                                                                      i32.const 9
                                                                      i32.add
                                                                      local.get 5
                                                                      i64.load
                                                                      i64.store align=1
                                                                      local.get 0
                                                                      i32.const 104
                                                                      i32.add
                                                                      i32.const 16
                                                                      i32.add
                                                                      local.get 4
                                                                      i32.load align=1
                                                                      i32.store align=1
                                                                      local.get 0
                                                                      local.get 7
                                                                      i32.store8 offset=104
                                                                      local.get 0
                                                                      local.get 0
                                                                      i64.load offset=152
                                                                      i64.store offset=105 align=1
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      local.get 0
                                                                      i32.const 64
                                                                      i32.add
                                                                      call $bxa_abi::bxa::stream::Stream::read_u64::h687536c50fb5ca36
                                                                      local.get 0
                                                                      i32.load8_u offset=232
                                                                      i32.const 1
                                                                      i32.eq
                                                                      br_if 21 (;@12;)
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      i32.const 8
                                                                      i32.add
                                                                      i64.load
                                                                      local.set 10
                                                                      local.get 0
                                                                      i32.const 80
                                                                      i32.add
                                                                      call $check_witness
                                                                      i32.eqz
                                                                      br_if 22 (;@11;)
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      i32.const 16
                                                                      i32.add
                                                                      local.tee 4
                                                                      local.get 0
                                                                      i32.const 80
                                                                      i32.add
                                                                      i32.const 16
                                                                      i32.add
                                                                      i32.load
                                                                      i32.store
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      i32.const 8
                                                                      i32.add
                                                                      local.tee 5
                                                                      local.get 0
                                                                      i32.const 80
                                                                      i32.add
                                                                      i32.const 8
                                                                      i32.add
                                                                      i64.load
                                                                      i64.store
                                                                      local.get 0
                                                                      local.get 0
                                                                      i64.load offset=80
                                                                      i64.store offset=232
                                                                      local.get 0
                                                                      i32.const 32
                                                                      i32.add
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      call $bxa_api::db::get::hca787e7006cdfee0
                                                                      local.get 0
                                                                      i64.load offset=40
                                                                      local.set 11
                                                                      local.get 0
                                                                      i32.load offset=32
                                                                      local.set 7
                                                                      local.get 4
                                                                      local.get 0
                                                                      i32.const 104
                                                                      i32.add
                                                                      i32.const 16
                                                                      i32.add
                                                                      i32.load
                                                                      i32.store
                                                                      local.get 5
                                                                      local.get 0
                                                                      i32.const 104
                                                                      i32.add
                                                                      i32.const 8
                                                                      i32.add
                                                                      i64.load
                                                                      i64.store
                                                                      local.get 0
                                                                      local.get 0
                                                                      i64.load offset=104
                                                                      i64.store offset=232
                                                                      local.get 0
                                                                      i32.const 16
                                                                      i32.add
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      call $bxa_api::db::get::hca787e7006cdfee0
                                                                      i32.const 32974
                                                                      local.set 4
                                                                      local.get 10
                                                                      i64.const -1
                                                                      i64.add
                                                                      local.get 11
                                                                      i64.const 0
                                                                      local.get 7
                                                                      select
                                                                      local.tee 11
                                                                      i64.ge_u
                                                                      br_if 7 (;@26;)
                                                                      local.get 0
                                                                      i32.load offset=16
                                                                      local.set 5
                                                                      local.get 0
                                                                      i64.load offset=24
                                                                      local.set 12
                                                                      local.get 0
                                                                      i32.const 104
                                                                      i32.add
                                                                      local.get 0
                                                                      i32.const 80
                                                                      i32.add
                                                                      i32.const 20
                                                                      call $memcmp
                                                                      i32.eqz
                                                                      br_if 7 (;@26;)
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      i32.const 16
                                                                      i32.add
                                                                      local.tee 7
                                                                      local.get 0
                                                                      i32.const 80
                                                                      i32.add
                                                                      i32.const 16
                                                                      i32.add
                                                                      local.tee 9
                                                                      i32.load
                                                                      i32.store
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      i32.const 8
                                                                      i32.add
                                                                      local.tee 4
                                                                      local.get 0
                                                                      i32.const 80
                                                                      i32.add
                                                                      i32.const 8
                                                                      i32.add
                                                                      local.tee 6
                                                                      i64.load
                                                                      i64.store
                                                                      local.get 0
                                                                      local.get 0
                                                                      i64.load offset=80
                                                                      i64.store offset=232
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      local.get 11
                                                                      local.get 10
                                                                      i64.sub
                                                                      call $bxa_api::db::put::h3e45ad207496426c
                                                                      local.get 7
                                                                      local.get 0
                                                                      i32.const 104
                                                                      i32.add
                                                                      i32.const 16
                                                                      i32.add
                                                                      local.tee 8
                                                                      i32.load
                                                                      i32.store
                                                                      local.get 4
                                                                      local.get 0
                                                                      i32.const 104
                                                                      i32.add
                                                                      i32.const 8
                                                                      i32.add
                                                                      local.tee 7
                                                                      i64.load
                                                                      i64.store
                                                                      local.get 0
                                                                      local.get 0
                                                                      i64.load offset=104
                                                                      i64.store offset=232
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      local.get 12
                                                                      i64.const 0
                                                                      local.get 5
                                                                      select
                                                                      local.get 10
                                                                      i64.add
                                                                      call $bxa_api::db::put::h3e45ad207496426c
                                                                      local.get 0
                                                                      i32.const 128
                                                                      i32.add
                                                                      i32.const 16
                                                                      i32.add
                                                                      local.get 9
                                                                      i32.load
                                                                      i32.store
                                                                      local.get 0
                                                                      i32.const 128
                                                                      i32.add
                                                                      i32.const 8
                                                                      i32.add
                                                                      local.get 6
                                                                      i64.load
                                                                      i64.store
                                                                      local.get 0
                                                                      local.get 0
                                                                      i64.load offset=80
                                                                      i64.store offset=128
                                                                      local.get 0
                                                                      i32.const 152
                                                                      i32.add
                                                                      i32.const 16
                                                                      i32.add
                                                                      local.get 8
                                                                      i32.load
                                                                      i32.store
                                                                      local.get 0
                                                                      i32.const 152
                                                                      i32.add
                                                                      i32.const 8
                                                                      i32.add
                                                                      local.get 7
                                                                      i64.load
                                                                      i64.store
                                                                      local.get 0
                                                                      local.get 0
                                                                      i64.load offset=104
                                                                      i64.store offset=152
                                                                      local.get 0
                                                                      local.get 10
                                                                      i64.store offset=176
                                                                      i32.const 48
                                                                      i32.const 1
                                                                      call $__rust_alloc
                                                                      local.tee 5
                                                                      i32.eqz
                                                                      br_if 32 (;@1;)
                                                                      local.get 0
                                                                      i64.const 48
                                                                      i64.store offset=188 align=4
                                                                      local.get 0
                                                                      local.get 5
                                                                      i32.store offset=184
                                                                      local.get 0
                                                                      i32.const 216
                                                                      i32.add
                                                                      i32.const 32829
                                                                      i32.const 8
                                                                      call $alloc::slice::<impl_alloc::borrow::ToOwned_for__T_>::to_owned::hc01e0ba13e54edc4
                                                                      local.get 4
                                                                      local.get 0
                                                                      i32.const 216
                                                                      i32.add
                                                                      i32.const 8
                                                                      i32.add
                                                                      local.tee 5
                                                                      i32.load
                                                                      i32.store
                                                                      local.get 0
                                                                      local.get 0
                                                                      i64.load offset=216
                                                                      i64.store offset=232
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      local.get 0
                                                                      i32.const 184
                                                                      i32.add
                                                                      call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_alloc::string::String>::encode::h0a79c6dd83a4637e
                                                                      local.get 0
                                                                      i32.const 216
                                                                      i32.add
                                                                      local.get 0
                                                                      i32.const 128
                                                                      i32.add
                                                                      call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_bxa_std::types::H160>::to_bxa_string::h09fe821b5578a1a7
                                                                      local.get 4
                                                                      local.get 5
                                                                      i32.load
                                                                      i32.store
                                                                      local.get 0
                                                                      local.get 0
                                                                      i64.load offset=216
                                                                      i64.store offset=232
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      local.get 0
                                                                      i32.const 184
                                                                      i32.add
                                                                      call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_alloc::string::String>::encode::h0a79c6dd83a4637e
                                                                      local.get 0
                                                                      i32.const 216
                                                                      i32.add
                                                                      local.get 0
                                                                      i32.const 152
                                                                      i32.add
                                                                      call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_bxa_std::types::H160>::to_bxa_string::h09fe821b5578a1a7
                                                                      local.get 4
                                                                      local.get 5
                                                                      i32.load
                                                                      i32.store
                                                                      local.get 0
                                                                      local.get 0
                                                                      i64.load offset=216
                                                                      i64.store offset=232
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      local.get 0
                                                                      i32.const 184
                                                                      i32.add
                                                                      call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_alloc::string::String>::encode::h0a79c6dd83a4637e
                                                                      local.get 0
                                                                      local.get 0
                                                                      i32.const 176
                                                                      i32.add
                                                                      i32.store offset=212
                                                                      local.get 0
                                                                      i32.const 0
                                                                      i32.store offset=224
                                                                      local.get 0
                                                                      i64.const 1
                                                                      i64.store offset=216
                                                                      local.get 0
                                                                      i32.const 1
                                                                      i32.store offset=204
                                                                      local.get 0
                                                                      local.get 0
                                                                      i32.const 212
                                                                      i32.add
                                                                      i32.store offset=200
                                                                      local.get 0
                                                                      local.get 0
                                                                      i32.const 216
                                                                      i32.add
                                                                      i32.store offset=228
                                                                      local.get 0
                                                                      i32.const 252
                                                                      i32.add
                                                                      i32.const 1
                                                                      i32.store
                                                                      local.get 0
                                                                      i64.const 1
                                                                      i64.store offset=236 align=4
                                                                      local.get 0
                                                                      i32.const 40152
                                                                      i32.store offset=232
                                                                      local.get 0
                                                                      local.get 0
                                                                      i32.const 200
                                                                      i32.add
                                                                      i32.store offset=248
                                                                      local.get 0
                                                                      i32.const 228
                                                                      i32.add
                                                                      i32.const 37920
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      call $core::fmt::write::hf7a0d3bddcb07d0c
                                                                      br_if 25 (;@8;)
                                                                      local.get 0
                                                                      i32.load offset=220
                                                                      local.tee 5
                                                                      local.get 0
                                                                      i32.const 216
                                                                      i32.add
                                                                      i32.const 8
                                                                      i32.add
                                                                      local.tee 7
                                                                      i32.load
                                                                      local.tee 4
                                                                      i32.eq
                                                                      br_if 6 (;@27;)
                                                                      local.get 5
                                                                      local.get 4
                                                                      i32.lt_u
                                                                      br_if 26 (;@7;)
                                                                      local.get 4
                                                                      i32.eqz
                                                                      br_if 4 (;@29;)
                                                                      local.get 0
                                                                      i32.load offset=216
                                                                      local.get 5
                                                                      i32.const 1
                                                                      local.get 4
                                                                      call $__rust_realloc
                                                                      local.tee 9
                                                                      br_if 5 (;@28;)
                                                                      br 32 (;@1;)
                                                                    end
                                                                    block  ;; label = @33
                                                                      local.get 2
                                                                      i32.const 37706
                                                                      i32.eq
                                                                      br_if 0 (;@33;)
                                                                      local.get 2
                                                                      i32.const 37706
                                                                      i32.const 10
                                                                      call $memcmp
                                                                      i32.eqz
                                                                      br_if 0 (;@33;)
                                                                      block  ;; label = @34
                                                                        local.get 2
                                                                        i32.const 37740
                                                                        i32.eq
                                                                        br_if 0 (;@34;)
                                                                        local.get 2
                                                                        i32.const 37740
                                                                        i32.const 10
                                                                        call $memcmp
                                                                        br_if 9 (;@25;)
                                                                      end
                                                                      local.get 0
                                                                      i32.const 248
                                                                      i32.add
                                                                      local.tee 4
                                                                      i32.const 0
                                                                      i32.store
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      i32.const 8
                                                                      i32.add
                                                                      i64.const 0
                                                                      i64.store
                                                                      local.get 0
                                                                      i64.const 0
                                                                      i64.store offset=232
                                                                      local.get 0
                                                                      i32.const 64
                                                                      i32.add
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      i32.const 20
                                                                      call $bxa_abi::bxa::stream::Stream::read_into::h0f08eca62ece603a
                                                                      i32.const 255
                                                                      i32.and
                                                                      local.tee 5
                                                                      i32.const 7
                                                                      i32.ne
                                                                      br_if 24 (;@9;)
                                                                      local.get 0
                                                                      i32.const 152
                                                                      i32.add
                                                                      i32.const 8
                                                                      i32.add
                                                                      local.tee 5
                                                                      local.get 0
                                                                      i32.const 241
                                                                      i32.add
                                                                      local.tee 7
                                                                      i64.load align=1
                                                                      i64.store
                                                                      local.get 0
                                                                      i32.const 167
                                                                      i32.add
                                                                      local.tee 9
                                                                      local.get 4
                                                                      i32.load align=1
                                                                      i32.store align=1
                                                                      local.get 0
                                                                      local.get 0
                                                                      i64.load offset=233 align=1
                                                                      i64.store offset=152
                                                                      local.get 0
                                                                      i32.load8_u offset=232
                                                                      local.set 6
                                                                      local.get 7
                                                                      local.get 5
                                                                      i64.load
                                                                      i64.store align=1
                                                                      local.get 4
                                                                      local.get 9
                                                                      i32.load align=1
                                                                      i32.store align=1
                                                                      local.get 0
                                                                      local.get 6
                                                                      i32.store8 offset=232
                                                                      local.get 0
                                                                      local.get 0
                                                                      i64.load offset=152
                                                                      i64.store offset=233 align=1
                                                                      local.get 0
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      call $bxa_api::db::get::hca787e7006cdfee0
                                                                      local.get 0
                                                                      i64.load offset=8
                                                                      local.set 10
                                                                      local.get 0
                                                                      i64.load
                                                                      local.set 11
                                                                      i32.const 12
                                                                      i32.const 1
                                                                      call $__rust_alloc
                                                                      local.tee 4
                                                                      i32.eqz
                                                                      br_if 32 (;@1;)
                                                                      local.get 0
                                                                      i64.const 12
                                                                      i64.store offset=236 align=4
                                                                      local.get 0
                                                                      local.get 4
                                                                      i32.store offset=232
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      i32.const 6
                                                                      call $bxa_abi::bxa::sink::Sink::write_byte::h84ed2385190c841d
                                                                      local.get 10
                                                                      i64.const 0
                                                                      local.get 11
                                                                      i32.wrap_i64
                                                                      select
                                                                      local.get 0
                                                                      i32.const 232
                                                                      i32.add
                                                                      call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_u64>::encode::h9ed47bc93714650d
                                                                      br 29 (;@4;)
                                                                    end
                                                                    local.get 0
                                                                    i32.const 128
                                                                    i32.add
                                                                    i32.const 32779
                                                                    i32.const 3
                                                                    call $alloc::slice::<impl_alloc::borrow::ToOwned_for__T_>::to_owned::hc01e0ba13e54edc4
                                                                    i32.const 12
                                                                    i32.const 1
                                                                    call $__rust_alloc
                                                                    local.tee 4
                                                                    i32.eqz
                                                                    br_if 31 (;@1;)
                                                                    local.get 0
                                                                    i64.const 12
                                                                    i64.store offset=156 align=4
                                                                    local.get 0
                                                                    local.get 4
                                                                    i32.store offset=152
                                                                    local.get 0
                                                                    i32.load offset=136
                                                                    local.tee 4
                                                                    i32.const -1
                                                                    i32.le_s
                                                                    br_if 22 (;@10;)
                                                                    local.get 0
                                                                    i32.load offset=128
                                                                    local.set 5
                                                                    local.get 4
                                                                    i32.eqz
                                                                    br_if 1 (;@31;)
                                                                    local.get 4
                                                                    i32.const 1
                                                                    call $__rust_alloc
                                                                    local.tee 7
                                                                    br_if 2 (;@30;)
                                                                    br 31 (;@1;)
                                                                  end
                                                                  i32.const 0
                                                                  local.set 7
                                                                  local.get 5
                                                                  br_if 25 (;@6;)
                                                                  br 26 (;@5;)
                                                                end
                                                                i32.const 1
                                                                local.set 7
                                                              end
                                                              local.get 7
                                                              local.get 5
                                                              local.get 4
                                                              call $memcpy
                                                              local.set 5
                                                              local.get 0
                                                              local.get 4
                                                              i32.store offset=240
                                                              local.get 0
                                                              local.get 4
                                                              i32.store offset=236
                                                              local.get 0
                                                              local.get 5
                                                              i32.store offset=232
                                                              local.get 0
                                                              i32.const 232
                                                              i32.add
                                                              local.get 0
                                                              i32.const 152
                                                              i32.add
                                                              call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_alloc::string::String>::push_type::hd1382b699cac2770
                                                              local.get 0
                                                              i32.const 232
                                                              i32.add
                                                              i32.const 8
                                                              i32.add
                                                              local.get 0
                                                              i32.const 128
                                                              i32.add
                                                              i32.const 8
                                                              i32.add
                                                              i32.load
                                                              i32.store
                                                              local.get 0
                                                              local.get 0
                                                              i64.load offset=128
                                                              i64.store offset=232
                                                              local.get 0
                                                              i32.const 232
                                                              i32.add
                                                              local.get 0
                                                              i32.const 152
                                                              i32.add
                                                              call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_alloc::string::String>::encode::h0a79c6dd83a4637e
                                                              local.get 0
                                                              i32.const 152
                                                              i32.add
                                                              i32.const 8
                                                              i32.add
                                                              i32.load
                                                              local.set 7
                                                              local.get 0
                                                              i32.load offset=156
                                                              local.set 4
                                                              local.get 0
                                                              i32.load offset=152
                                                              local.set 5
                                                              local.get 3
                                                              br_if 26 (;@3;)
                                                              br 27 (;@2;)
                                                            end
                                                            i32.const 0
                                                            local.set 4
                                                            block  ;; label = @29
                                                              local.get 5
                                                              i32.eqz
                                                              br_if 0 (;@29;)
                                                              i32.const 1
                                                              local.set 9
                                                              local.get 0
                                                              i32.load offset=216
                                                              local.get 5
                                                              i32.const 1
                                                              call $__rust_dealloc
                                                              br 1 (;@28;)
                                                            end
                                                            i32.const 1
                                                            local.set 9
                                                          end
                                                          local.get 0
                                                          local.get 4
                                                          i32.store offset=220
                                                          local.get 0
                                                          local.get 9
                                                          i32.store offset=216
                                                        end
                                                        local.get 0
                                                        i32.const 200
                                                        i32.add
                                                        i32.const 8
                                                        i32.add
                                                        local.tee 4
                                                        local.get 7
                                                        i32.load
                                                        i32.store
                                                        local.get 0
                                                        local.get 0
                                                        i64.load offset=216
                                                        i64.store offset=200
                                                        local.get 0
                                                        i32.const 232
                                                        i32.add
                                                        i32.const 8
                                                        i32.add
                                                        local.get 4
                                                        i32.load
                                                        i32.store
                                                        local.get 0
                                                        local.get 0
                                                        i64.load offset=200
                                                        i64.store offset=232
                                                        local.get 0
                                                        i32.const 232
                                                        i32.add
                                                        local.get 0
                                                        i32.const 184
                                                        i32.add
                                                        call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_alloc::string::String>::encode::h0a79c6dd83a4637e
                                                        local.get 0
                                                        i32.load offset=184
                                                        local.tee 4
                                                        local.get 0
                                                        i32.const 184
                                                        i32.add
                                                        i32.const 8
                                                        i32.add
                                                        i32.load
                                                        call $elog
                                                        block  ;; label = @27
                                                          local.get 0
                                                          i32.load offset=188
                                                          local.tee 5
                                                          i32.eqz
                                                          br_if 0 (;@27;)
                                                          local.get 4
                                                          local.get 5
                                                          i32.const 1
                                                          call $__rust_dealloc
                                                        end
                                                        i32.const 32973
                                                        local.set 4
                                                      end
                                                      i32.const 12
                                                      i32.const 1
                                                      call $__rust_alloc
                                                      local.tee 5
                                                      i32.eqz
                                                      br_if 24 (;@1;)
                                                      local.get 0
                                                      i64.const 12
                                                      i64.store offset=236 align=4
                                                      local.get 0
                                                      local.get 5
                                                      i32.store offset=232
                                                      local.get 0
                                                      i32.const 232
                                                      i32.add
                                                      i32.const 8
                                                      call $bxa_abi::bxa::sink::Sink::write_byte::h84ed2385190c841d
                                                      local.get 0
                                                      i32.const 232
                                                      i32.add
                                                      local.get 4
                                                      i32.const 1
                                                      call $alloc::vec::Vec<T>::extend_from_slice::ha84126479fc872b4
                                                      br 21 (;@4;)
                                                    end
                                                    i32.const 40320
                                                    call $core::panicking::panic::hb7cb5b256fd27bcf
                                                    unreachable
                                                  end
                                                  local.get 0
                                                  i32.load8_u offset=233
                                                  local.set 0
                                                  br 4 (;@19;)
                                                end
                                                i32.const 3
                                                local.set 0
                                                br 3 (;@19;)
                                              end
                                              local.get 3
                                              local.get 4
                                              call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
                                              unreachable
                                            end
                                            local.get 4
                                            local.get 5
                                            call $core::slice::slice_index_len_fail::hb81ac75c4a989ce8
                                            unreachable
                                          end
                                          i32.const 6
                                          local.set 0
                                        end
                                        i32.const 37794
                                        local.get 0
                                        call $core::result::unwrap_failed::h8d800af8292dd987
                                        unreachable
                                      end
                                      i32.const 37794
                                      local.get 5
                                      call $core::result::unwrap_failed::h8d800af8292dd987
                                      unreachable
                                    end
                                    i32.const 38416
                                    call $core::panicking::panic::hb7cb5b256fd27bcf
                                    unreachable
                                  end
                                  local.get 0
                                  i32.load8_u offset=233
                                  local.set 8
                                end
                                i32.const 37794
                                local.get 8
                                call $core::result::unwrap_failed::h8d800af8292dd987
                                unreachable
                              end
                              i32.const 37794
                              local.get 4
                              call $core::result::unwrap_failed::h8d800af8292dd987
                              unreachable
                            end
                            i32.const 37794
                            local.get 5
                            call $core::result::unwrap_failed::h8d800af8292dd987
                            unreachable
                          end
                          i32.const 37794
                          local.get 0
                          i32.load8_u offset=233
                          call $core::result::unwrap_failed::h8d800af8292dd987
                          unreachable
                        end
                        i32.const 37840
                        call $core::panicking::panic::hb7cb5b256fd27bcf
                        unreachable
                      end
                      call $alloc::raw_vec::RawVec<T_A>::allocate_in::__closure__::h673561f8f2f177da
                      unreachable
                    end
                    i32.const 37794
                    local.get 5
                    call $core::result::unwrap_failed::h8d800af8292dd987
                    unreachable
                  end
                  call $core::result::unwrap_failed::h0194e43ee5024396
                  unreachable
                end
                i32.const 37896
                call $core::panicking::panic::hb7cb5b256fd27bcf
                unreachable
              end
              local.get 4
              local.get 5
              i32.const 1
              call $__rust_dealloc
            end
            i32.const 32974
            local.set 4
            block  ;; label = @5
              local.get 7
              br_if 0 (;@5;)
              i32.const 48
              i32.const 1
              call $__rust_alloc
              local.tee 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              i64.const 48
              i64.store offset=236 align=4
              local.get 0
              local.get 4
              i32.store offset=232
              local.get 0
              i32.const 232
              i32.add
              i32.const 8
              call $bxa_abi::bxa::sink::Sink::write_byte::h84ed2385190c841d
              i32.const 32973
              local.set 4
              local.get 0
              i32.const 232
              i32.add
              i32.const 32973
              i32.const 1
              call $alloc::vec::Vec<T>::extend_from_slice::ha84126479fc872b4
              i32.const 32768
              i32.const 11
              local.get 0
              i32.load offset=232
              local.tee 5
              local.get 0
              i32.load offset=240
              call $storage_write
              block  ;; label = @6
                local.get 0
                i32.load offset=236
                local.tee 7
                i32.eqz
                br_if 0 (;@6;)
                local.get 5
                local.get 7
                i32.const 1
                call $__rust_dealloc
              end
              local.get 0
              i32.const 241
              i32.add
              local.get 0
              i32.const 152
              i32.add
              i32.const 8
              i32.add
              i64.load
              i64.store align=1
              local.get 0
              i32.const 248
              i32.add
              local.get 0
              i32.const 167
              i32.add
              i32.load align=1
              i32.store align=1
              local.get 0
              local.get 6
              i32.store8 offset=232
              local.get 0
              local.get 0
              i64.load offset=152
              i64.store offset=233 align=1
              local.get 0
              i32.const 232
              i32.add
              i64.const 100000000000
              call $bxa_api::db::put::h3e45ad207496426c
            end
            i32.const 12
            i32.const 1
            call $__rust_alloc
            local.tee 5
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            i64.const 12
            i64.store offset=236 align=4
            local.get 0
            local.get 5
            i32.store offset=232
            local.get 0
            i32.const 232
            i32.add
            i32.const 8
            call $bxa_abi::bxa::sink::Sink::write_byte::h84ed2385190c841d
            local.get 0
            i32.const 232
            i32.add
            local.get 4
            i32.const 1
            call $alloc::vec::Vec<T>::extend_from_slice::ha84126479fc872b4
          end
          local.get 0
          i32.load offset=240
          local.set 7
          local.get 0
          i32.load offset=236
          local.set 4
          local.get 0
          i32.load offset=232
          local.set 5
          local.get 3
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 2
        local.get 3
        i32.const 1
        call $__rust_dealloc
      end
      local.get 5
      local.get 7
      call $ret
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        local.get 4
        i32.const 1
        call $__rust_dealloc
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=52
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 2
        i32.const 1
        call $__rust_dealloc
      end
      local.get 0
      i32.const 256
      i32.add
      global.set 0
      return
    end
    unreachable
    unreachable)
  (func $bxa_api::ext::input::hdb9170cae4d18162 (type 7) (param i32)
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
        call $alloc::raw_vec::RawVec<T_A>::allocate_in::h2bd99ea3ad7c2ffe
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
  (func $bxa_abi::bxa::stream::Stream::read_u64::h687536c50fb5ca36 (type 4) (param i32 i32)
    (local i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store8 offset=7
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 2
          i32.const 7
          i32.add
          i32.const 1
          call $bxa_abi::bxa::stream::Stream::read_into::h0f08eca62ece603a
          i32.const 255
          i32.and
          local.tee 3
          i32.const 7
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          i32.load8_u offset=7
          local.tee 3
          i32.const 128
          i32.gt_u
          br_if 1 (;@2;)
          local.get 0
          i32.const 0
          i32.store8
          local.get 0
          i32.const 8
          i32.add
          local.get 3
          i64.extend_i32_u
          i64.store
          br 2 (;@1;)
        end
        local.get 0
        i32.const 1
        i32.store8
        local.get 0
        local.get 3
        i32.store8 offset=1
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 3
                        i32.const -129
                        i32.add
                        local.tee 3
                        i32.const 7
                        i32.gt_u
                        br_if 0 (;@10;)
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
                                          br_table 0 (;@19;) 1 (;@18;) 2 (;@17;) 3 (;@16;) 4 (;@15;) 5 (;@14;) 6 (;@13;) 7 (;@12;) 0 (;@19;)
                                        end
                                        local.get 2
                                        i32.const 0
                                        i32.store8 offset=7
                                        local.get 1
                                        local.get 2
                                        i32.const 7
                                        i32.add
                                        i32.const 1
                                        call $bxa_abi::bxa::stream::Stream::read_into::h0f08eca62ece603a
                                        i32.const 255
                                        i32.and
                                        local.tee 1
                                        i32.const 7
                                        i32.ne
                                        br_if 9 (;@9;)
                                        local.get 2
                                        i64.load8_u offset=7
                                        local.set 4
                                        br 7 (;@11;)
                                      end
                                      local.get 2
                                      i32.const 0
                                      i32.store16 offset=8
                                      local.get 1
                                      local.get 2
                                      i32.const 8
                                      i32.add
                                      i32.const 2
                                      call $bxa_abi::bxa::stream::Stream::read_into::h0f08eca62ece603a
                                      i32.const 255
                                      i32.and
                                      local.tee 1
                                      i32.const 7
                                      i32.ne
                                      br_if 9 (;@8;)
                                      local.get 2
                                      i64.load8_u offset=8
                                      i64.const 8
                                      i64.shl
                                      local.get 2
                                      i64.load8_u offset=9
                                      i64.or
                                      local.set 4
                                      br 6 (;@11;)
                                    end
                                    local.get 2
                                    i32.const 10
                                    i32.add
                                    i32.const 0
                                    i32.store8
                                    local.get 2
                                    i32.const 0
                                    i32.store16 offset=8
                                    local.get 1
                                    local.get 2
                                    i32.const 8
                                    i32.add
                                    i32.const 3
                                    call $bxa_abi::bxa::stream::Stream::read_into::h0f08eca62ece603a
                                    i32.const 255
                                    i32.and
                                    local.tee 1
                                    i32.const 7
                                    i32.ne
                                    br_if 9 (;@7;)
                                    local.get 2
                                    i64.load8_u offset=9
                                    i64.const 8
                                    i64.shl
                                    local.get 2
                                    i64.load8_u offset=10
                                    i64.or
                                    local.get 2
                                    i64.load8_u offset=8
                                    i64.const 16
                                    i64.shl
                                    i64.or
                                    local.set 4
                                    br 5 (;@11;)
                                  end
                                  local.get 2
                                  i32.const 0
                                  i32.store offset=8
                                  local.get 1
                                  local.get 2
                                  i32.const 8
                                  i32.add
                                  i32.const 4
                                  call $bxa_abi::bxa::stream::Stream::read_into::h0f08eca62ece603a
                                  i32.const 255
                                  i32.and
                                  local.tee 1
                                  i32.const 7
                                  i32.ne
                                  br_if 9 (;@6;)
                                  local.get 2
                                  i64.load8_u offset=10
                                  i64.const 8
                                  i64.shl
                                  local.get 2
                                  i64.load8_u offset=11
                                  i64.or
                                  local.get 2
                                  i64.load8_u offset=9
                                  i64.const 16
                                  i64.shl
                                  i64.or
                                  local.get 2
                                  i64.load8_u offset=8
                                  i64.const 24
                                  i64.shl
                                  i64.or
                                  local.set 4
                                  br 4 (;@11;)
                                end
                                local.get 2
                                i32.const 12
                                i32.add
                                i32.const 0
                                i32.store8
                                local.get 2
                                i32.const 0
                                i32.store offset=8
                                local.get 1
                                local.get 2
                                i32.const 8
                                i32.add
                                i32.const 5
                                call $bxa_abi::bxa::stream::Stream::read_into::h0f08eca62ece603a
                                i32.const 255
                                i32.and
                                local.tee 1
                                i32.const 7
                                i32.ne
                                br_if 9 (;@5;)
                                local.get 2
                                i64.load8_u offset=11
                                i64.const 8
                                i64.shl
                                local.get 2
                                i64.load8_u offset=12
                                i64.or
                                local.get 2
                                i64.load8_u offset=10
                                i64.const 16
                                i64.shl
                                i64.or
                                local.get 2
                                i64.load8_u offset=9
                                i64.const 24
                                i64.shl
                                i64.or
                                local.get 2
                                i64.load8_u offset=8
                                i64.const 32
                                i64.shl
                                i64.or
                                local.set 4
                                br 3 (;@11;)
                              end
                              local.get 2
                              i32.const 12
                              i32.add
                              i32.const 0
                              i32.store16
                              local.get 2
                              i32.const 0
                              i32.store offset=8
                              local.get 1
                              local.get 2
                              i32.const 8
                              i32.add
                              i32.const 6
                              call $bxa_abi::bxa::stream::Stream::read_into::h0f08eca62ece603a
                              i32.const 255
                              i32.and
                              local.tee 1
                              i32.const 7
                              i32.ne
                              br_if 9 (;@4;)
                              local.get 2
                              i64.load8_u offset=12
                              i64.const 8
                              i64.shl
                              local.get 2
                              i64.load8_u offset=13
                              i64.or
                              local.get 2
                              i64.load8_u offset=11
                              i64.const 16
                              i64.shl
                              i64.or
                              local.get 2
                              i64.load8_u offset=10
                              i64.const 24
                              i64.shl
                              i64.or
                              local.get 2
                              i64.load8_u offset=9
                              i64.const 32
                              i64.shl
                              i64.or
                              local.get 2
                              i64.load8_u offset=8
                              i64.const 40
                              i64.shl
                              i64.or
                              local.set 4
                              br 2 (;@11;)
                            end
                            local.get 2
                            i32.const 0
                            i32.store offset=11 align=1
                            local.get 2
                            i32.const 0
                            i32.store offset=8
                            local.get 1
                            local.get 2
                            i32.const 8
                            i32.add
                            i32.const 7
                            call $bxa_abi::bxa::stream::Stream::read_into::h0f08eca62ece603a
                            i32.const 255
                            i32.and
                            local.tee 1
                            i32.const 7
                            i32.ne
                            br_if 9 (;@3;)
                            local.get 2
                            i64.load8_u offset=13
                            i64.const 8
                            i64.shl
                            local.get 2
                            i64.load8_u offset=14
                            i64.or
                            local.get 2
                            i64.load8_u offset=12
                            i64.const 16
                            i64.shl
                            i64.or
                            local.get 2
                            i64.load8_u offset=11
                            i64.const 24
                            i64.shl
                            i64.or
                            local.get 2
                            i64.load8_u offset=10
                            i64.const 32
                            i64.shl
                            i64.or
                            local.get 2
                            i64.load8_u offset=9
                            i64.const 40
                            i64.shl
                            i64.or
                            local.get 2
                            i64.load8_u offset=8
                            i64.const 48
                            i64.shl
                            i64.or
                            local.set 4
                            br 1 (;@11;)
                          end
                          local.get 2
                          i64.const 0
                          i64.store offset=8
                          local.get 1
                          local.get 2
                          i32.const 8
                          i32.add
                          i32.const 8
                          call $bxa_abi::bxa::stream::Stream::read_into::h0f08eca62ece603a
                          i32.const 255
                          i32.and
                          local.tee 1
                          i32.const 7
                          i32.ne
                          br_if 9 (;@2;)
                          local.get 2
                          i64.load offset=8
                          local.tee 4
                          i64.const 56
                          i64.shl
                          local.get 4
                          i64.const 40
                          i64.shl
                          i64.const 71776119061217280
                          i64.and
                          i64.or
                          local.get 4
                          i64.const 24
                          i64.shl
                          i64.const 280375465082880
                          i64.and
                          local.get 4
                          i64.const 8
                          i64.shl
                          i64.const 1095216660480
                          i64.and
                          i64.or
                          i64.or
                          local.get 4
                          i64.const 8
                          i64.shr_u
                          i64.const 4278190080
                          i64.and
                          local.get 4
                          i64.const 24
                          i64.shr_u
                          i64.const 16711680
                          i64.and
                          i64.or
                          local.get 4
                          i64.const 40
                          i64.shr_u
                          i64.const 65280
                          i64.and
                          local.get 4
                          i64.const 56
                          i64.shr_u
                          i64.or
                          i64.or
                          i64.or
                          local.set 4
                        end
                        local.get 0
                        i32.const 0
                        i32.store8
                        local.get 0
                        i32.const 8
                        i32.add
                        local.get 4
                        i64.store
                        br 9 (;@1;)
                      end
                      local.get 0
                      i32.const 513
                      i32.store16
                      br 8 (;@1;)
                    end
                    local.get 0
                    i32.const 1
                    i32.store8
                    local.get 0
                    local.get 1
                    i32.store8 offset=1
                    br 7 (;@1;)
                  end
                  local.get 0
                  i32.const 1
                  i32.store8
                  local.get 0
                  local.get 1
                  i32.store8 offset=1
                  br 6 (;@1;)
                end
                local.get 0
                i32.const 1
                i32.store8
                local.get 0
                local.get 1
                i32.store8 offset=1
                br 5 (;@1;)
              end
              local.get 0
              i32.const 1
              i32.store8
              local.get 0
              local.get 1
              i32.store8 offset=1
              br 4 (;@1;)
            end
            local.get 0
            i32.const 1
            i32.store8
            local.get 0
            local.get 1
            i32.store8 offset=1
            br 3 (;@1;)
          end
          local.get 0
          i32.const 1
          i32.store8
          local.get 0
          local.get 1
          i32.store8 offset=1
          br 2 (;@1;)
        end
        local.get 0
        i32.const 1
        i32.store8
        local.get 0
        local.get 1
        i32.store8 offset=1
        br 1 (;@1;)
      end
      local.get 0
      i32.const 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func $core::str::from_utf8::h6f6766494001eb1b (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i64 i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const -7
                  i32.add
                  i32.const 0
                  local.get 2
                  i32.const 7
                  i32.gt_u
                  select
                  local.set 3
                  i32.const 0
                  local.set 4
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
                                          local.get 1
                                          local.get 4
                                          i32.add
                                          local.tee 5
                                          i32.load8_u
                                          local.tee 6
                                          i32.const 24
                                          i32.shl
                                          i32.const 24
                                          i32.shr_s
                                          local.tee 7
                                          i32.const 0
                                          i32.lt_s
                                          br_if 0 (;@19;)
                                          local.get 5
                                          i32.const 3
                                          i32.and
                                          i32.eqz
                                          br_if 1 (;@18;)
                                          local.get 4
                                          i32.const 1
                                          i32.add
                                          local.tee 4
                                          local.get 2
                                          i32.lt_u
                                          br_if 11 (;@8;)
                                          br 12 (;@7;)
                                        end
                                        i64.const 4294967296
                                        local.set 8
                                        local.get 6
                                        i32.const 33879
                                        i32.add
                                        i32.load8_u
                                        local.tee 5
                                        i32.const 4
                                        i32.eq
                                        br_if 1 (;@17;)
                                        local.get 5
                                        i32.const 3
                                        i32.eq
                                        br_if 2 (;@16;)
                                        local.get 5
                                        i32.const 2
                                        i32.ne
                                        br_if 12 (;@6;)
                                        local.get 4
                                        i32.const 1
                                        i32.add
                                        local.tee 6
                                        local.get 2
                                        i32.ge_u
                                        br_if 14 (;@4;)
                                        i64.const 1099511627776
                                        local.set 9
                                        i64.const 4294967296
                                        local.set 8
                                        local.get 1
                                        local.get 6
                                        i32.add
                                        i32.load8_u
                                        i32.const 192
                                        i32.and
                                        i32.const 128
                                        i32.eq
                                        br_if 9 (;@9;)
                                        br 17 (;@1;)
                                      end
                                      block  ;; label = @18
                                        local.get 4
                                        local.get 3
                                        i32.ge_u
                                        br_if 0 (;@18;)
                                        loop  ;; label = @19
                                          local.get 1
                                          local.get 4
                                          i32.add
                                          local.tee 6
                                          i32.const 4
                                          i32.add
                                          i32.load
                                          local.get 6
                                          i32.load
                                          i32.or
                                          i32.const -2139062144
                                          i32.and
                                          br_if 1 (;@18;)
                                          local.get 4
                                          i32.const 8
                                          i32.add
                                          local.tee 4
                                          local.get 3
                                          i32.lt_u
                                          br_if 0 (;@19;)
                                        end
                                      end
                                      block  ;; label = @18
                                        local.get 4
                                        local.get 2
                                        i32.ge_u
                                        br_if 0 (;@18;)
                                        loop  ;; label = @19
                                          local.get 1
                                          local.get 4
                                          i32.add
                                          i32.load8_s
                                          i32.const 0
                                          i32.lt_s
                                          br_if 1 (;@18;)
                                          local.get 4
                                          i32.const 1
                                          i32.add
                                          local.tee 4
                                          local.get 2
                                          i32.lt_u
                                          br_if 0 (;@19;)
                                        end
                                      end
                                      local.get 4
                                      local.get 2
                                      i32.lt_u
                                      br_if 9 (;@8;)
                                      br 10 (;@7;)
                                    end
                                    i64.const 0
                                    local.set 9
                                    local.get 4
                                    i32.const 1
                                    i32.add
                                    local.tee 5
                                    local.get 2
                                    i32.ge_u
                                    br_if 13 (;@3;)
                                    local.get 1
                                    local.get 5
                                    i32.add
                                    i32.load8_u
                                    local.set 5
                                    local.get 6
                                    i32.const 240
                                    i32.eq
                                    br_if 1 (;@15;)
                                    local.get 6
                                    i32.const 244
                                    i32.ne
                                    br_if 2 (;@14;)
                                    local.get 5
                                    i32.const 24
                                    i32.shl
                                    i32.const 24
                                    i32.shr_s
                                    i32.const -1
                                    i32.gt_s
                                    br_if 10 (;@6;)
                                    local.get 5
                                    i32.const 255
                                    i32.and
                                    i32.const 143
                                    i32.le_u
                                    br_if 3 (;@13;)
                                    br 10 (;@6;)
                                  end
                                  i64.const 0
                                  local.set 9
                                  local.get 4
                                  i32.const 1
                                  i32.add
                                  local.tee 5
                                  local.get 2
                                  i32.ge_u
                                  br_if 12 (;@3;)
                                  local.get 1
                                  local.get 5
                                  i32.add
                                  i32.load8_u
                                  local.set 5
                                  local.get 6
                                  i32.const 224
                                  i32.eq
                                  br_if 3 (;@12;)
                                  local.get 6
                                  i32.const 237
                                  i32.ne
                                  br_if 4 (;@11;)
                                  local.get 5
                                  i32.const 24
                                  i32.shl
                                  i32.const 24
                                  i32.shr_s
                                  i32.const -1
                                  i32.gt_s
                                  br_if 9 (;@6;)
                                  local.get 5
                                  i32.const 255
                                  i32.and
                                  i32.const 160
                                  i32.lt_u
                                  br_if 5 (;@10;)
                                  br 9 (;@6;)
                                end
                                local.get 5
                                i32.const 112
                                i32.add
                                i32.const 255
                                i32.and
                                i32.const 48
                                i32.lt_u
                                br_if 1 (;@13;)
                                br 8 (;@6;)
                              end
                              local.get 5
                              i32.const 255
                              i32.and
                              i32.const 191
                              i32.gt_u
                              br_if 7 (;@6;)
                              local.get 7
                              i32.const 15
                              i32.add
                              i32.const 255
                              i32.and
                              i32.const 2
                              i32.gt_u
                              br_if 7 (;@6;)
                              local.get 5
                              i32.const 24
                              i32.shl
                              i32.const 24
                              i32.shr_s
                              i32.const 0
                              i32.ge_s
                              br_if 7 (;@6;)
                            end
                            local.get 4
                            i32.const 2
                            i32.add
                            local.tee 6
                            local.get 2
                            i32.ge_u
                            br_if 9 (;@3;)
                            local.get 1
                            local.get 6
                            i32.add
                            i32.load8_u
                            i32.const 192
                            i32.and
                            i32.const 128
                            i32.ne
                            br_if 7 (;@5;)
                            i64.const 0
                            local.set 8
                            local.get 4
                            i32.const 3
                            i32.add
                            local.tee 6
                            local.get 2
                            i32.ge_u
                            br_if 11 (;@1;)
                            local.get 1
                            local.get 6
                            i32.add
                            i32.load8_u
                            i32.const 192
                            i32.and
                            i32.const 128
                            i32.eq
                            br_if 3 (;@9;)
                            br 10 (;@2;)
                          end
                          local.get 5
                          i32.const 224
                          i32.and
                          i32.const 160
                          i32.eq
                          br_if 1 (;@10;)
                          br 5 (;@6;)
                        end
                        block  ;; label = @11
                          local.get 7
                          i32.const 31
                          i32.add
                          i32.const 255
                          i32.and
                          i32.const 12
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 5
                          i32.const 24
                          i32.shl
                          i32.const 24
                          i32.shr_s
                          i32.const -1
                          i32.gt_s
                          br_if 5 (;@6;)
                          local.get 5
                          i32.const 255
                          i32.and
                          i32.const 191
                          i32.le_u
                          br_if 1 (;@10;)
                          br 5 (;@6;)
                        end
                        local.get 5
                        i32.const 255
                        i32.and
                        i32.const 191
                        i32.gt_u
                        br_if 4 (;@6;)
                        local.get 7
                        i32.const 254
                        i32.and
                        i32.const 238
                        i32.ne
                        br_if 4 (;@6;)
                        local.get 5
                        i32.const 24
                        i32.shl
                        i32.const 24
                        i32.shr_s
                        i32.const 0
                        i32.ge_s
                        br_if 4 (;@6;)
                      end
                      i64.const 0
                      local.set 8
                      local.get 4
                      i32.const 2
                      i32.add
                      local.tee 6
                      local.get 2
                      i32.ge_u
                      br_if 8 (;@1;)
                      local.get 1
                      local.get 6
                      i32.add
                      i32.load8_u
                      i32.const 192
                      i32.and
                      i32.const 128
                      i32.ne
                      br_if 4 (;@5;)
                    end
                    local.get 6
                    i32.const 1
                    i32.add
                    local.tee 4
                    local.get 2
                    i32.lt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 0
                local.get 1
                i32.store offset=4
                local.get 0
                i32.const 8
                i32.add
                local.get 2
                i32.store
                local.get 0
                i32.const 0
                i32.store
                return
              end
              i64.const 1099511627776
              local.set 9
              br 4 (;@1;)
            end
            i64.const 2199023255552
            local.set 9
            i64.const 4294967296
            local.set 8
            br 3 (;@1;)
          end
          i64.const 0
          local.set 9
        end
        i64.const 0
        local.set 8
        br 1 (;@1;)
      end
      i64.const 3298534883328
      local.set 9
      i64.const 4294967296
      local.set 8
    end
    local.get 0
    local.get 9
    local.get 8
    i64.or
    local.get 4
    i64.extend_i32_u
    i64.or
    i64.store offset=4 align=4
    local.get 0
    i32.const 1
    i32.store)
  (func $alloc::slice::<impl_alloc::borrow::ToOwned_for__T_>::to_owned::hc01e0ba13e54edc4 (type 9) (param i32 i32 i32)
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
    call $alloc::raw_vec::RawVec<T_A>::allocate_in::h2bd99ea3ad7c2ffe
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
    local.get 2
    call $alloc::vec::Vec<T>::extend_from_slice::ha84126479fc872b4
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
  (func $bxa_abi::bxa::stream::Stream::read_into::h0f08eca62ece603a (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    i32.const 4
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 4
        local.get 2
        i32.add
        local.tee 5
        local.get 0
        i32.load offset=4
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        local.get 4
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        i32.const 8
        i32.add
        local.get 5
        i32.store
        local.get 1
        local.get 2
        local.get 0
        i32.load
        local.get 4
        i32.add
        local.get 2
        call $core::slice::<impl__T_>::copy_from_slice::h0f9c497fbb88f6ff
        i32.const 7
        local.set 3
      end
      local.get 3
      return
    end
    local.get 4
    local.get 5
    call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
    unreachable)
  (func $bxa_api::storage::read::hb1daff8f6b0670b4 (type 2) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        i32.const 32
        i32.const 1
        call $__rust_alloc_zeroed
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i64.const 137438953504
        i64.store offset=4 align=4
        local.get 4
        local.get 5
        i32.store
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        local.get 2
                        local.get 5
                        i32.const 32
                        i32.const 0
                        local.get 3
                        i32.const 255
                        i32.and
                        call $storage_read
                        local.tee 6
                        i32.const -1
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 6
                        i32.const 33
                        i32.lt_u
                        br_if 1 (;@9;)
                        local.get 4
                        i32.const 32
                        local.get 6
                        i32.const -32
                        i32.add
                        local.tee 7
                        call $alloc::raw_vec::RawVec<T_A>::reserve::hca23d3b627451640
                        local.get 4
                        i32.const 8
                        i32.add
                        i32.load
                        local.set 8
                        local.get 4
                        i32.load
                        local.set 5
                        local.get 7
                        i32.const 2
                        i32.lt_u
                        br_if 2 (;@8;)
                        local.get 5
                        local.get 8
                        i32.add
                        local.set 9
                        i32.const 0
                        local.set 5
                        loop  ;; label = @11
                          local.get 9
                          local.get 5
                          i32.add
                          i32.const 0
                          i32.store8
                          local.get 5
                          i32.const 2
                          i32.add
                          local.set 10
                          local.get 5
                          i32.const 1
                          i32.add
                          local.tee 11
                          local.set 5
                          local.get 10
                          local.get 7
                          i32.lt_u
                          br_if 0 (;@11;)
                        end
                        local.get 8
                        local.get 11
                        i32.add
                        local.set 8
                        local.get 9
                        local.get 11
                        i32.add
                        local.set 5
                        br 3 (;@7;)
                      end
                      local.get 0
                      i32.const 0
                      i32.store
                      local.get 5
                      i32.const 32
                      i32.const 1
                      call $__rust_dealloc
                      br 6 (;@3;)
                    end
                    local.get 6
                    i32.const 32
                    i32.ne
                    br_if 2 (;@6;)
                    local.get 4
                    i32.const 8
                    i32.add
                    i32.const 32
                    i32.store
                    br 4 (;@4;)
                  end
                  local.get 5
                  local.get 8
                  i32.add
                  local.set 5
                end
                local.get 5
                i32.const 0
                i32.store8
                local.get 8
                i32.const 1
                i32.add
                local.set 5
                br 1 (;@5;)
              end
              i32.const 0
              local.set 5
              loop  ;; label = @6
                local.get 6
                local.get 5
                i32.const 1
                i32.add
                local.tee 5
                i32.add
                i32.const 32
                i32.lt_u
                br_if 0 (;@6;)
              end
              i32.const 32
              local.get 5
              i32.sub
              local.set 5
            end
            local.get 4
            i32.const 8
            i32.add
            local.get 5
            i32.store
            local.get 6
            i32.const 32
            i32.le_u
            br_if 0 (;@4;)
            local.get 5
            i32.const 31
            i32.le_u
            br_if 3 (;@1;)
            local.get 1
            local.get 2
            local.get 4
            i32.load
            i32.const 32
            i32.add
            local.get 5
            i32.const -32
            i32.add
            i32.const 32
            local.get 3
            i32.const 255
            i32.and
            call $storage_read
            drop
          end
          local.get 0
          local.get 4
          i64.load
          i64.store align=4
          local.get 0
          i32.const 8
          i32.add
          local.get 4
          i32.const 8
          i32.add
          i32.load
          i32.store
        end
        local.get 4
        i32.const 16
        i32.add
        global.set 0
        return
      end
      unreachable
      unreachable
    end
    i32.const 32
    local.get 5
    call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
    unreachable)
  (func $__rust_alloc (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__rg_alloc)
  (func $bxa_abi::bxa::sink::Sink::write_byte::h84ed2385190c841d (type 4) (param i32 i32)
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
      call $alloc::raw_vec::RawVec<T_A>::reserve::hca23d3b627451640
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
  (func $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_u64>::encode::h9ed47bc93714650d (type 10) (param i64 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.const 128
        i64.ge_u
        br_if 0 (;@2;)
        local.get 0
        i32.wrap_i64
        local.set 3
        i32.const 0
        local.set 4
        i32.const 1
        local.set 5
        i32.const 0
        local.set 6
        i32.const 0
        local.set 7
        i32.const 0
        local.set 8
        i32.const 0
        local.set 9
        i32.const 0
        local.set 10
        i32.const 0
        local.set 11
        i32.const 0
        local.set 12
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i64.const 256
                    i64.ge_u
                    br_if 0 (;@8;)
                    local.get 0
                    i32.wrap_i64
                    local.set 12
                    i32.const 129
                    local.set 3
                    i32.const 0
                    local.set 4
                    i32.const 2
                    local.set 5
                    i32.const 0
                    local.set 6
                    br 1 (;@7;)
                  end
                  local.get 0
                  i64.const 65536
                  i64.ge_u
                  br_if 1 (;@6;)
                  local.get 0
                  i64.const 8
                  i64.shr_u
                  i32.wrap_i64
                  local.set 12
                  local.get 0
                  i32.wrap_i64
                  local.set 4
                  i32.const 130
                  local.set 3
                  i32.const 0
                  local.set 6
                  i32.const 3
                  local.set 5
                end
                i32.const 0
                local.set 7
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 0
                i64.const 16777216
                i64.ge_u
                br_if 0 (;@6;)
                local.get 0
                i64.const 8
                i64.shr_u
                i32.wrap_i64
                local.set 4
                local.get 0
                i64.const 16
                i64.shr_u
                i32.wrap_i64
                local.set 12
                local.get 0
                i32.wrap_i64
                local.set 6
                i32.const 131
                local.set 3
                i32.const 0
                local.set 7
                i32.const 4
                local.set 5
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 0
                i64.const 4294967296
                i64.ge_u
                br_if 0 (;@6;)
                local.get 0
                i64.const 8
                i64.shr_u
                i32.wrap_i64
                local.set 6
                local.get 0
                i64.const 16
                i64.shr_u
                i32.wrap_i64
                local.set 4
                local.get 0
                i64.const 24
                i64.shr_u
                i32.wrap_i64
                local.set 12
                local.get 0
                i32.wrap_i64
                local.set 7
                i32.const 132
                local.set 3
                i32.const 0
                local.set 8
                i32.const 5
                local.set 5
                br 2 (;@4;)
              end
              block  ;; label = @6
                local.get 0
                i64.const 1099511627776
                i64.ge_u
                br_if 0 (;@6;)
                local.get 0
                i64.const 8
                i64.shr_u
                i32.wrap_i64
                local.set 7
                local.get 0
                i64.const 16
                i64.shr_u
                i32.wrap_i64
                local.set 6
                local.get 0
                i64.const 24
                i64.shr_u
                i32.wrap_i64
                local.set 4
                local.get 0
                i64.const 32
                i64.shr_u
                i32.wrap_i64
                local.set 12
                local.get 0
                i32.wrap_i64
                local.set 8
                i32.const 133
                local.set 3
                i32.const 0
                local.set 9
                i32.const 6
                local.set 5
                br 3 (;@3;)
              end
              block  ;; label = @6
                local.get 0
                i64.const 281474976710656
                i64.ge_u
                br_if 0 (;@6;)
                local.get 0
                i64.const 8
                i64.shr_u
                i32.wrap_i64
                local.set 8
                local.get 0
                i64.const 16
                i64.shr_u
                i32.wrap_i64
                local.set 7
                local.get 0
                i64.const 24
                i64.shr_u
                i32.wrap_i64
                local.set 6
                local.get 0
                i64.const 32
                i64.shr_u
                i32.wrap_i64
                local.set 4
                local.get 0
                i64.const 40
                i64.shr_u
                i32.wrap_i64
                local.set 12
                local.get 0
                i32.wrap_i64
                local.set 9
                i32.const 134
                local.set 3
                i32.const 0
                local.set 10
                i32.const 7
                local.set 5
                br 4 (;@2;)
              end
              block  ;; label = @6
                local.get 0
                i64.const 72057594037927936
                i64.ge_u
                br_if 0 (;@6;)
                local.get 0
                i64.const 8
                i64.shr_u
                i32.wrap_i64
                local.set 9
                local.get 0
                i64.const 16
                i64.shr_u
                i32.wrap_i64
                local.set 8
                local.get 0
                i64.const 24
                i64.shr_u
                i32.wrap_i64
                local.set 7
                local.get 0
                i64.const 32
                i64.shr_u
                i32.wrap_i64
                local.set 6
                local.get 0
                i64.const 40
                i64.shr_u
                i32.wrap_i64
                local.set 4
                local.get 0
                i64.const 48
                i64.shr_u
                i32.wrap_i64
                local.set 12
                local.get 0
                i32.wrap_i64
                local.set 10
                i32.const 135
                local.set 3
                i32.const 0
                local.set 11
                i32.const 8
                local.set 5
                br 5 (;@1;)
              end
              local.get 0
              i64.const 8
              i64.shr_u
              i32.wrap_i64
              local.set 10
              local.get 0
              i64.const 16
              i64.shr_u
              i32.wrap_i64
              local.set 9
              local.get 0
              i64.const 24
              i64.shr_u
              i32.wrap_i64
              local.set 8
              local.get 0
              i64.const 32
              i64.shr_u
              i32.wrap_i64
              local.set 7
              local.get 0
              i64.const 40
              i64.shr_u
              i32.wrap_i64
              local.set 6
              local.get 0
              i64.const 48
              i64.shr_u
              i32.wrap_i64
              local.set 4
              local.get 0
              i64.const 56
              i64.shr_u
              i32.wrap_i64
              local.set 12
              local.get 0
              i32.wrap_i64
              local.set 11
              i32.const 136
              local.set 3
              i32.const 9
              local.set 5
              br 4 (;@1;)
            end
            i32.const 0
            local.set 8
          end
          i32.const 0
          local.set 9
        end
        i32.const 0
        local.set 10
      end
      i32.const 0
      local.set 11
    end
    local.get 2
    local.get 11
    i32.store8 offset=15
    local.get 2
    local.get 10
    i32.store8 offset=14
    local.get 2
    local.get 9
    i32.store8 offset=13
    local.get 2
    local.get 8
    i32.store8 offset=12
    local.get 2
    local.get 7
    i32.store8 offset=11
    local.get 2
    local.get 6
    i32.store8 offset=10
    local.get 2
    local.get 4
    i32.store8 offset=9
    local.get 2
    local.get 12
    i32.store8 offset=8
    local.get 2
    local.get 3
    i32.store8 offset=7
    local.get 1
    local.get 2
    i32.const 7
    i32.add
    local.get 5
    call $alloc::vec::Vec<T>::extend_from_slice::ha84126479fc872b4
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func $bxa_api::db::get::hca787e7006cdfee0 (type 4) (param i32 i32)
    (local i32 i32 i32 i64 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.const 20
    i32.const 6
    call $bxa_api::storage::read::hb1daff8f6b0670b4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.const 8
          i32.add
          i32.load
          local.set 3
          local.get 2
          i32.load offset=4
          local.set 4
          local.get 2
          i32.const 0
          i32.store offset=24
          local.get 2
          local.get 3
          i32.store offset=20
          local.get 2
          local.get 1
          i32.store offset=16
          local.get 2
          i32.const 32
          i32.add
          local.get 2
          i32.const 16
          i32.add
          call $bxa_abi::bxa::stream::Stream::read_u64::h687536c50fb5ca36
          local.get 2
          i32.load8_u offset=32
          i32.const 1
          i32.eq
          br_if 2 (;@1;)
          local.get 2
          i32.const 32
          i32.add
          i32.const 8
          i32.add
          i64.load
          local.set 5
          i64.const 1
          local.set 6
          local.get 4
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          local.get 4
          i32.const 1
          call $__rust_dealloc
          br 1 (;@2;)
        end
        i64.const 0
        local.set 6
      end
      local.get 0
      local.get 5
      i64.store offset=8
      local.get 0
      local.get 6
      i64.store
      local.get 2
      i32.const 48
      i32.add
      global.set 0
      return
    end
    i32.const 37794
    local.get 2
    i32.load8_u offset=33
    call $core::result::unwrap_failed::h8d800af8292dd987
    unreachable)
  (func $bxa_api::db::put::h3e45ad207496426c (type 11) (param i32 i64)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      i32.const 48
      i32.const 1
      call $__rust_alloc
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i64.const 48
      i64.store offset=4 align=4
      local.get 2
      local.get 3
      i32.store
      local.get 2
      i32.const 6
      call $bxa_abi::bxa::sink::Sink::write_byte::h84ed2385190c841d
      local.get 1
      local.get 2
      call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_u64>::encode::h9ed47bc93714650d
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
        i32.const 1
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
  (func $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_alloc::string::String>::encode::h0a79c6dd83a4637e (type 4) (param i32 i32)
    (local i32 i32)
    local.get 0
    i32.load offset=8
    local.tee 2
    i64.extend_i32_u
    local.get 1
    call $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_u64>::encode::h9ed47bc93714650d
    local.get 1
    local.get 0
    i32.load
    local.tee 3
    local.get 2
    call $alloc::vec::Vec<T>::extend_from_slice::ha84126479fc872b4
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      i32.const 1
      call $__rust_dealloc
    end)
  (func $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_bxa_std::types::H160>::to_bxa_string::h09fe821b5578a1a7 (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 224
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 32
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=1
    i64.store align=1
    local.get 2
    i32.const 40
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i32.load align=1
    i32.store align=1
    local.get 2
    i32.const 0
    i32.store offset=44 align=1
    local.get 2
    i32.const 23
    i32.store8 offset=23
    local.get 2
    local.get 1
    i64.load align=1
    i64.store offset=24 align=1
    local.get 2
    i32.const 128
    i32.add
    local.get 2
    i32.const 23
    i32.add
    i32.const 21
    call $<D_as_digest::digest::Digest>::digest::h9e2df41e7390b262
    local.get 2
    i32.const 96
    i32.add
    local.get 2
    i32.const 128
    i32.add
    i32.const 32
    call $<D_as_digest::digest::Digest>::digest::h9e2df41e7390b262
    local.get 2
    local.get 2
    i32.load offset=96
    i32.store offset=44 align=1
    local.get 2
    i32.const 0
    i32.store offset=136
    local.get 2
    i64.const 4
    i64.store offset=128
    local.get 2
    i32.const 128
    i32.add
    i32.const 0
    i32.const 1
    call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
    local.get 2
    i32.load offset=128
    local.tee 3
    local.get 2
    i32.load offset=136
    local.tee 1
    i32.const 2
    i32.shl
    i32.add
    i32.const 256
    i32.store
    local.get 1
    i32.const 1
    i32.add
    local.set 4
    local.get 2
    i32.load offset=132
    local.set 5
    local.get 2
    i32.const 48
    i32.add
    local.set 6
    local.get 2
    i32.const 23
    i32.add
    local.set 7
    i32.const 4
    local.set 8
    i32.const 0
    local.set 9
    i32.const 0
    local.set 10
    i32.const 0
    local.set 1
    loop  ;; label = @1
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
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 1
                                        br_table 0 (;@18;) 1 (;@17;) 1 (;@17;)
                                      end
                                      local.get 2
                                      i32.const 96
                                      i32.add
                                      local.get 8
                                      local.get 10
                                      local.get 3
                                      local.get 4
                                      call $num_bigint::biguint::algorithms::mul3::hf4ba5a376759f24b
                                      block  ;; label = @18
                                        local.get 9
                                        i32.eqz
                                        br_if 0 (;@18;)
                                        local.get 8
                                        local.get 9
                                        i32.const 2
                                        i32.shl
                                        i32.const 4
                                        call $__rust_dealloc
                                      end
                                      local.get 7
                                      i32.load8_u
                                      local.set 1
                                      local.get 2
                                      i32.const 128
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      local.tee 11
                                      local.get 2
                                      i32.const 96
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      i32.load
                                      i32.store
                                      local.get 2
                                      local.get 2
                                      i64.load offset=96
                                      i64.store offset=128
                                      block  ;; label = @18
                                        local.get 1
                                        i32.eqz
                                        br_if 0 (;@18;)
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            local.get 11
                                            i32.load
                                            local.tee 12
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            local.get 2
                                            i32.load offset=128
                                            local.set 13
                                            local.get 2
                                            local.get 1
                                            i32.store offset=208
                                            br 1 (;@19;)
                                          end
                                          i32.const 0
                                          local.set 14
                                          block  ;; label = @20
                                            local.get 2
                                            i32.load offset=132
                                            br_if 0 (;@20;)
                                            local.get 2
                                            i32.const 128
                                            i32.add
                                            i32.const 0
                                            i32.const 1
                                            call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
                                            local.get 11
                                            i32.load
                                            local.set 14
                                          end
                                          local.get 11
                                          local.get 14
                                          i32.const 1
                                          i32.add
                                          local.tee 12
                                          i32.store
                                          local.get 2
                                          i32.load offset=128
                                          local.tee 13
                                          local.get 14
                                          i32.const 2
                                          i32.shl
                                          i32.add
                                          i32.const 0
                                          i32.store
                                          local.get 2
                                          local.get 1
                                          i32.store offset=208
                                          local.get 12
                                          i32.eqz
                                          br_if 3 (;@16;)
                                        end
                                        local.get 13
                                        local.get 13
                                        i64.load32_u
                                        local.get 2
                                        i64.load32_u offset=208
                                        i64.add
                                        local.tee 15
                                        i64.store32
                                        local.get 15
                                        i64.const 32
                                        i64.shr_u
                                        local.tee 15
                                        i64.eqz
                                        br_if 0 (;@18;)
                                        local.get 13
                                        i32.const 4
                                        i32.add
                                        local.set 1
                                        local.get 12
                                        i32.const 2
                                        i32.shl
                                        i32.const -4
                                        i32.add
                                        local.set 13
                                        block  ;; label = @19
                                          loop  ;; label = @20
                                            local.get 13
                                            i32.eqz
                                            br_if 1 (;@19;)
                                            local.get 1
                                            local.get 15
                                            local.get 1
                                            i64.load32_u
                                            i64.add
                                            local.tee 15
                                            i64.store32
                                            local.get 13
                                            i32.const -4
                                            i32.add
                                            local.set 13
                                            local.get 1
                                            i32.const 4
                                            i32.add
                                            local.set 1
                                            local.get 15
                                            i64.const 32
                                            i64.shr_u
                                            local.tee 15
                                            i64.const 0
                                            i64.ne
                                            br_if 0 (;@20;)
                                            br 2 (;@18;)
                                          end
                                        end
                                        local.get 15
                                        i32.wrap_i64
                                        local.tee 13
                                        i32.eqz
                                        br_if 0 (;@18;)
                                        block  ;; label = @19
                                          local.get 11
                                          i32.load
                                          local.tee 1
                                          local.get 2
                                          i32.load offset=132
                                          i32.ne
                                          br_if 0 (;@19;)
                                          local.get 2
                                          i32.const 128
                                          i32.add
                                          local.get 1
                                          i32.const 1
                                          call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
                                          local.get 11
                                          i32.load
                                          local.set 1
                                        end
                                        local.get 11
                                        local.get 1
                                        i32.const 1
                                        i32.add
                                        i32.store
                                        local.get 2
                                        i32.load offset=128
                                        local.get 1
                                        i32.const 2
                                        i32.shl
                                        i32.add
                                        local.get 13
                                        i32.store
                                      end
                                      local.get 11
                                      i32.load
                                      local.set 10
                                      local.get 2
                                      i32.load offset=132
                                      local.set 9
                                      local.get 2
                                      i32.load offset=128
                                      local.set 8
                                      local.get 7
                                      i32.const 1
                                      i32.add
                                      local.tee 7
                                      local.get 6
                                      i32.ne
                                      br_if 3 (;@14;)
                                      local.get 2
                                      local.get 10
                                      i32.store offset=56
                                      local.get 2
                                      local.get 9
                                      i32.store offset=52
                                      local.get 2
                                      local.get 8
                                      i32.store offset=48
                                      i32.const 0
                                      local.set 16
                                      local.get 2
                                      i32.const 0
                                      i32.store offset=136
                                      i64.const 4
                                      local.set 17
                                      local.get 2
                                      i64.const 4
                                      i64.store offset=128
                                      i32.const 1
                                      local.set 18
                                      local.get 2
                                      i32.const 128
                                      i32.add
                                      i32.const 0
                                      i32.const 1
                                      call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
                                      i32.const 2
                                      local.set 19
                                      local.get 2
                                      i32.load offset=128
                                      local.get 2
                                      i32.load offset=136
                                      local.tee 1
                                      i32.const 2
                                      i32.shl
                                      i32.add
                                      i32.const 58
                                      i32.store
                                      i32.const 8
                                      local.set 20
                                      local.get 2
                                      i32.const 64
                                      i32.add
                                      i32.const 8
                                      i32.add
                                      local.tee 21
                                      local.get 1
                                      i32.const 1
                                      i32.add
                                      local.tee 1
                                      i32.store
                                      local.get 2
                                      local.get 1
                                      i32.store offset=136
                                      local.get 2
                                      local.get 2
                                      i64.load offset=128
                                      i64.store offset=64
                                      i32.const 20
                                      i32.const 1
                                      call $__rust_alloc
                                      local.tee 1
                                      i32.eqz
                                      br_if 5 (;@12;)
                                      local.get 2
                                      i64.const 20
                                      i64.store offset=84 align=4
                                      local.get 2
                                      local.get 1
                                      i32.store offset=80
                                      i32.const 32975
                                      local.set 22
                                      i32.const 4
                                      local.set 23
                                      i32.const 63
                                      local.set 24
                                      i32.const -4
                                      local.set 25
                                      i32.const 32
                                      local.set 26
                                      i32.const 57
                                      local.set 27
                                      i32.const 33624
                                      local.set 28
                                      local.get 2
                                      i32.const 140
                                      i32.add
                                      local.set 29
                                      i32.const -1
                                      local.set 30
                                      i32.const 31
                                      local.set 31
                                      i32.const -2
                                      local.set 32
                                      i32.const 1
                                      local.set 1
                                      br 16 (;@1;)
                                    end
                                    block  ;; label = @17
                                      local.get 21
                                      i32.load
                                      local.tee 12
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      i32.const 4
                                      local.set 33
                                      i32.const 0
                                      local.set 1
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  local.get 2
                                                  i32.const 48
                                                  i32.add
                                                  local.get 20
                                                  i32.add
                                                  local.tee 34
                                                  i32.load
                                                  local.tee 13
                                                  i32.eqz
                                                  br_if 0 (;@23;)
                                                  local.get 2
                                                  i32.load offset=64
                                                  local.set 14
                                                  local.get 12
                                                  local.get 18
                                                  i32.ne
                                                  br_if 1 (;@22;)
                                                  local.get 14
                                                  local.get 28
                                                  i32.eq
                                                  br_if 2 (;@21;)
                                                  local.get 14
                                                  i32.load align=1
                                                  local.get 18
                                                  i32.eq
                                                  br_if 2 (;@21;)
                                                  local.get 2
                                                  i32.const 96
                                                  i32.add
                                                  local.get 2
                                                  i32.const 48
                                                  i32.add
                                                  call $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9
                                                  local.get 21
                                                  i32.load
                                                  i32.eqz
                                                  br_if 8 (;@15;)
                                                  local.get 2
                                                  i32.const 128
                                                  i32.add
                                                  local.get 2
                                                  i32.const 96
                                                  i32.add
                                                  local.get 2
                                                  i32.load offset=64
                                                  i32.load
                                                  call $num_bigint::biguint::algorithms::div_rem_digit::h744a33ccfc0e683c
                                                  local.get 29
                                                  i32.load
                                                  local.set 12
                                                  local.get 2
                                                  i32.const 128
                                                  i32.add
                                                  local.get 20
                                                  i32.add
                                                  local.tee 11
                                                  i32.load
                                                  local.set 1
                                                  local.get 2
                                                  i32.load offset=132
                                                  local.set 35
                                                  local.get 2
                                                  i32.load offset=128
                                                  local.set 33
                                                  i32.const 0
                                                  local.set 13
                                                  local.get 11
                                                  i32.const 0
                                                  i32.store
                                                  local.get 2
                                                  local.get 17
                                                  i64.store offset=128
                                                  local.get 12
                                                  i32.eqz
                                                  br_if 4 (;@19;)
                                                  local.get 2
                                                  i32.const 128
                                                  i32.add
                                                  local.get 16
                                                  local.get 18
                                                  call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
                                                  local.get 11
                                                  local.get 11
                                                  i32.load
                                                  local.tee 36
                                                  local.get 18
                                                  i32.add
                                                  local.tee 13
                                                  i32.store
                                                  local.get 2
                                                  i32.load offset=128
                                                  local.tee 14
                                                  local.get 36
                                                  local.get 19
                                                  i32.shl
                                                  i32.add
                                                  local.get 12
                                                  i32.store
                                                  local.get 2
                                                  i32.load offset=132
                                                  local.set 12
                                                  br 21 (;@2;)
                                                end
                                                i32.const 0
                                                local.set 13
                                                i32.const 0
                                                local.set 12
                                                i32.const 4
                                                local.set 14
                                                br 19 (;@3;)
                                              end
                                              local.get 13
                                              local.get 12
                                              i32.ge_u
                                              br_if 1 (;@20;)
                                              br 17 (;@4;)
                                            end
                                            local.get 2
                                            i32.const 128
                                            i32.add
                                            local.get 2
                                            i32.const 48
                                            i32.add
                                            call $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9
                                            local.get 2
                                            i32.const 128
                                            i32.add
                                            local.get 20
                                            i32.add
                                            i32.load
                                            local.set 1
                                            local.get 2
                                            i32.load offset=132
                                            local.set 35
                                            local.get 2
                                            i32.load offset=128
                                            local.set 33
                                            i32.const 0
                                            local.set 13
                                            br 15 (;@5;)
                                          end
                                          local.get 13
                                          local.get 12
                                          i32.gt_u
                                          br_if 6 (;@13;)
                                          local.get 12
                                          local.get 19
                                          i32.shl
                                          local.set 11
                                          local.get 14
                                          local.get 25
                                          i32.add
                                          local.set 48
                                          local.get 13
                                          local.get 19
                                          i32.shl
                                          local.set 13
                                          local.get 2
                                          i32.load offset=48
                                          local.get 25
                                          i32.add
                                          local.set 49
                                          loop  ;; label = @20
                                            local.get 13
                                            i32.eqz
                                            br_if 2 (;@18;)
                                            local.get 11
                                            i32.eqz
                                            br_if 2 (;@18;)
                                            local.get 49
                                            local.get 13
                                            i32.add
                                            i32.load
                                            local.tee 36
                                            local.get 48
                                            local.get 11
                                            i32.add
                                            i32.load
                                            local.tee 60
                                            i32.lt_u
                                            br_if 16 (;@4;)
                                            local.get 11
                                            local.get 25
                                            i32.add
                                            local.set 11
                                            local.get 13
                                            local.get 25
                                            i32.add
                                            local.set 13
                                            local.get 36
                                            local.get 60
                                            i32.le_u
                                            br_if 0 (;@20;)
                                            br 7 (;@13;)
                                          end
                                        end
                                        i32.const 4
                                        local.set 14
                                        i32.const 0
                                        local.set 12
                                        br 16 (;@2;)
                                      end
                                      local.get 23
                                      local.get 23
                                      call $__rust_alloc
                                      local.tee 33
                                      i32.eqz
                                      br_if 5 (;@12;)
                                      i32.const 1
                                      local.set 35
                                      local.get 33
                                      i32.const 1
                                      i32.store
                                      i32.const 0
                                      local.set 13
                                      i32.const 0
                                      local.set 11
                                      i32.const 1
                                      local.set 1
                                      loop  ;; label = @18
                                        local.get 1
                                        local.get 30
                                        i32.add
                                        local.tee 36
                                        local.get 1
                                        i32.ge_u
                                        br_if 13 (;@5;)
                                        local.get 33
                                        local.get 11
                                        i32.add
                                        local.tee 12
                                        i32.eqz
                                        br_if 13 (;@5;)
                                        local.get 12
                                        i32.load
                                        br_if 13 (;@5;)
                                        local.get 1
                                        local.get 32
                                        i32.add
                                        local.set 12
                                        local.get 11
                                        local.get 25
                                        i32.add
                                        local.set 11
                                        local.get 36
                                        local.set 1
                                        local.get 12
                                        local.get 36
                                        i32.le_u
                                        br_if 0 (;@18;)
                                      end
                                      i32.const 0
                                      local.set 12
                                      i32.const 4
                                      local.set 14
                                      local.get 36
                                      local.set 1
                                      br 15 (;@2;)
                                    end
                                    i32.const 33609
                                    i32.const 14
                                    i32.const 38024
                                    call $std::panicking::begin_panic::h9d1f0cd51c92c0f4
                                    unreachable
                                  end
                                  i32.const 37944
                                  call $core::panicking::panic::hb7cb5b256fd27bcf
                                  unreachable
                                end
                                i32.const 38040
                                i32.const 0
                                i32.const 0
                                call $core::panicking::panic_bounds_check::h8e3d7d625bb942bb
                                unreachable
                              end
                              i32.const 0
                              local.set 1
                              br 12 (;@1;)
                            end
                            local.get 12
                            local.get 30
                            i32.add
                            local.tee 1
                            local.get 12
                            i32.ge_u
                            br_if 2 (;@10;)
                            local.get 1
                            local.get 12
                            i32.gt_u
                            br_if 2 (;@10;)
                            local.get 14
                            local.get 1
                            local.get 19
                            i32.shl
                            i32.add
                            i32.load
                            local.set 37
                            local.get 2
                            local.get 16
                            i32.store offset=128
                            local.get 2
                            local.get 2
                            i32.const 48
                            i32.add
                            i32.store offset=132
                            local.get 2
                            i32.const 160
                            i32.add
                            local.get 2
                            i32.const 128
                            i32.add
                            local.get 37
                            i32.clz
                            local.tee 38
                            call $num_bigint::biguint::algorithms::biguint_shl::h0d97096934b982fe.157
                            local.get 2
                            local.get 16
                            i32.store offset=128
                            local.get 2
                            local.get 2
                            i32.const 64
                            i32.add
                            i32.store offset=132
                            local.get 2
                            i32.const 176
                            i32.add
                            local.get 2
                            i32.const 128
                            i32.add
                            local.get 38
                            call $num_bigint::biguint::algorithms::biguint_shl::h0d97096934b982fe.157
                            local.get 2
                            i32.const 176
                            i32.add
                            local.get 20
                            i32.add
                            i32.load
                            local.tee 39
                            local.get 30
                            i32.add
                            local.tee 1
                            local.get 39
                            i32.ge_u
                            br_if 1 (;@11;)
                            local.get 1
                            local.get 39
                            i32.gt_u
                            br_if 1 (;@11;)
                            local.get 2
                            i32.load offset=176
                            local.tee 40
                            local.get 1
                            local.get 19
                            i32.shl
                            i32.add
                            i32.load
                            local.set 41
                            local.get 2
                            i32.const 8
                            i32.add
                            local.get 2
                            i32.const 160
                            i32.add
                            local.get 20
                            i32.add
                            local.tee 42
                            i32.load
                            local.tee 43
                            local.get 39
                            i32.sub
                            local.get 18
                            i32.add
                            local.tee 44
                            local.get 18
                            call $alloc::raw_vec::RawVec<T_A>::allocate_in::h55f622eb10260618
                            local.get 2
                            i32.load offset=12
                            local.set 35
                            local.get 2
                            i32.load offset=8
                            local.set 33
                            local.get 20
                            local.get 23
                            call $__rust_alloc
                            local.tee 45
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 2
                            local.set 46
                            local.get 44
                            i32.eqz
                            br_if 5 (;@7;)
                            local.get 43
                            i32.const 2
                            i32.shl
                            local.get 39
                            i32.const 2
                            i32.shl
                            i32.sub
                            local.set 47
                            local.get 43
                            local.set 11
                            local.get 43
                            local.set 13
                            local.get 44
                            local.set 1
                            block  ;; label = @13
                              loop  ;; label = @14
                                local.get 1
                                local.get 30
                                i32.add
                                local.set 48
                                block  ;; label = @15
                                  local.get 1
                                  local.get 39
                                  i32.add
                                  local.get 32
                                  i32.add
                                  local.tee 1
                                  local.get 13
                                  i32.ge_u
                                  br_if 0 (;@15;)
                                  local.get 2
                                  i32.const 192
                                  i32.add
                                  local.get 20
                                  i32.add
                                  local.tee 12
                                  local.get 16
                                  i32.store
                                  local.get 2
                                  local.get 46
                                  i32.store offset=196
                                  local.get 2
                                  local.get 45
                                  i32.store offset=192
                                  local.get 13
                                  local.get 1
                                  i32.lt_u
                                  br_if 7 (;@8;)
                                  local.get 2
                                  i32.const 192
                                  i32.add
                                  local.get 2
                                  i32.load offset=160
                                  local.tee 49
                                  local.get 1
                                  local.get 19
                                  i32.shl
                                  i32.add
                                  local.get 49
                                  local.get 13
                                  local.get 19
                                  i32.shl
                                  local.tee 50
                                  i32.add
                                  local.tee 1
                                  call $<alloc::vec::Vec<T>_as_alloc::vec::SpecExtend<T_I>>::spec_extend::ha06313532da497f8
                                  local.get 2
                                  i32.const 96
                                  i32.add
                                  local.get 20
                                  i32.add
                                  local.tee 51
                                  local.get 12
                                  i32.load
                                  i32.store
                                  local.get 2
                                  local.get 2
                                  i64.load offset=192
                                  i64.store offset=96
                                  local.get 2
                                  i32.const 128
                                  i32.add
                                  local.get 2
                                  i32.const 96
                                  i32.add
                                  local.get 41
                                  call $num_bigint::biguint::algorithms::div_rem_digit::h744a33ccfc0e683c
                                  local.get 2
                                  i32.load offset=132
                                  local.set 46
                                  local.get 2
                                  i32.const 208
                                  i32.add
                                  local.get 40
                                  local.get 39
                                  local.get 2
                                  i32.load offset=128
                                  local.tee 45
                                  local.get 2
                                  i32.const 128
                                  i32.add
                                  local.get 20
                                  i32.add
                                  local.tee 52
                                  i32.load
                                  local.tee 53
                                  call $num_bigint::biguint::algorithms::mul3::hf4ba5a376759f24b
                                  local.get 13
                                  local.get 48
                                  i32.lt_u
                                  br_if 6 (;@9;)
                                  local.get 2
                                  i32.load offset=208
                                  local.set 54
                                  block  ;; label = @16
                                    local.get 2
                                    i32.const 208
                                    i32.add
                                    local.get 20
                                    i32.add
                                    local.tee 55
                                    i32.load
                                    local.tee 56
                                    local.get 13
                                    local.get 48
                                    i32.sub
                                    local.tee 57
                                    i32.lt_u
                                    br_if 0 (;@16;)
                                    local.get 47
                                    local.get 50
                                    i32.sub
                                    local.set 58
                                    local.get 1
                                    local.get 25
                                    i32.add
                                    local.set 59
                                    loop  ;; label = @17
                                      block  ;; label = @18
                                        local.get 56
                                        local.get 57
                                        i32.gt_u
                                        br_if 0 (;@18;)
                                        local.get 56
                                        local.get 19
                                        i32.shl
                                        local.set 1
                                        local.get 58
                                        local.set 12
                                        local.get 59
                                        local.set 14
                                        loop  ;; label = @19
                                          local.get 1
                                          i32.eqz
                                          br_if 3 (;@16;)
                                          local.get 12
                                          i32.eqz
                                          br_if 3 (;@16;)
                                          local.get 54
                                          local.get 1
                                          i32.add
                                          local.get 25
                                          i32.add
                                          i32.load
                                          local.tee 36
                                          local.get 14
                                          i32.load
                                          local.tee 60
                                          i32.lt_u
                                          br_if 3 (;@16;)
                                          local.get 12
                                          local.get 23
                                          i32.add
                                          local.set 12
                                          local.get 14
                                          local.get 25
                                          i32.add
                                          local.set 14
                                          local.get 1
                                          local.get 25
                                          i32.add
                                          local.set 1
                                          local.get 36
                                          local.get 60
                                          i32.le_u
                                          br_if 0 (;@19;)
                                        end
                                      end
                                      local.get 23
                                      local.get 23
                                      call $__rust_alloc
                                      local.tee 60
                                      i32.eqz
                                      br_if 5 (;@12;)
                                      i32.const 1
                                      local.set 1
                                      local.get 60
                                      i32.const 1
                                      i32.store
                                      i32.const 0
                                      local.set 14
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          loop  ;; label = @20
                                            local.get 1
                                            local.get 30
                                            i32.add
                                            local.tee 12
                                            local.get 1
                                            i32.ge_u
                                            br_if 1 (;@19;)
                                            local.get 60
                                            local.get 14
                                            i32.add
                                            local.tee 36
                                            i32.eqz
                                            br_if 1 (;@19;)
                                            local.get 36
                                            i32.load
                                            br_if 1 (;@19;)
                                            local.get 1
                                            local.get 32
                                            i32.add
                                            local.set 36
                                            local.get 14
                                            local.get 25
                                            i32.add
                                            local.set 14
                                            local.get 12
                                            local.set 1
                                            local.get 36
                                            local.get 12
                                            i32.le_u
                                            br_if 0 (;@20;)
                                            br 2 (;@18;)
                                          end
                                        end
                                        local.get 1
                                        local.set 12
                                      end
                                      local.get 51
                                      local.get 12
                                      i32.store
                                      local.get 2
                                      local.get 18
                                      i32.store offset=100
                                      local.get 2
                                      local.get 60
                                      i32.store offset=96
                                      local.get 52
                                      local.get 53
                                      i32.store
                                      local.get 2
                                      local.get 46
                                      i32.store offset=132
                                      local.get 2
                                      local.get 45
                                      i32.store offset=128
                                      local.get 2
                                      i32.const 128
                                      i32.add
                                      local.get 2
                                      i32.const 96
                                      i32.add
                                      call $<num_bigint::biguint::BigUint_as_core::ops::arith::SubAssign<&num_bigint::biguint::BigUint>>::sub_assign::h2c33f9a06754f570
                                      local.get 52
                                      i32.load
                                      local.set 53
                                      local.get 2
                                      i32.load offset=132
                                      local.set 46
                                      local.get 2
                                      i32.load offset=128
                                      local.set 45
                                      local.get 60
                                      local.get 23
                                      local.get 23
                                      call $__rust_dealloc
                                      local.get 52
                                      local.get 55
                                      i32.load
                                      i32.store
                                      local.get 2
                                      local.get 2
                                      i64.load offset=208
                                      i64.store offset=128
                                      local.get 2
                                      i32.const 128
                                      i32.add
                                      local.get 2
                                      i32.const 176
                                      i32.add
                                      call $<num_bigint::biguint::BigUint_as_core::ops::arith::SubAssign<&num_bigint::biguint::BigUint>>::sub_assign::h2c33f9a06754f570
                                      local.get 55
                                      local.get 52
                                      i32.load
                                      i32.store
                                      local.get 2
                                      local.get 2
                                      i64.load offset=128
                                      i64.store offset=208
                                      local.get 2
                                      i32.load offset=208
                                      local.set 54
                                      local.get 55
                                      i32.load
                                      local.tee 56
                                      local.get 57
                                      i32.ge_u
                                      br_if 0 (;@17;)
                                    end
                                  end
                                  local.get 44
                                  local.get 48
                                  i32.lt_u
                                  br_if 2 (;@13;)
                                  local.get 33
                                  local.get 48
                                  local.get 19
                                  i32.shl
                                  local.tee 1
                                  i32.add
                                  local.get 44
                                  local.get 48
                                  i32.sub
                                  local.get 45
                                  local.get 53
                                  call $num_bigint::biguint::algorithms::add2::hb263877f5534fec5
                                  local.get 49
                                  local.get 1
                                  i32.add
                                  local.get 57
                                  local.get 54
                                  local.get 56
                                  call $num_bigint::biguint::algorithms::sub2::h4e4539b30a6aca64
                                  block  ;; label = @16
                                    local.get 13
                                    local.get 30
                                    i32.add
                                    local.get 13
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                    local.get 50
                                    local.get 25
                                    i32.add
                                    local.set 1
                                    local.get 11
                                    local.set 14
                                    block  ;; label = @17
                                      loop  ;; label = @18
                                        local.get 13
                                        local.get 30
                                        i32.add
                                        local.tee 11
                                        local.get 13
                                        i32.ge_u
                                        br_if 1 (;@17;)
                                        local.get 49
                                        local.get 1
                                        i32.add
                                        local.tee 12
                                        i32.eqz
                                        br_if 1 (;@17;)
                                        local.get 12
                                        i32.load
                                        br_if 1 (;@17;)
                                        local.get 42
                                        local.get 11
                                        i32.store
                                        local.get 13
                                        local.get 32
                                        i32.add
                                        local.set 12
                                        local.get 1
                                        local.get 25
                                        i32.add
                                        local.set 1
                                        local.get 11
                                        local.set 14
                                        local.get 11
                                        local.set 13
                                        local.get 12
                                        local.get 11
                                        i32.le_u
                                        br_if 0 (;@18;)
                                        br 2 (;@16;)
                                      end
                                    end
                                    local.get 14
                                    local.set 11
                                  end
                                  local.get 2
                                  i32.load offset=212
                                  local.tee 1
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 54
                                  local.get 1
                                  local.get 19
                                  i32.shl
                                  local.get 23
                                  call $__rust_dealloc
                                end
                                local.get 47
                                local.get 25
                                i32.add
                                local.set 47
                                local.get 48
                                local.set 1
                                local.get 48
                                br_if 0 (;@14;)
                                br 8 (;@6;)
                              end
                            end
                            local.get 48
                            local.get 44
                            call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
                            unreachable
                          end
                          unreachable
                          unreachable
                        end
                        i32.const 38416
                        call $core::panicking::panic::hb7cb5b256fd27bcf
                        unreachable
                      end
                      i32.const 38416
                      call $core::panicking::panic::hb7cb5b256fd27bcf
                      unreachable
                    end
                    local.get 48
                    local.get 13
                    call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
                    unreachable
                  end
                  local.get 1
                  local.get 13
                  call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
                  unreachable
                end
                local.get 43
                local.set 11
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 44
                  local.get 30
                  i32.add
                  local.get 44
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 43
                  local.get 19
                  i32.shl
                  local.get 39
                  local.get 19
                  i32.shl
                  i32.sub
                  local.set 13
                  loop  ;; label = @8
                    local.get 44
                    local.get 30
                    i32.add
                    local.tee 1
                    local.get 44
                    i32.ge_u
                    br_if 1 (;@7;)
                    local.get 33
                    local.get 13
                    i32.add
                    local.tee 12
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 12
                    i32.load
                    br_if 1 (;@7;)
                    local.get 44
                    local.get 32
                    i32.add
                    local.set 12
                    local.get 13
                    local.get 25
                    i32.add
                    local.set 13
                    local.get 1
                    local.set 44
                    local.get 12
                    local.get 1
                    i32.le_u
                    br_if 0 (;@8;)
                    br 2 (;@6;)
                  end
                end
                local.get 44
                local.set 1
              end
              local.get 2
              i32.load offset=164
              local.set 54
              local.get 2
              i32.load offset=160
              local.set 49
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 11
                          local.get 37
                          i32.eqz
                          local.tee 13
                          i32.le_u
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 11
                            local.get 13
                            i32.sub
                            local.tee 36
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 37
                            br_if 0 (;@12;)
                            local.get 49
                            local.get 49
                            local.get 13
                            local.get 19
                            i32.shl
                            i32.add
                            local.get 36
                            local.get 19
                            i32.shl
                            call $memmove
                            drop
                          end
                          block  ;; label = @12
                            local.get 38
                            local.get 31
                            i32.and
                            local.tee 14
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 36
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 11
                            local.get 19
                            i32.shl
                            local.get 13
                            local.get 19
                            i32.shl
                            i32.sub
                            local.set 13
                            local.get 49
                            local.get 25
                            i32.add
                            local.set 60
                            i32.const 0
                            local.set 11
                            i32.const 0
                            local.get 38
                            i32.sub
                            local.get 31
                            i32.and
                            local.set 48
                            loop  ;; label = @13
                              local.get 60
                              local.get 13
                              i32.add
                              local.tee 12
                              local.get 12
                              i32.load
                              local.tee 12
                              local.get 14
                              i32.shr_u
                              local.get 11
                              i32.or
                              i32.store
                              local.get 12
                              local.get 48
                              i32.shl
                              local.set 11
                              local.get 13
                              local.get 25
                              i32.add
                              local.tee 13
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 36
                          local.get 30
                          i32.add
                          local.tee 13
                          local.get 36
                          i32.gt_u
                          br_if 1 (;@10;)
                          local.get 13
                          local.get 19
                          i32.shl
                          local.set 11
                          loop  ;; label = @12
                            local.get 36
                            local.get 30
                            i32.add
                            local.tee 13
                            local.get 36
                            i32.ge_u
                            br_if 2 (;@10;)
                            local.get 49
                            local.get 11
                            i32.add
                            local.tee 12
                            i32.eqz
                            br_if 2 (;@10;)
                            local.get 12
                            i32.load
                            br_if 2 (;@10;)
                            local.get 36
                            local.get 32
                            i32.add
                            local.set 12
                            local.get 11
                            local.get 25
                            i32.add
                            local.set 11
                            local.get 13
                            local.set 36
                            local.get 12
                            local.get 13
                            i32.le_u
                            br_if 0 (;@12;)
                          end
                          local.get 49
                          local.set 14
                          local.get 54
                          local.set 12
                          local.get 46
                          br_if 4 (;@7;)
                          br 5 (;@6;)
                        end
                        i32.const 0
                        local.set 12
                        local.get 54
                        i32.eqz
                        br_if 1 (;@9;)
                        i32.const 4
                        local.set 14
                        local.get 49
                        local.get 54
                        local.get 19
                        i32.shl
                        i32.const 4
                        call $__rust_dealloc
                        br 2 (;@8;)
                      end
                      local.get 49
                      local.set 14
                      local.get 54
                      local.set 12
                      local.get 36
                      local.set 13
                      local.get 46
                      br_if 2 (;@7;)
                      br 3 (;@6;)
                    end
                    i32.const 4
                    local.set 14
                  end
                  i32.const 0
                  local.set 13
                  local.get 46
                  i32.eqz
                  br_if 1 (;@6;)
                end
                local.get 45
                local.get 46
                local.get 19
                i32.shl
                local.get 23
                call $__rust_dealloc
              end
              local.get 2
              i32.load offset=180
              local.tee 11
              i32.eqz
              br_if 3 (;@2;)
              local.get 2
              i32.load offset=176
              local.get 11
              local.get 19
              i32.shl
              local.get 23
              call $__rust_dealloc
              br 3 (;@2;)
            end
            i32.const 0
            local.set 12
            i32.const 4
            local.set 14
            br 2 (;@2;)
          end
          local.get 2
          i32.const 128
          i32.add
          local.get 2
          i32.const 48
          i32.add
          call $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9
          local.get 2
          i32.const 128
          i32.add
          local.get 20
          i32.add
          i32.load
          local.set 13
          local.get 2
          i32.load offset=132
          local.set 12
          local.get 2
          i32.load offset=128
          local.set 14
        end
        i32.const 0
        local.set 35
      end
      block  ;; label = @2
        local.get 2
        i32.load offset=52
        local.tee 11
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=48
        local.get 11
        local.get 19
        i32.shl
        local.get 23
        call $__rust_dealloc
      end
      local.get 34
      local.get 1
      i32.store
      local.get 2
      local.get 35
      i32.store offset=52
      local.get 2
      local.get 33
      i32.store offset=48
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 13
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 13
                  local.get 19
                  i32.shl
                  local.set 11
                  i64.const 0
                  local.set 15
                  i32.const 0
                  local.set 1
                  local.get 14
                  local.set 13
                  loop  ;; label = @8
                    local.get 1
                    local.get 24
                    i32.gt_u
                    br_if 3 (;@5;)
                    local.get 13
                    i64.load32_u
                    local.get 1
                    local.get 26
                    i32.and
                    i64.extend_i32_u
                    i64.shl
                    local.get 15
                    i64.add
                    local.set 15
                    local.get 1
                    local.get 26
                    i32.add
                    local.set 1
                    local.get 13
                    local.get 23
                    i32.add
                    local.set 13
                    local.get 11
                    local.get 25
                    i32.add
                    local.tee 11
                    br_if 0 (;@8;)
                  end
                  local.get 15
                  i32.wrap_i64
                  local.tee 1
                  local.get 27
                  i32.le_u
                  br_if 1 (;@6;)
                  br 3 (;@4;)
                end
                i32.const 0
                local.set 1
              end
              local.get 1
              local.get 22
              i32.add
              i32.load8_u
              local.set 36
              block  ;; label = @6
                local.get 2
                i32.const 80
                i32.add
                local.get 20
                i32.add
                local.tee 11
                i32.load
                local.tee 1
                local.get 2
                i32.load offset=84
                i32.ne
                br_if 0 (;@6;)
                local.get 2
                i32.const 80
                i32.add
                local.get 1
                local.get 18
                call $alloc::raw_vec::RawVec<T_A>::reserve::hca23d3b627451640
                local.get 11
                i32.load
                local.set 1
              end
              local.get 2
              i32.load offset=80
              local.tee 60
              local.get 1
              i32.add
              local.tee 13
              local.get 36
              i32.store8
              local.get 11
              local.get 1
              local.get 18
              i32.add
              local.tee 36
              i32.store
              local.get 34
              i32.load
              local.set 1
              block  ;; label = @6
                local.get 12
                i32.eqz
                br_if 0 (;@6;)
                local.get 14
                local.get 12
                local.get 19
                i32.shl
                local.get 23
                call $__rust_dealloc
              end
              local.get 1
              br_if 3 (;@2;)
              block  ;; label = @6
                local.get 36
                i32.const 1
                i32.shr_u
                local.tee 25
                i32.eqz
                br_if 0 (;@6;)
                local.get 60
                local.set 1
                loop  ;; label = @7
                  local.get 1
                  i32.load8_u
                  local.set 11
                  local.get 1
                  local.get 13
                  i32.load8_u
                  i32.store8
                  local.get 13
                  local.get 11
                  i32.store8
                  local.get 1
                  i32.const 1
                  i32.add
                  local.set 1
                  local.get 13
                  i32.const -1
                  i32.add
                  local.set 13
                  local.get 25
                  i32.const -1
                  i32.add
                  local.tee 25
                  br_if 0 (;@7;)
                end
              end
              local.get 2
              i32.load offset=84
              local.set 1
              local.get 2
              i32.const 128
              i32.add
              local.get 60
              local.get 36
              call $core::str::from_utf8::h6f6766494001eb1b
              local.get 2
              i32.load offset=128
              i32.const 1
              i32.eq
              br_if 2 (;@3;)
              local.get 0
              local.get 36
              i32.store offset=8
              local.get 0
              local.get 1
              i32.store offset=4
              local.get 0
              local.get 60
              i32.store
              block  ;; label = @6
                local.get 2
                i32.load offset=68
                local.tee 1
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                i32.load offset=64
                local.get 1
                i32.const 2
                i32.shl
                i32.const 4
                call $__rust_dealloc
              end
              block  ;; label = @6
                local.get 2
                i32.load offset=52
                local.tee 1
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                i32.load offset=48
                local.get 1
                i32.const 2
                i32.shl
                i32.const 4
                call $__rust_dealloc
              end
              block  ;; label = @6
                local.get 5
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                local.get 5
                i32.const 2
                i32.shl
                i32.const 4
                call $__rust_dealloc
              end
              local.get 2
              i32.const 224
              i32.add
              global.set 0
              return
            end
            i32.const 38416
            call $core::panicking::panic::hb7cb5b256fd27bcf
            unreachable
          end
          i32.const 37864
          local.get 1
          i32.const 58
          call $core::panicking::panic_bounds_check::h8e3d7d625bb942bb
          unreachable
        end
        local.get 2
        local.get 2
        i64.load offset=132 align=4
        i64.store offset=140 align=4
        local.get 2
        local.get 36
        i32.store offset=136
        local.get 2
        local.get 1
        i32.store offset=132
        local.get 2
        local.get 60
        i32.store offset=128
        local.get 2
        i32.const 128
        i32.add
        call $core::result::unwrap_failed::hdb0f6dccb7c4d3b3
        unreachable
      end
      i32.const 1
      local.set 1
      br 0 (;@1;)
    end)
  (func $<&T_as_core::fmt::Display>::fmt::h4c090b896d0cfc4c (type 1) (param i32 i32) (result i32)
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
                    i32.const 38512
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
                    i32.const 38512
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
                i32.const 38528
                local.get 2
                local.get 4
                call $core::panicking::panic_bounds_check::h8e3d7d625bb942bb
                unreachable
              end
              i32.const 38416
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
  (func $__rust_realloc (type 12) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__rg_realloc)
  (func $bxa_abi::bxa::common::<impl_bxa_abi::bxa::AbiType_for_alloc::string::String>::push_type::hd1382b699cac2770 (type 4) (param i32 i32)
    local.get 1
    i32.const 7
    call $bxa_abi::bxa::sink::Sink::write_byte::h84ed2385190c841d
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.get 1
      i32.const 1
      call $__rust_dealloc
    end)
  (func $__rust_dealloc (type 9) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $__rg_dealloc)
  (func $alloc::vec::Vec<T>::extend_from_slice::ha84126479fc872b4 (type 9) (param i32 i32 i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load offset=8
    local.get 2
    call $alloc::raw_vec::RawVec<T_A>::reserve::hca23d3b627451640
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
    call $core::slice::<impl__T_>::copy_from_slice::h0f9c497fbb88f6ff)
  (func $core::panicking::panic::hb7cb5b256fd27bcf (type 7) (param i32)
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
    i32.const 37700
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
  (func $core::slice::slice_index_order_fail::h3d34e0ef769a011f (type 4) (param i32 i32)
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
    i32.const 3
    i32.store
    local.get 2
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i32.const 3
    i32.store offset=36
    local.get 2
    i64.const 2
    i64.store offset=12 align=4
    local.get 2
    i32.const 38296
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
    i32.const 38312
    call $core::panicking::panic_fmt::h8a97af3c4a58de81
    unreachable)
  (func $core::slice::slice_index_len_fail::hb81ac75c4a989ce8 (type 4) (param i32 i32)
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
    i32.const 3
    i32.store
    local.get 2
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i32.const 3
    i32.store offset=36
    local.get 2
    i64.const 2
    i64.store offset=12 align=4
    local.get 2
    i32.const 38264
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
    i32.const 38280
    call $core::panicking::panic_fmt::h8a97af3c4a58de81
    unreachable)
  (func $core::result::unwrap_failed::h8d800af8292dd987 (type 4) (param i32 i32)
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
    i32.const 4
    i32.store
    local.get 2
    i32.const 44
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i32.const 5
    i32.store offset=52
    local.get 2
    i64.const 2
    i64.store offset=28 align=4
    local.get 2
    i32.const 40288
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
    i32.const 40304
    call $core::panicking::panic_fmt::h8a97af3c4a58de81
    unreachable)
  (func $alloc::raw_vec::RawVec<T_A>::allocate_in::__closure__::h673561f8f2f177da (type 8)
    call $alloc::raw_vec::capacity_overflow::hf2acb48acb5ae20a
    unreachable)
  (func $core::result::unwrap_failed::h0194e43ee5024396 (type 8)
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
    i32.const 32918
    i32.store offset=8
    local.get 0
    i32.const 52
    i32.add
    i32.const 6
    i32.store
    local.get 0
    i32.const 36
    i32.add
    i32.const 2
    i32.store
    local.get 0
    i32.const 7
    i32.store offset=44
    local.get 0
    i64.const 2
    i64.store offset=20 align=4
    local.get 0
    i32.const 40288
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
    i32.const 40304
    call $core::panicking::panic_fmt::h8a97af3c4a58de81
    unreachable)
  (func $deploy (type 8)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    call $bxa_api::ext::input::hdb9170cae4d18162
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.get 1
      i32.const 1
      call $__rust_dealloc
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func $__rust_alloc_zeroed (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__rg_alloc_zeroed)
  (func $alloc::raw_vec::RawVec<T_A>::reserve::hca23d3b627451640 (type 9) (param i32 i32 i32)
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
              i32.const 1
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
  (func $alloc::raw_vec::RawVec<T_A>::allocate_in::h2bd99ea3ad7c2ffe (type 9) (param i32 i32 i32)
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
              i32.const 1
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
      call $alloc::raw_vec::RawVec<T_A>::allocate_in::__closure__::h892cf558725d0f86
      unreachable
    end
    unreachable
    unreachable)
  (func $<D_as_digest::digest::Digest>::digest::h9e2df41e7390b262 (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i64 i32)
    global.get 0
    i32.const 256
    i32.sub
    local.tee 3
    global.set 0
    i32.const 0
    local.set 4
    local.get 3
    i32.const 8
    i32.add
    i32.const 0
    i32.const 68
    call $memset
    local.set 5
    local.get 3
    i32.const 100
    i32.add
    i32.const 0
    i64.load offset=33088 align=4
    i64.store align=4
    local.get 3
    i32.const 92
    i32.add
    i32.const 0
    i64.load offset=33080 align=4
    i64.store align=4
    local.get 3
    i32.const 84
    i32.add
    i32.const 0
    i64.load offset=33072 align=4
    i64.store align=4
    local.get 3
    local.get 2
    i64.extend_i32_u
    i64.const 3
    i64.shl
    i64.store
    local.get 3
    i32.const 0
    i64.load offset=33064 align=4
    i64.store offset=76 align=4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 64
              i32.lt_u
              br_if 0 (;@5;)
              local.get 3
              i32.const 76
              i32.add
              local.set 6
              local.get 2
              local.set 4
              loop  ;; label = @6
                local.get 6
                local.get 1
                call $sha2::sha256_utils::compress256::hda2c16b7d8faad49
                local.get 1
                i32.const 64
                i32.add
                local.set 1
                local.get 4
                i32.const -64
                i32.add
                local.tee 4
                i32.const 64
                i32.ge_u
                br_if 0 (;@6;)
              end
              local.get 3
              i32.const 8
              i32.add
              i32.load
              local.tee 4
              local.get 2
              i32.const 63
              i32.and
              local.tee 2
              i32.add
              local.tee 6
              local.get 4
              i32.lt_u
              br_if 1 (;@4;)
              local.get 6
              i32.const 65
              i32.ge_u
              br_if 2 (;@3;)
            end
            local.get 5
            local.get 4
            i32.add
            i32.const 4
            i32.add
            local.get 2
            local.get 1
            local.get 2
            call $core::slice::<impl__T_>::copy_from_slice::h7af944ad26810922
            local.get 3
            local.get 3
            i32.load offset=8
            local.get 2
            i32.add
            i32.store offset=8
            local.get 3
            i32.const 112
            i32.add
            local.get 3
            i32.const 112
            call $memcpy
            drop
            local.get 3
            i32.const 112
            i32.add
            i32.const 76
            i32.add
            local.set 1
            local.get 3
            i64.load offset=112
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=120
                local.tee 4
                i32.const 64
                i32.ne
                br_if 0 (;@6;)
                local.get 1
                local.get 3
                i32.const 124
                i32.add
                call $sha2::sha256_utils::compress256::hda2c16b7d8faad49
                i32.const 0
                local.set 4
                local.get 3
                i32.const 0
                i32.store offset=120
                br 1 (;@5;)
              end
              local.get 4
              i32.const 63
              i32.gt_u
              br_if 3 (;@2;)
            end
            local.get 3
            i32.const 124
            i32.add
            local.tee 6
            local.get 4
            i32.add
            i32.const 128
            i32.store8
            local.get 3
            local.get 3
            i32.load offset=120
            local.tee 5
            i32.const 1
            i32.add
            local.tee 4
            i32.store offset=120
            block  ;; label = @5
              local.get 4
              i32.const 65
              i32.ge_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 2
              local.get 3
              i32.const 112
              i32.add
              i32.const 8
              i32.add
              local.tee 8
              local.get 4
              i32.add
              i32.const 4
              i32.add
              i32.const 0
              i32.const 63
              local.get 5
              i32.sub
              call $memset
              drop
              block  ;; label = @6
                i32.const 64
                local.get 3
                i32.load offset=120
                i32.sub
                i32.const 7
                i32.gt_u
                br_if 0 (;@6;)
                local.get 1
                local.get 6
                call $sha2::sha256_utils::compress256::hda2c16b7d8faad49
                local.get 8
                i32.load
                local.tee 4
                i32.const 65
                i32.ge_u
                br_if 5 (;@1;)
                local.get 6
                i32.const 0
                local.get 4
                call $memset
                drop
              end
              local.get 3
              i32.const 180
              i32.add
              local.get 7
              i64.const 56
              i64.shl
              local.get 7
              i64.const 40
              i64.shl
              i64.const 71776119061217280
              i64.and
              i64.or
              local.get 7
              i64.const 24
              i64.shl
              i64.const 280375465082880
              i64.and
              local.get 7
              i64.const 8
              i64.shl
              i64.const 1095216660480
              i64.and
              i64.or
              i64.or
              local.get 7
              i64.const 8
              i64.shr_u
              i64.const 4278190080
              i64.and
              local.get 7
              i64.const 24
              i64.shr_u
              i64.const 16711680
              i64.and
              i64.or
              local.get 7
              i64.const 40
              i64.shr_u
              i64.const 65280
              i64.and
              local.get 7
              i64.const 56
              i64.shr_u
              i64.or
              i64.or
              i64.or
              i64.store align=4
              local.get 1
              local.get 6
              call $sha2::sha256_utils::compress256::hda2c16b7d8faad49
              local.get 3
              i32.const 0
              i32.store offset=120
              local.get 3
              i32.const 224
              i32.add
              i32.const 24
              i32.add
              i64.const 0
              i64.store
              local.get 3
              i32.const 240
              i32.add
              i64.const 0
              i64.store
              local.get 3
              i32.const 224
              i32.add
              i32.const 8
              i32.add
              i64.const 0
              i64.store
              local.get 3
              i64.const 0
              i64.store offset=224
              local.get 3
              i32.const 188
              i32.add
              local.set 4
              local.get 3
              i32.const 224
              i32.add
              local.set 6
              loop  ;; label = @6
                local.get 6
                local.get 4
                i32.load
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
                i32.store
                local.get 6
                i32.const 4
                i32.add
                local.set 6
                local.get 4
                i32.const 4
                i32.add
                local.set 4
                local.get 2
                i32.const 1
                i32.add
                local.tee 2
                i32.const 8
                i32.lt_u
                br_if 0 (;@6;)
              end
              local.get 0
              local.get 3
              i64.load offset=224
              i64.store align=1
              local.get 0
              i32.const 24
              i32.add
              local.get 3
              i32.const 224
              i32.add
              i32.const 24
              i32.add
              i64.load
              i64.store align=1
              local.get 0
              i32.const 16
              i32.add
              local.get 3
              i32.const 224
              i32.add
              i32.const 16
              i32.add
              i64.load
              i64.store align=1
              local.get 0
              i32.const 8
              i32.add
              local.get 3
              i32.const 224
              i32.add
              i32.const 8
              i32.add
              i64.load
              i64.store align=1
              local.get 3
              i32.const 256
              i32.add
              global.set 0
              return
            end
            local.get 4
            i32.const 64
            call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
            unreachable
          end
          local.get 4
          local.get 6
          call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
          unreachable
        end
        local.get 6
        i32.const 64
        call $core::slice::slice_index_len_fail::hb81ac75c4a989ce8
        unreachable
      end
      i32.const 37880
      local.get 4
      i32.const 64
      call $core::panicking::panic_bounds_check::h8e3d7d625bb942bb
      unreachable
    end
    local.get 4
    i32.const 64
    call $core::slice::slice_index_len_fail::hb81ac75c4a989ce8
    unreachable)
  (func $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6 (type 9) (param i32 i32 i32)
    (local i32 i64)
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
          i64.extend_i32_u
          i64.const 2
          i64.shl
          local.tee 4
          i64.const 32
          i64.shr_u
          i32.wrap_i64
          br_if 0 (;@3;)
          local.get 4
          i32.wrap_i64
          local.tee 2
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
              i32.const 2
              i32.shl
              i32.const 4
              local.get 2
              call $__rust_realloc
              local.tee 2
              i32.eqz
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            local.get 2
            i32.const 4
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
  (func $num_bigint::biguint::algorithms::mul3::hf4ba5a376759f24b (type 13) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    i32.const 8
    i32.add
    local.get 2
    local.get 4
    i32.add
    local.tee 6
    i32.const 1
    i32.add
    local.tee 7
    i32.const 1
    call $alloc::raw_vec::RawVec<T_A>::allocate_in::h55f622eb10260618
    local.get 5
    i32.load offset=12
    local.set 8
    local.get 5
    i32.load offset=8
    local.tee 9
    local.get 7
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $num_bigint::biguint::algorithms::mac3::h458bf79c16a14b72
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        local.get 7
        i32.gt_u
        br_if 0 (;@2;)
        local.get 6
        i32.const 2
        i32.shl
        local.set 4
        loop  ;; label = @3
          local.get 7
          i32.const -1
          i32.add
          local.tee 2
          local.get 7
          i32.ge_u
          br_if 1 (;@2;)
          local.get 9
          local.get 4
          i32.add
          local.tee 6
          i32.eqz
          br_if 1 (;@2;)
          local.get 6
          i32.load
          br_if 1 (;@2;)
          local.get 7
          i32.const -2
          i32.add
          local.set 6
          local.get 4
          i32.const -4
          i32.add
          local.set 4
          local.get 2
          local.set 7
          local.get 6
          local.get 2
          i32.le_u
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 7
      local.set 2
    end
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 8
    i32.store offset=4
    local.get 0
    local.get 9
    i32.store
    local.get 5
    i32.const 16
    i32.add
    global.set 0)
  (func $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9 (type 4) (param i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load
    local.set 3
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    i32.load offset=8
    local.tee 1
    i32.const 0
    call $alloc::raw_vec::RawVec<T_A>::allocate_in::h55f622eb10260618
    local.get 2
    i32.const 0
    i32.store offset=24
    local.get 2
    local.get 2
    i64.load offset=8
    i64.store offset=16
    local.get 2
    i32.const 16
    i32.add
    i32.const 0
    local.get 1
    call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
    local.get 2
    local.get 1
    local.get 2
    i32.load offset=24
    local.tee 4
    i32.add
    i32.store offset=24
    local.get 2
    i32.load offset=16
    local.get 4
    i32.const 2
    i32.shl
    i32.add
    local.get 3
    local.get 1
    i32.const 2
    i32.shl
    call $memcpy
    drop
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    i32.load offset=24
    i32.store
    local.get 0
    local.get 2
    i64.load offset=16
    i64.store align=4
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func $num_bigint::biguint::algorithms::div_rem_digit::h744a33ccfc0e683c (type 9) (param i32 i32 i32)
    (local i32 i32 i64 i32 i64 i64 i32 i32)
    local.get 1
    i32.load
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=8
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 2
          i64.extend_i32_u
          local.set 5
          local.get 3
          i32.const -4
          i32.add
          local.set 6
          local.get 4
          i32.const 2
          i32.shl
          local.set 2
          i64.const 0
          local.set 7
          loop  ;; label = @4
            local.get 6
            local.get 2
            i32.add
            local.tee 4
            local.get 7
            i64.const 32
            i64.shl
            local.get 4
            i64.load32_u
            i64.or
            local.tee 7
            local.get 5
            i64.div_u
            local.tee 8
            i64.store32
            local.get 7
            local.get 8
            local.get 5
            i64.mul
            i64.sub
            local.set 7
            local.get 2
            i32.const -4
            i32.add
            local.tee 2
            br_if 0 (;@4;)
          end
          local.get 1
          i32.const 8
          i32.add
          i32.load
          local.set 2
          local.get 1
          i32.load
          local.set 3
          local.get 7
          i32.wrap_i64
          local.set 9
          br 1 (;@2;)
        end
        i32.const 0
        local.set 2
        i32.const 0
        local.set 9
      end
      local.get 1
      i32.load offset=4
      local.set 10
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const -1
          i32.add
          local.get 2
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          i32.const 2
          i32.shl
          i32.const -4
          i32.add
          local.set 6
          loop  ;; label = @4
            local.get 2
            i32.const -1
            i32.add
            local.tee 4
            local.get 2
            i32.ge_u
            br_if 1 (;@3;)
            local.get 3
            local.get 6
            i32.add
            local.tee 1
            i32.eqz
            br_if 1 (;@3;)
            local.get 1
            i32.load
            br_if 1 (;@3;)
            local.get 2
            i32.const -2
            i32.add
            local.set 1
            local.get 6
            i32.const -4
            i32.add
            local.set 6
            local.get 4
            local.set 2
            local.get 1
            local.get 4
            i32.le_u
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 2
        local.set 4
      end
      local.get 0
      local.get 9
      i32.store offset=12
      local.get 0
      local.get 4
      i32.store offset=8
      local.get 0
      local.get 10
      i32.store offset=4
      local.get 0
      local.get 3
      i32.store
      return
    end
    i32.const 37968
    call $core::panicking::panic::hb7cb5b256fd27bcf
    unreachable)
  (func $std::panicking::begin_panic::h9d1f0cd51c92c0f4 (type 9) (param i32 i32 i32)
    local.get 2
    call $std::panicking::rust_panic_with_hook::hda811be35d0f5267
    unreachable)
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
    i32.const 3
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 3
    i32.store offset=36
    local.get 3
    i64.const 2
    i64.store offset=12 align=4
    local.get 3
    i32.const 38232
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
  (func $num_bigint::biguint::algorithms::biguint_shl::h0d97096934b982fe.157 (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 5
        i32.shr_u
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 5
        local.get 3
        i32.const 8
        i32.add
        local.get 4
        local.get 1
        i32.const 4
        i32.add
        local.get 1
        i32.load offset=4
        local.get 1
        i32.load
        i32.const 1
        i32.eq
        select
        local.tee 6
        i32.load offset=8
        i32.add
        i32.const 1
        i32.add
        i32.const 0
        call $alloc::raw_vec::RawVec<T_A>::allocate_in::h55f622eb10260618
        local.get 3
        i32.const 0
        i32.store offset=40
        local.get 3
        local.get 3
        i64.load offset=8
        i64.store offset=32
        local.get 3
        i32.const 32
        i32.add
        local.get 4
        call $<alloc::vec::Vec<T>_as_alloc::vec::SpecExtend<T_I>>::spec_extend::h866f17bd05355cb6
        local.get 3
        i32.const 32
        i32.add
        local.get 6
        i32.load
        local.tee 7
        local.get 7
        local.get 6
        i32.load offset=8
        i32.const 2
        i32.shl
        i32.add
        call $<alloc::vec::Vec<T>_as_alloc::vec::SpecExtend<T_I>>::spec_extend::ha06313532da497f8
        local.get 3
        i32.const 24
        i32.add
        local.get 3
        i32.load offset=40
        i32.store
        local.get 3
        local.get 3
        i64.load offset=32
        i64.store offset=16
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=4
      local.set 6
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          local.get 6
          i32.store offset=32
          local.get 3
          local.get 1
          i32.const 8
          i32.add
          i64.load align=4
          i64.store offset=36 align=4
          br 1 (;@2;)
        end
        local.get 3
        i32.const 32
        i32.add
        local.get 6
        call $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9
      end
      local.get 3
      i32.const 16
      i32.add
      i32.const 8
      i32.add
      local.get 3
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 3
      local.get 3
      i64.load offset=32
      i64.store offset=16
      i32.const 0
      local.set 5
    end
    local.get 3
    i32.load offset=16
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 31
        i32.and
        local.tee 8
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=24
        local.tee 6
        local.get 4
        i32.lt_u
        br_if 1 (;@1;)
        local.get 4
        local.get 6
        i32.eq
        br_if 0 (;@2;)
        local.get 6
        i32.const 2
        i32.shl
        local.set 9
        local.get 4
        i32.const 2
        i32.shl
        local.set 4
        i32.const 0
        local.set 6
        i32.const 0
        local.get 2
        i32.sub
        i32.const 31
        i32.and
        local.set 10
        loop  ;; label = @3
          local.get 7
          local.get 4
          i32.add
          local.tee 2
          local.get 2
          i32.load
          local.tee 2
          local.get 8
          i32.shl
          local.get 6
          i32.or
          i32.store
          local.get 2
          local.get 10
          i32.shr_u
          local.set 6
          local.get 9
          local.get 4
          i32.const 4
          i32.add
          local.tee 4
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 3
          i32.const 24
          i32.add
          local.tee 2
          i32.load
          local.tee 4
          local.get 3
          i32.load offset=20
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          i32.const 16
          i32.add
          local.get 4
          i32.const 1
          call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
          local.get 2
          i32.load
          local.set 4
          local.get 3
          i32.load offset=16
          local.set 7
        end
        local.get 2
        local.get 4
        i32.const 1
        i32.add
        i32.store
        local.get 7
        local.get 4
        i32.const 2
        i32.shl
        i32.add
        local.get 6
        i32.store
      end
      local.get 3
      i32.load offset=20
      local.set 9
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load offset=24
          local.tee 4
          i32.const -1
          i32.add
          local.get 4
          i32.gt_u
          br_if 0 (;@3;)
          local.get 4
          i32.const 2
          i32.shl
          i32.const -4
          i32.add
          local.set 2
          loop  ;; label = @4
            local.get 4
            i32.const -1
            i32.add
            local.tee 6
            local.get 4
            i32.ge_u
            br_if 1 (;@3;)
            local.get 7
            local.get 2
            i32.add
            local.tee 8
            i32.eqz
            br_if 1 (;@3;)
            local.get 8
            i32.load
            br_if 1 (;@3;)
            local.get 4
            i32.const -2
            i32.add
            local.set 8
            local.get 2
            i32.const -4
            i32.add
            local.set 2
            local.get 6
            local.set 4
            local.get 8
            local.get 6
            i32.le_u
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 4
        local.set 6
      end
      local.get 0
      local.get 6
      i32.store offset=8
      local.get 0
      local.get 9
      i32.store offset=4
      local.get 0
      local.get 7
      i32.store
      block  ;; label = @2
        local.get 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.add
        i32.load
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=4
        local.get 4
        i32.const 2
        i32.shl
        i32.const 4
        call $__rust_dealloc
      end
      local.get 3
      i32.const 48
      i32.add
      global.set 0
      return
    end
    local.get 4
    local.get 6
    call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
    unreachable)
  (func $alloc::raw_vec::RawVec<T_A>::allocate_in::h55f622eb10260618 (type 9) (param i32 i32 i32)
    (local i64 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i64.extend_i32_u
          local.tee 3
          i64.const 30
          i64.shr_u
          i32.wrap_i64
          br_if 0 (;@3;)
          local.get 3
          i64.const 2
          i64.shl
          i32.wrap_i64
          local.tee 4
          i32.const -1
          i32.le_s
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                i32.eqz
                br_if 1 (;@5;)
                local.get 4
                i32.const 4
                call $__rust_alloc_zeroed
                local.tee 4
                br_if 2 (;@4;)
                br 5 (;@1;)
              end
              i32.const 4
              local.set 4
              br 1 (;@4;)
            end
            local.get 4
            i32.const 4
            call $__rust_alloc
            local.tee 4
            i32.eqz
            br_if 3 (;@1;)
          end
          local.get 0
          local.get 1
          i32.store offset=4
          local.get 0
          local.get 4
          i32.store
          return
        end
        call $alloc::raw_vec::RawVec<T_A>::allocate_in::__closure__::h98e2056993ad0039
        unreachable
      end
      call $alloc::raw_vec::RawVec<T_A>::allocate_in::__closure__::hf36f91df86914301
      unreachable
    end
    unreachable
    unreachable)
  (func $<alloc::vec::Vec<T>_as_alloc::vec::SpecExtend<T_I>>::spec_extend::ha06313532da497f8 (type 9) (param i32 i32 i32)
    (local i32 i32 i32)
    local.get 0
    local.get 0
    i32.load offset=8
    local.get 2
    local.get 1
    i32.sub
    i32.const 2
    i32.shr_u
    call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
    local.get 0
    i32.load offset=8
    local.set 3
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.get 3
      i32.const 2
      i32.shl
      i32.add
      local.set 4
      local.get 1
      local.set 5
      loop  ;; label = @2
        local.get 4
        local.get 5
        i32.load
        i32.store
        local.get 4
        i32.const 4
        i32.add
        local.set 4
        local.get 2
        local.get 5
        i32.const 4
        i32.add
        local.tee 5
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 2
      i32.const -4
      i32.add
      local.get 1
      i32.sub
      i32.const 2
      i32.shr_u
      local.get 3
      i32.add
      i32.const 1
      i32.add
      local.set 3
    end
    local.get 0
    i32.const 8
    i32.add
    local.get 3
    i32.store)
  (func $<num_bigint::biguint::BigUint_as_core::ops::arith::SubAssign<&num_bigint::biguint::BigUint>>::sub_assign::h2c33f9a06754f570 (type 4) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=8
    local.get 1
    i32.load
    local.get 1
    i32.load offset=8
    call $num_bigint::biguint::algorithms::sub2::h4e4539b30a6aca64
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.const -1
      i32.add
      local.tee 1
      local.get 2
      i32.gt_u
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.set 3
      local.get 2
      i32.const 2
      i32.shl
      i32.const -4
      i32.add
      local.set 2
      local.get 0
      i32.const 8
      i32.add
      local.set 4
      loop  ;; label = @2
        local.get 1
        local.get 1
        i32.const 1
        i32.add
        local.tee 0
        i32.ge_u
        br_if 1 (;@1;)
        local.get 3
        local.get 2
        i32.add
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.load
        br_if 1 (;@1;)
        local.get 4
        local.get 0
        i32.const -1
        i32.add
        local.tee 5
        i32.store
        local.get 2
        i32.const -4
        i32.add
        local.set 2
        local.get 0
        i32.const -2
        i32.add
        local.tee 1
        local.get 5
        i32.le_u
        br_if 0 (;@2;)
      end
    end)
  (func $num_bigint::biguint::algorithms::add2::hb263877f5534fec5 (type 2) (param i32 i32 i32 i32)
    (local i32 i64 i32)
    block  ;; label = @1
      local.get 1
      local.get 3
      i32.lt_u
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        i32.const 2
        i32.shl
        i32.add
        local.set 4
        i64.const 0
        local.set 5
        local.get 3
        local.set 6
        loop  ;; label = @3
          local.get 0
          local.get 5
          local.get 0
          i64.load32_u
          i64.add
          local.get 2
          i64.load32_u
          i64.add
          local.tee 5
          i64.store32
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 2
          i32.const 4
          i32.add
          local.set 2
          local.get 5
          i64.const 32
          i64.shr_u
          local.set 5
          local.get 6
          i32.const -1
          i32.add
          local.tee 6
          br_if 0 (;@3;)
        end
        local.get 5
        i64.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 2
        i32.shl
        local.get 3
        i32.const 2
        i32.shl
        i32.sub
        local.set 0
        loop  ;; label = @3
          local.get 0
          i32.eqz
          br_if 1 (;@2;)
          local.get 4
          local.get 5
          local.get 4
          i64.load32_u
          i64.add
          local.tee 5
          i64.store32
          local.get 0
          i32.const -4
          i32.add
          local.set 0
          local.get 4
          i32.const 4
          i32.add
          local.set 4
          local.get 5
          i64.const 32
          i64.shr_u
          local.tee 5
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
        end
      end
      return
    end
    i32.const 37944
    call $core::panicking::panic::hb7cb5b256fd27bcf
    unreachable)
  (func $num_bigint::biguint::algorithms::sub2::h4e4539b30a6aca64 (type 2) (param i32 i32 i32 i32)
    (local i32 i32 i32 i64 i32 i32)
    local.get 3
    local.get 1
    local.get 1
    local.get 3
    i32.gt_u
    select
    local.tee 4
    i32.const 2
    i32.shl
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 5
          i32.add
          local.set 6
          i64.const 0
          local.set 7
          i32.const 0
          local.set 8
          local.get 2
          local.set 9
          loop  ;; label = @4
            local.get 0
            local.get 0
            i64.load32_u
            local.get 9
            i64.load32_u
            i64.sub
            local.get 7
            i64.add
            local.tee 7
            i64.store32
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            local.get 9
            i32.const 4
            i32.add
            local.set 9
            local.get 7
            i64.const 32
            i64.shr_s
            local.set 7
            local.get 8
            i32.const 1
            i32.add
            local.tee 8
            local.get 4
            i32.lt_u
            br_if 0 (;@4;)
          end
          local.get 7
          i64.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i32.const -1
          i32.xor
          local.tee 0
          local.get 1
          i32.const -1
          i32.xor
          local.tee 9
          local.get 0
          local.get 9
          i32.gt_u
          select
          i32.add
          i32.const 2
          i32.shl
          i32.const 4
          i32.add
          local.set 0
          block  ;; label = @4
            loop  ;; label = @5
              local.get 0
              i32.eqz
              br_if 1 (;@4;)
              local.get 6
              local.get 7
              local.get 6
              i64.load32_u
              i64.add
              local.tee 7
              i64.store32
              local.get 0
              i32.const -4
              i32.add
              local.set 0
              local.get 6
              i32.const 4
              i32.add
              local.set 6
              local.get 7
              i64.const 32
              i64.shr_s
              local.tee 7
              i64.eqz
              i32.eqz
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          local.get 7
          i64.const 0
          i64.ne
          br_if 1 (;@2;)
        end
        local.get 2
        local.get 5
        i32.add
        local.set 0
        local.get 3
        local.get 3
        i32.const -1
        i32.xor
        local.tee 9
        local.get 1
        i32.const -1
        i32.xor
        local.tee 8
        local.get 9
        local.get 8
        i32.gt_u
        select
        i32.add
        i32.const 2
        i32.shl
        i32.const 4
        i32.add
        local.set 9
        local.get 2
        local.get 3
        i32.const 2
        i32.shl
        i32.add
        local.set 6
        block  ;; label = @3
          loop  ;; label = @4
            local.get 6
            local.get 0
            i32.sub
            i32.const 15
            i32.le_u
            br_if 1 (;@3;)
            local.get 0
            i32.load
            br_if 2 (;@2;)
            local.get 0
            i32.const 4
            i32.add
            i32.load
            br_if 2 (;@2;)
            local.get 0
            i32.const 8
            i32.add
            i32.load
            br_if 2 (;@2;)
            local.get 9
            i32.const -16
            i32.add
            local.set 9
            local.get 0
            i32.const 12
            i32.add
            local.set 8
            local.get 0
            i32.const 16
            i32.add
            local.set 0
            local.get 8
            i32.load
            i32.eqz
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        loop  ;; label = @3
          local.get 9
          i32.eqz
          br_if 2 (;@1;)
          local.get 9
          i32.const -4
          i32.add
          local.set 9
          local.get 0
          i32.load
          local.set 8
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 8
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      i32.const 33453
      i32.const 52
      i32.const 37992
      call $std::panicking::begin_panic::h9d1f0cd51c92c0f4
      unreachable
    end)
  (func $core::result::unwrap_failed::hdb0f6dccb7c4d3b3 (type 7) (param i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 43
    i32.store offset=4
    local.get 1
    i32.const 37794
    i32.store
    local.get 1
    i32.const 44
    i32.add
    i32.const 8
    i32.store
    local.get 1
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 1
    local.get 0
    i32.store offset=40
    local.get 1
    i32.const 5
    i32.store offset=36
    local.get 1
    i64.const 2
    i64.store offset=12 align=4
    local.get 1
    i32.const 40288
    i32.store offset=8
    local.get 1
    local.get 1
    i32.store offset=32
    local.get 1
    local.get 1
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 1
    i32.const 8
    i32.add
    i32.const 40304
    call $core::panicking::panic_fmt::h8a97af3c4a58de81
    unreachable)
  (func $core::slice::<impl__T_>::copy_from_slice::h0f9c497fbb88f6ff (type 2) (param i32 i32 i32 i32)
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
    i32.const 9
    i32.store
    local.get 4
    i32.const 52
    i32.add
    i32.const 10
    i32.store
    local.get 4
    i32.const 16
    i32.add
    i32.const 20
    i32.add
    i32.const 3
    i32.store
    local.get 4
    i32.const 37700
    i32.store offset=88
    local.get 4
    i64.const 1
    i64.store offset=76 align=4
    local.get 4
    i32.const 38080
    i32.store offset=72
    local.get 4
    i32.const 10
    i32.store offset=44
    local.get 4
    i64.const 3
    i64.store offset=20 align=4
    local.get 4
    i32.const 38056
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
    i32.const 38088
    call $core::panicking::panic_fmt::h8a97af3c4a58de81
    unreachable)
  (func $<bxa_abi::bxa::Error_as_core::fmt::Debug>::fmt::he7aabda29985fbc5 (type 1) (param i32 i32) (result i32)
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
                  i32.const 32848
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
                i32.const 32837
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
              i32.const 32858
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
            i32.const 32868
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
          i32.const 32886
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
        i32.const 32899
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
      i32.const 32913
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
          i32.const 37623
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
          i32.const 37622
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
        i32.const 37630
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
  (func $core::fmt::num::imp::fmt_u64::h410eebb512c98a23 (type 14) (param i64 i32) (result i32)
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
          i32.const 34185
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
          i32.const 34185
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
      i32.const 34185
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
      i32.const 34185
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    local.get 1
    i32.const 37700
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
  (func $<alloc::string::FromUtf8Error_as_core::fmt::Debug>::fmt::hf907d625fcd35e79 (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load offset=24
    i32.const 33856
    i32.const 13
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 0)
    local.set 3
    local.get 2
    i32.const 0
    i32.store8 offset=5
    local.get 2
    local.get 3
    i32.store8 offset=4
    local.get 2
    local.get 1
    i32.store
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    i32.const 33869
    i32.const 5
    local.get 2
    i32.const 12
    i32.add
    i32.const 38128
    call $core::fmt::builders::DebugStruct::field::ha4cf5f78fd42b75a
    local.set 1
    local.get 2
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=12
    local.get 1
    i32.const 33874
    i32.const 5
    local.get 2
    i32.const 12
    i32.add
    i32.const 38144
    call $core::fmt::builders::DebugStruct::field::ha4cf5f78fd42b75a
    drop
    local.get 2
    i32.load8_u offset=4
    local.set 1
    block  ;; label = @1
      local.get 2
      i32.load8_u offset=5
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 255
      i32.and
      local.set 0
      i32.const 1
      local.set 1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        local.get 2
        i32.load
        local.tee 1
        i32.load offset=24
        i32.const 37627
        i32.const 37625
        local.get 1
        i32.load
        i32.const 4
        i32.and
        select
        i32.const 2
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 0)
        local.set 1
      end
      local.get 2
      local.get 1
      i32.store8 offset=4
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1
    i32.const 255
    i32.and
    i32.const 0
    i32.ne)
  (func $<&T_as_core::fmt::Display>::fmt::hdbfc78aabe66420f (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $core::fmt::Formatter::pad::h30d888b7844d66df)
  (func $core::panicking::panic_fmt::h8a97af3c4a58de81 (type 4) (param i32 i32)
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
    i32.const 38248
    i32.store offset=4
    local.get 2
    i32.const 37700
    i32.store
    local.get 2
    call $rust_begin_unwind
    unreachable)
  (func $sha2::sha256_utils::compress256::hda2c16b7d8faad49 (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.const 64
    call $memcpy
    local.set 1
    i32.const 0
    local.set 3
    loop  ;; label = @1
      local.get 1
      local.get 3
      i32.add
      local.tee 2
      local.get 2
      i32.load
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store
      local.get 3
      i32.const 4
      i32.add
      local.tee 3
      i32.const 64
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 0
    i32.load
    local.set 2
    local.get 0
    i32.load offset=4
    local.set 3
    local.get 0
    i32.load offset=16
    local.set 4
    local.get 0
    i32.load offset=20
    local.set 5
    local.get 0
    i64.load offset=8 align=4
    local.set 6
    local.get 1
    i32.load offset=12
    local.set 7
    local.get 1
    i32.load offset=8
    local.set 8
    local.get 1
    i32.load offset=4
    local.set 9
    local.get 1
    i32.load
    local.set 10
    local.get 1
    local.get 0
    i64.load offset=24 align=4
    i64.store offset=104
    local.get 1
    local.get 6
    i64.store offset=96
    local.get 1
    local.get 5
    i32.store offset=124
    local.get 1
    local.get 4
    i32.store offset=120
    local.get 1
    local.get 3
    i32.store offset=116
    local.get 1
    local.get 2
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 9
    i32.const 1899447441
    i32.add
    local.get 10
    i32.const 1116352408
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 11
    local.get 1
    i32.load offset=84
    local.set 12
    local.get 1
    i32.load offset=88
    local.set 13
    local.get 1
    i32.load offset=92
    local.set 14
    local.get 1
    local.get 5
    i32.store offset=108
    local.get 1
    local.get 4
    i32.store offset=104
    local.get 1
    local.get 3
    i32.store offset=100
    local.get 1
    local.get 2
    i32.store offset=96
    local.get 1
    local.get 14
    i32.store offset=124
    local.get 1
    local.get 13
    i32.store offset=120
    local.get 1
    local.get 12
    i32.store offset=116
    local.get 1
    local.get 11
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 7
    i32.const -373957723
    i32.add
    local.get 8
    i32.const -1245643825
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 2
    local.get 1
    i32.load offset=84
    local.set 3
    local.get 1
    i32.load offset=88
    local.set 4
    local.get 1
    i32.load offset=92
    local.set 15
    local.get 1
    i32.load offset=28
    local.set 16
    local.get 1
    i32.load offset=24
    local.set 17
    local.get 1
    i32.load offset=20
    local.set 18
    local.get 1
    i32.load offset=16
    local.set 5
    local.get 1
    local.get 14
    i32.store offset=108
    local.get 1
    local.get 13
    i32.store offset=104
    local.get 1
    local.get 12
    i32.store offset=100
    local.get 1
    local.get 11
    i32.store offset=96
    local.get 1
    local.get 15
    i32.store offset=124
    local.get 1
    local.get 4
    i32.store offset=120
    local.get 1
    local.get 3
    i32.store offset=116
    local.get 1
    local.get 2
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 18
    i32.const 1508970993
    i32.add
    local.get 5
    i32.const 961987163
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 19
    local.get 1
    i32.load offset=84
    local.set 20
    local.get 1
    i32.load offset=88
    local.set 21
    local.get 1
    i32.load offset=92
    local.set 22
    local.get 1
    local.get 15
    i32.store offset=108
    local.get 1
    local.get 4
    i32.store offset=104
    local.get 1
    local.get 3
    i32.store offset=100
    local.get 1
    local.get 2
    i32.store offset=96
    local.get 1
    local.get 22
    i32.store offset=124
    local.get 1
    local.get 21
    i32.store offset=120
    local.get 1
    local.get 20
    i32.store offset=116
    local.get 1
    local.get 19
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 16
    i32.const -1424204075
    i32.add
    local.get 17
    i32.const -1841331548
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 2
    local.get 1
    i32.load offset=84
    local.set 3
    local.get 1
    i32.load offset=88
    local.set 4
    local.get 1
    i32.load offset=92
    local.set 15
    local.get 1
    i32.load offset=44
    local.set 11
    local.get 1
    i32.load offset=40
    local.set 12
    local.get 1
    i32.load offset=36
    local.set 13
    local.get 1
    i32.load offset=32
    local.set 14
    local.get 1
    local.get 22
    i32.store offset=108
    local.get 1
    local.get 21
    i32.store offset=104
    local.get 1
    local.get 20
    i32.store offset=100
    local.get 1
    local.get 19
    i32.store offset=96
    local.get 1
    local.get 15
    i32.store offset=124
    local.get 1
    local.get 4
    i32.store offset=120
    local.get 1
    local.get 3
    i32.store offset=116
    local.get 1
    local.get 2
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 13
    i32.const 310598401
    i32.add
    local.get 14
    i32.const -670586216
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 19
    local.get 1
    i32.load offset=84
    local.set 20
    local.get 1
    i32.load offset=88
    local.set 21
    local.get 1
    i32.load offset=92
    local.set 22
    local.get 1
    local.get 15
    i32.store offset=108
    local.get 1
    local.get 4
    i32.store offset=104
    local.get 1
    local.get 3
    i32.store offset=100
    local.get 1
    local.get 2
    i32.store offset=96
    local.get 1
    local.get 22
    i32.store offset=124
    local.get 1
    local.get 21
    i32.store offset=120
    local.get 1
    local.get 20
    i32.store offset=116
    local.get 1
    local.get 19
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 11
    i32.const 1426881987
    i32.add
    local.get 12
    i32.const 607225278
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 23
    local.get 1
    i32.load offset=84
    local.set 24
    local.get 1
    i32.load offset=88
    local.set 25
    local.get 1
    i32.load offset=92
    local.set 26
    local.get 1
    i32.load offset=60
    local.set 2
    local.get 1
    i32.load offset=56
    local.set 3
    local.get 1
    i32.load offset=52
    local.set 15
    local.get 1
    i32.load offset=48
    local.set 4
    local.get 1
    local.get 22
    i32.store offset=108
    local.get 1
    local.get 21
    i32.store offset=104
    local.get 1
    local.get 20
    i32.store offset=100
    local.get 1
    local.get 19
    i32.store offset=96
    local.get 1
    local.get 26
    i32.store offset=124
    local.get 1
    local.get 25
    i32.store offset=120
    local.get 1
    local.get 24
    i32.store offset=116
    local.get 1
    local.get 23
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 15
    i32.const -2132889090
    i32.add
    local.get 4
    i32.const 1925078388
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 19
    local.get 1
    i32.load offset=84
    local.set 20
    local.get 1
    i32.load offset=88
    local.set 21
    local.get 1
    i32.load offset=92
    local.set 22
    local.get 1
    local.get 26
    i32.store offset=108
    local.get 1
    local.get 25
    i32.store offset=104
    local.get 1
    local.get 24
    i32.store offset=100
    local.get 1
    local.get 23
    i32.store offset=96
    local.get 1
    local.get 22
    i32.store offset=124
    local.get 1
    local.get 21
    i32.store offset=120
    local.get 1
    local.get 20
    i32.store offset=116
    local.get 1
    local.get 19
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 2
    i32.const -1046744716
    i32.add
    local.get 3
    i32.const -1680079193
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 23
    local.get 1
    i32.load offset=84
    local.set 24
    local.get 1
    i32.load offset=88
    local.set 25
    local.get 1
    i32.load offset=92
    local.set 26
    local.get 1
    local.get 10
    i32.store offset=124
    local.get 1
    local.get 9
    i32.store offset=120
    local.get 1
    local.get 8
    i32.store offset=116
    local.get 1
    local.get 7
    i32.store offset=112
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 5
    call $sha2::sha256_utils::sha256msg1::hc1815eb73d1dc90c
    local.get 1
    local.get 13
    local.get 1
    i32.load offset=108
    i32.add
    i32.store offset=124
    local.get 1
    local.get 12
    local.get 1
    i32.load offset=104
    i32.add
    i32.store offset=120
    local.get 1
    local.get 11
    local.get 1
    i32.load offset=100
    i32.add
    i32.store offset=116
    local.get 1
    local.get 4
    local.get 1
    i32.load offset=96
    i32.add
    i32.store offset=112
    local.get 1
    i32.const 64
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 2
    local.get 3
    call $sha2::sha256_utils::sha256msg2::hc622d7751d1111e1
    local.get 1
    local.get 22
    i32.store offset=108
    local.get 1
    local.get 21
    i32.store offset=104
    local.get 1
    local.get 20
    i32.store offset=100
    local.get 1
    local.get 19
    i32.store offset=96
    local.get 1
    local.get 26
    i32.store offset=124
    local.get 1
    local.get 25
    i32.store offset=120
    local.get 1
    local.get 24
    i32.store offset=116
    local.get 1
    local.get 23
    i32.store offset=112
    local.get 1
    i32.load offset=64
    local.set 9
    local.get 1
    i32.load offset=68
    local.set 10
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 1
    i32.load offset=72
    local.tee 27
    i32.const -272742522
    i32.add
    local.get 1
    i32.load offset=76
    local.tee 7
    i32.const -459576895
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 19
    local.get 1
    i32.load offset=84
    local.set 20
    local.get 1
    i32.load offset=88
    local.set 21
    local.get 1
    i32.load offset=92
    local.set 22
    local.get 1
    local.get 26
    i32.store offset=108
    local.get 1
    local.get 25
    i32.store offset=104
    local.get 1
    local.get 24
    i32.store offset=100
    local.get 1
    local.get 23
    i32.store offset=96
    local.get 1
    local.get 22
    i32.store offset=124
    local.get 1
    local.get 21
    i32.store offset=120
    local.get 1
    local.get 20
    i32.store offset=116
    local.get 1
    local.get 19
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 9
    i32.const 604807628
    i32.add
    local.get 10
    i32.const 264347078
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 23
    local.get 1
    i32.load offset=84
    local.set 24
    local.get 1
    i32.load offset=88
    local.set 25
    local.get 1
    i32.load offset=92
    local.set 26
    local.get 1
    local.get 5
    i32.store offset=124
    local.get 1
    local.get 18
    i32.store offset=120
    local.get 1
    local.get 17
    i32.store offset=116
    local.get 1
    local.get 16
    i32.store offset=112
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 14
    call $sha2::sha256_utils::sha256msg1::hc1815eb73d1dc90c
    local.get 1
    local.get 15
    local.get 1
    i32.load offset=108
    i32.add
    i32.store offset=124
    local.get 1
    local.get 3
    local.get 1
    i32.load offset=104
    i32.add
    i32.store offset=120
    local.get 1
    local.get 2
    local.get 1
    i32.load offset=100
    i32.add
    i32.store offset=116
    local.get 1
    local.get 7
    local.get 1
    i32.load offset=96
    i32.add
    i32.store offset=112
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 9
    local.get 10
    call $sha2::sha256_utils::sha256msg2::hc622d7751d1111e1
    local.get 1
    i32.load offset=96
    local.set 5
    local.get 1
    i32.load offset=100
    local.set 7
    local.get 1
    i32.load offset=104
    local.set 16
    local.get 1
    i32.load offset=108
    local.set 8
    local.get 1
    local.get 22
    i32.store offset=108
    local.get 1
    local.get 21
    i32.store offset=104
    local.get 1
    local.get 20
    i32.store offset=100
    local.get 1
    local.get 19
    i32.store offset=96
    local.get 1
    local.get 26
    i32.store offset=124
    local.get 1
    local.get 25
    i32.store offset=120
    local.get 1
    local.get 24
    i32.store offset=116
    local.get 1
    local.get 23
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 16
    i32.const 1249150122
    i32.add
    local.get 8
    i32.const 770255983
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 17
    local.get 1
    i32.load offset=84
    local.set 18
    local.get 1
    i32.load offset=88
    local.set 19
    local.get 1
    i32.load offset=92
    local.set 20
    local.get 1
    local.get 26
    i32.store offset=108
    local.get 1
    local.get 25
    i32.store offset=104
    local.get 1
    local.get 24
    i32.store offset=100
    local.get 1
    local.get 23
    i32.store offset=96
    local.get 1
    local.get 20
    i32.store offset=124
    local.get 1
    local.get 19
    i32.store offset=120
    local.get 1
    local.get 18
    i32.store offset=116
    local.get 1
    local.get 17
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 5
    i32.const 1996064986
    i32.add
    local.get 7
    i32.const 1555081692
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 21
    local.get 1
    i32.load offset=84
    local.set 22
    local.get 1
    i32.load offset=88
    local.set 23
    local.get 1
    i32.load offset=92
    local.set 24
    local.get 1
    local.get 14
    i32.store offset=124
    local.get 1
    local.get 13
    i32.store offset=120
    local.get 1
    local.get 12
    i32.store offset=116
    local.get 1
    local.get 11
    i32.store offset=112
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 4
    call $sha2::sha256_utils::sha256msg1::hc1815eb73d1dc90c
    local.get 1
    local.get 27
    local.get 1
    i32.load offset=108
    i32.add
    i32.store offset=124
    local.get 1
    local.get 10
    local.get 1
    i32.load offset=104
    i32.add
    i32.store offset=120
    local.get 1
    local.get 9
    local.get 1
    i32.load offset=100
    i32.add
    i32.store offset=116
    local.get 1
    local.get 8
    local.get 1
    i32.load offset=96
    i32.add
    i32.store offset=112
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 5
    local.get 7
    call $sha2::sha256_utils::sha256msg2::hc622d7751d1111e1
    local.get 1
    i32.load offset=96
    local.set 11
    local.get 1
    i32.load offset=100
    local.set 12
    local.get 1
    i32.load offset=104
    local.set 10
    local.get 1
    i32.load offset=108
    local.set 13
    local.get 1
    local.get 20
    i32.store offset=108
    local.get 1
    local.get 19
    i32.store offset=104
    local.get 1
    local.get 18
    i32.store offset=100
    local.get 1
    local.get 17
    i32.store offset=96
    local.get 1
    local.get 24
    i32.store offset=124
    local.get 1
    local.get 23
    i32.store offset=120
    local.get 1
    local.get 22
    i32.store offset=116
    local.get 1
    local.get 21
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 10
    i32.const -1473132947
    i32.add
    local.get 13
    i32.const -1740746414
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 14
    local.get 1
    i32.load offset=84
    local.set 9
    local.get 1
    i32.load offset=88
    local.set 18
    local.get 1
    i32.load offset=92
    local.set 19
    local.get 1
    local.get 24
    i32.store offset=108
    local.get 1
    local.get 23
    i32.store offset=104
    local.get 1
    local.get 22
    i32.store offset=100
    local.get 1
    local.get 21
    i32.store offset=96
    local.get 1
    local.get 19
    i32.store offset=124
    local.get 1
    local.get 18
    i32.store offset=120
    local.get 1
    local.get 9
    i32.store offset=116
    local.get 1
    local.get 14
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 11
    i32.const -1084653625
    i32.add
    local.get 12
    i32.const -1341970488
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 20
    local.get 1
    i32.load offset=84
    local.set 21
    local.get 1
    i32.load offset=88
    local.set 22
    local.get 1
    i32.load offset=92
    local.set 23
    local.get 1
    local.get 4
    i32.store offset=124
    local.get 1
    local.get 15
    i32.store offset=120
    local.get 1
    local.get 3
    i32.store offset=116
    local.get 1
    local.get 2
    i32.store offset=112
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 1
    i32.load offset=76
    call $sha2::sha256_utils::sha256msg1::hc1815eb73d1dc90c
    local.get 1
    local.get 16
    local.get 1
    i32.load offset=108
    i32.add
    i32.store offset=124
    local.get 1
    local.get 7
    local.get 1
    i32.load offset=104
    i32.add
    i32.store offset=120
    local.get 1
    local.get 5
    local.get 1
    i32.load offset=100
    i32.add
    i32.store offset=116
    local.get 1
    local.get 13
    local.get 1
    i32.load offset=96
    i32.add
    i32.store offset=112
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 11
    local.get 12
    call $sha2::sha256_utils::sha256msg2::hc622d7751d1111e1
    local.get 1
    i32.load offset=96
    local.set 2
    local.get 1
    i32.load offset=100
    local.set 3
    local.get 1
    i32.load offset=104
    local.set 17
    local.get 1
    i32.load offset=108
    local.set 4
    local.get 1
    local.get 19
    i32.store offset=108
    local.get 1
    local.get 18
    i32.store offset=104
    local.get 1
    local.get 9
    i32.store offset=100
    local.get 1
    local.get 14
    i32.store offset=96
    local.get 1
    local.get 23
    i32.store offset=124
    local.get 1
    local.get 22
    i32.store offset=120
    local.get 1
    local.get 21
    i32.store offset=116
    local.get 1
    local.get 20
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 17
    i32.const -710438585
    i32.add
    local.get 4
    i32.const -958395405
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 19
    local.get 1
    i32.load offset=84
    local.set 24
    local.get 1
    i32.load offset=88
    local.set 25
    local.get 1
    i32.load offset=92
    local.set 26
    local.get 1
    local.get 23
    i32.store offset=108
    local.get 1
    local.get 22
    i32.store offset=104
    local.get 1
    local.get 21
    i32.store offset=100
    local.get 1
    local.get 20
    i32.store offset=96
    local.get 1
    local.get 26
    i32.store offset=124
    local.get 1
    local.get 25
    i32.store offset=120
    local.get 1
    local.get 24
    i32.store offset=116
    local.get 1
    local.get 19
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 2
    i32.const 338241895
    i32.add
    local.get 3
    i32.const 113926993
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 20
    local.get 1
    i32.load offset=84
    local.set 21
    local.get 1
    i32.load offset=88
    local.set 22
    local.get 1
    i32.load offset=92
    local.set 23
    local.get 1
    i32.const 120
    i32.add
    local.tee 28
    local.get 1
    i64.load offset=72
    i64.store
    local.get 1
    local.get 1
    i64.load offset=64
    i64.store offset=112
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 8
    call $sha2::sha256_utils::sha256msg1::hc1815eb73d1dc90c
    local.get 1
    local.get 10
    local.get 1
    i32.load offset=108
    i32.add
    i32.store offset=124
    local.get 1
    local.get 12
    local.get 1
    i32.load offset=104
    i32.add
    i32.store offset=120
    local.get 1
    local.get 11
    local.get 1
    i32.load offset=100
    i32.add
    i32.store offset=116
    local.get 1
    local.get 4
    local.get 1
    i32.load offset=96
    i32.add
    i32.store offset=112
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 2
    local.get 3
    call $sha2::sha256_utils::sha256msg2::hc622d7751d1111e1
    local.get 1
    i32.load offset=96
    local.set 14
    local.get 1
    i32.load offset=100
    local.set 15
    local.get 1
    i32.load offset=104
    local.set 18
    local.get 1
    i32.load offset=108
    local.set 9
    local.get 1
    local.get 26
    i32.store offset=108
    local.get 1
    local.get 25
    i32.store offset=104
    local.get 1
    local.get 24
    i32.store offset=100
    local.get 1
    local.get 19
    i32.store offset=96
    local.get 1
    local.get 23
    i32.store offset=124
    local.get 1
    local.get 22
    i32.store offset=120
    local.get 1
    local.get 21
    i32.store offset=116
    local.get 1
    local.get 20
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 18
    i32.const 773529912
    i32.add
    local.get 9
    i32.const 666307205
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 19
    local.get 1
    i32.load offset=84
    local.set 24
    local.get 1
    i32.load offset=88
    local.set 25
    local.get 1
    i32.load offset=92
    local.set 26
    local.get 1
    local.get 23
    i32.store offset=108
    local.get 1
    local.get 22
    i32.store offset=104
    local.get 1
    local.get 21
    i32.store offset=100
    local.get 1
    local.get 20
    i32.store offset=96
    local.get 1
    local.get 26
    i32.store offset=124
    local.get 1
    local.get 25
    i32.store offset=120
    local.get 1
    local.get 24
    i32.store offset=116
    local.get 1
    local.get 19
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 14
    i32.const 1396182291
    i32.add
    local.get 15
    i32.const 1294757372
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 20
    local.get 1
    i32.load offset=84
    local.set 21
    local.get 1
    i32.load offset=88
    local.set 22
    local.get 1
    i32.load offset=92
    local.set 23
    local.get 1
    local.get 8
    i32.store offset=124
    local.get 1
    local.get 16
    i32.store offset=120
    local.get 1
    local.get 7
    i32.store offset=116
    local.get 1
    local.get 5
    i32.store offset=112
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 13
    call $sha2::sha256_utils::sha256msg1::hc1815eb73d1dc90c
    local.get 1
    local.get 17
    local.get 1
    i32.load offset=108
    i32.add
    i32.store offset=124
    local.get 1
    local.get 3
    local.get 1
    i32.load offset=104
    i32.add
    i32.store offset=120
    local.get 1
    local.get 2
    local.get 1
    i32.load offset=100
    i32.add
    i32.store offset=116
    local.get 1
    local.get 9
    local.get 1
    i32.load offset=96
    i32.add
    i32.store offset=112
    local.get 1
    i32.const 64
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 14
    local.get 15
    call $sha2::sha256_utils::sha256msg2::hc622d7751d1111e1
    local.get 1
    local.get 26
    i32.store offset=108
    local.get 1
    local.get 25
    i32.store offset=104
    local.get 1
    local.get 24
    i32.store offset=100
    local.get 1
    local.get 19
    i32.store offset=96
    local.get 1
    local.get 23
    i32.store offset=124
    local.get 1
    local.get 22
    i32.store offset=120
    local.get 1
    local.get 21
    i32.store offset=116
    local.get 1
    local.get 20
    i32.store offset=112
    local.get 1
    i32.load offset=64
    local.set 16
    local.get 1
    i32.load offset=68
    local.set 19
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 1
    i32.load offset=72
    local.tee 29
    i32.const 1986661051
    i32.add
    local.get 1
    i32.load offset=76
    local.tee 5
    i32.const 1695183700
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 24
    local.get 1
    i32.load offset=84
    local.set 25
    local.get 1
    i32.load offset=88
    local.set 26
    local.get 1
    i32.load offset=92
    local.set 27
    local.get 1
    local.get 23
    i32.store offset=108
    local.get 1
    local.get 22
    i32.store offset=104
    local.get 1
    local.get 21
    i32.store offset=100
    local.get 1
    local.get 20
    i32.store offset=96
    local.get 1
    local.get 27
    i32.store offset=124
    local.get 1
    local.get 26
    i32.store offset=120
    local.get 1
    local.get 25
    i32.store offset=116
    local.get 1
    local.get 24
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 16
    i32.const -1838011259
    i32.add
    local.get 19
    i32.const -2117940946
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 20
    local.get 1
    i32.load offset=84
    local.set 21
    local.get 1
    i32.load offset=88
    local.set 22
    local.get 1
    i32.load offset=92
    local.set 23
    local.get 1
    local.get 13
    i32.store offset=124
    local.get 1
    local.get 10
    i32.store offset=120
    local.get 1
    local.get 12
    i32.store offset=116
    local.get 1
    local.get 11
    i32.store offset=112
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 4
    call $sha2::sha256_utils::sha256msg1::hc1815eb73d1dc90c
    local.get 1
    local.get 18
    local.get 1
    i32.load offset=108
    i32.add
    i32.store offset=124
    local.get 1
    local.get 15
    local.get 1
    i32.load offset=104
    i32.add
    i32.store offset=120
    local.get 1
    local.get 14
    local.get 1
    i32.load offset=100
    i32.add
    i32.store offset=116
    local.get 1
    local.get 5
    local.get 1
    i32.load offset=96
    i32.add
    i32.store offset=112
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 16
    local.get 19
    call $sha2::sha256_utils::sha256msg2::hc622d7751d1111e1
    local.get 1
    i32.load offset=96
    local.set 5
    local.get 1
    i32.load offset=100
    local.set 7
    local.get 1
    i32.load offset=104
    local.set 11
    local.get 1
    i32.load offset=108
    local.set 8
    local.get 1
    local.get 27
    i32.store offset=108
    local.get 1
    local.get 26
    i32.store offset=104
    local.get 1
    local.get 25
    i32.store offset=100
    local.get 1
    local.get 24
    i32.store offset=96
    local.get 1
    local.get 23
    i32.store offset=124
    local.get 1
    local.get 22
    i32.store offset=120
    local.get 1
    local.get 21
    i32.store offset=116
    local.get 1
    local.get 20
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 11
    i32.const -1474664885
    i32.add
    local.get 8
    i32.const -1564481375
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 13
    local.get 1
    i32.load offset=84
    local.set 10
    local.get 1
    i32.load offset=88
    local.set 24
    local.get 1
    i32.load offset=92
    local.set 25
    local.get 1
    local.get 23
    i32.store offset=108
    local.get 1
    local.get 22
    i32.store offset=104
    local.get 1
    local.get 21
    i32.store offset=100
    local.get 1
    local.get 20
    i32.store offset=96
    local.get 1
    local.get 25
    i32.store offset=124
    local.get 1
    local.get 24
    i32.store offset=120
    local.get 1
    local.get 10
    i32.store offset=116
    local.get 1
    local.get 13
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 5
    i32.const -949202525
    i32.add
    local.get 7
    i32.const -1035236496
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 20
    local.get 1
    i32.load offset=84
    local.set 21
    local.get 1
    i32.load offset=88
    local.set 22
    local.get 1
    i32.load offset=92
    local.set 23
    local.get 1
    local.get 4
    i32.store offset=124
    local.get 1
    local.get 17
    i32.store offset=120
    local.get 1
    local.get 3
    i32.store offset=116
    local.get 1
    local.get 2
    i32.store offset=112
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 9
    call $sha2::sha256_utils::sha256msg1::hc1815eb73d1dc90c
    local.get 1
    local.get 29
    local.get 1
    i32.load offset=108
    i32.add
    i32.store offset=124
    local.get 1
    local.get 19
    local.get 1
    i32.load offset=104
    i32.add
    i32.store offset=120
    local.get 1
    local.get 16
    local.get 1
    i32.load offset=100
    i32.add
    i32.store offset=116
    local.get 1
    local.get 8
    local.get 1
    i32.load offset=96
    i32.add
    i32.store offset=112
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 5
    local.get 7
    call $sha2::sha256_utils::sha256msg2::hc622d7751d1111e1
    local.get 1
    i32.load offset=96
    local.set 2
    local.get 1
    i32.load offset=100
    local.set 3
    local.get 1
    i32.load offset=104
    local.set 12
    local.get 1
    i32.load offset=108
    local.set 4
    local.get 1
    local.get 25
    i32.store offset=108
    local.get 1
    local.get 24
    i32.store offset=104
    local.get 1
    local.get 10
    i32.store offset=100
    local.get 1
    local.get 13
    i32.store offset=96
    local.get 1
    local.get 23
    i32.store offset=124
    local.get 1
    local.get 22
    i32.store offset=120
    local.get 1
    local.get 21
    i32.store offset=116
    local.get 1
    local.get 20
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 12
    i32.const -694614492
    i32.add
    local.get 4
    i32.const -778901479
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 10
    local.get 1
    i32.load offset=84
    local.set 16
    local.get 1
    i32.load offset=88
    local.set 17
    local.get 1
    i32.load offset=92
    local.set 19
    local.get 1
    local.get 23
    i32.store offset=108
    local.get 1
    local.get 22
    i32.store offset=104
    local.get 1
    local.get 21
    i32.store offset=100
    local.get 1
    local.get 20
    i32.store offset=96
    local.get 1
    local.get 19
    i32.store offset=124
    local.get 1
    local.get 17
    i32.store offset=120
    local.get 1
    local.get 16
    i32.store offset=116
    local.get 1
    local.get 10
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 2
    i32.const 275423344
    i32.add
    local.get 3
    i32.const -200395387
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 20
    local.get 1
    i32.load offset=84
    local.set 21
    local.get 1
    i32.load offset=88
    local.set 22
    local.get 1
    i32.load offset=92
    local.set 23
    local.get 1
    local.get 9
    i32.store offset=124
    local.get 1
    local.get 18
    i32.store offset=120
    local.get 1
    local.get 15
    i32.store offset=116
    local.get 1
    local.get 14
    i32.store offset=112
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 1
    i32.load offset=76
    call $sha2::sha256_utils::sha256msg1::hc1815eb73d1dc90c
    local.get 1
    local.get 11
    local.get 1
    i32.load offset=108
    i32.add
    i32.store offset=124
    local.get 1
    local.get 7
    local.get 1
    i32.load offset=104
    i32.add
    i32.store offset=120
    local.get 1
    local.get 5
    local.get 1
    i32.load offset=100
    i32.add
    i32.store offset=116
    local.get 1
    local.get 4
    local.get 1
    i32.load offset=96
    i32.add
    i32.store offset=112
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 2
    local.get 3
    call $sha2::sha256_utils::sha256msg2::hc622d7751d1111e1
    local.get 1
    i32.load offset=96
    local.set 13
    local.get 1
    i32.load offset=100
    local.set 14
    local.get 1
    i32.load offset=104
    local.set 18
    local.get 1
    i32.load offset=108
    local.set 15
    local.get 1
    local.get 19
    i32.store offset=108
    local.get 1
    local.get 17
    i32.store offset=104
    local.get 1
    local.get 16
    i32.store offset=100
    local.get 1
    local.get 10
    i32.store offset=96
    local.get 1
    local.get 23
    i32.store offset=124
    local.get 1
    local.get 22
    i32.store offset=120
    local.get 1
    local.get 21
    i32.store offset=116
    local.get 1
    local.get 20
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 18
    i32.const 506948616
    i32.add
    local.get 15
    i32.const 430227734
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 16
    local.get 1
    i32.load offset=84
    local.set 17
    local.get 1
    i32.load offset=88
    local.set 19
    local.get 1
    i32.load offset=92
    local.set 24
    local.get 1
    local.get 23
    i32.store offset=108
    local.get 1
    local.get 22
    i32.store offset=104
    local.get 1
    local.get 21
    i32.store offset=100
    local.get 1
    local.get 20
    i32.store offset=96
    local.get 1
    local.get 24
    i32.store offset=124
    local.get 1
    local.get 19
    i32.store offset=120
    local.get 1
    local.get 17
    i32.store offset=116
    local.get 1
    local.get 16
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 13
    i32.const 883997877
    i32.add
    local.get 14
    i32.const 659060556
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 20
    local.get 1
    i32.load offset=84
    local.set 21
    local.get 1
    i32.load offset=88
    local.set 22
    local.get 1
    i32.load offset=92
    local.set 23
    local.get 28
    local.get 1
    i64.load offset=72
    i64.store
    local.get 1
    local.get 1
    i64.load offset=64
    i64.store offset=112
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 8
    call $sha2::sha256_utils::sha256msg1::hc1815eb73d1dc90c
    local.get 1
    local.get 12
    local.get 1
    i32.load offset=108
    i32.add
    i32.store offset=124
    local.get 1
    local.get 3
    local.get 1
    i32.load offset=104
    i32.add
    i32.store offset=120
    local.get 1
    local.get 2
    local.get 1
    i32.load offset=100
    i32.add
    i32.store offset=116
    local.get 1
    local.get 15
    local.get 1
    i32.load offset=96
    i32.add
    i32.store offset=112
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 13
    local.get 14
    call $sha2::sha256_utils::sha256msg2::hc622d7751d1111e1
    local.get 1
    i32.load offset=96
    local.set 9
    local.get 1
    i32.load offset=100
    local.set 10
    local.get 1
    i32.load offset=104
    local.set 25
    local.get 1
    i32.load offset=108
    local.set 26
    local.get 1
    local.get 24
    i32.store offset=108
    local.get 1
    local.get 19
    i32.store offset=104
    local.get 1
    local.get 17
    i32.store offset=100
    local.get 1
    local.get 16
    i32.store offset=96
    local.get 1
    local.get 23
    i32.store offset=124
    local.get 1
    local.get 22
    i32.store offset=120
    local.get 1
    local.get 21
    i32.store offset=116
    local.get 1
    local.get 20
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 25
    i32.const 1322822218
    i32.add
    local.get 26
    i32.const 958139571
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 16
    local.get 1
    i32.load offset=84
    local.set 17
    local.get 1
    i32.load offset=88
    local.set 19
    local.get 1
    i32.load offset=92
    local.set 24
    local.get 1
    local.get 23
    i32.store offset=108
    local.get 1
    local.get 22
    i32.store offset=104
    local.get 1
    local.get 21
    i32.store offset=100
    local.get 1
    local.get 20
    i32.store offset=96
    local.get 1
    local.get 24
    i32.store offset=124
    local.get 1
    local.get 19
    i32.store offset=120
    local.get 1
    local.get 17
    i32.store offset=116
    local.get 1
    local.get 16
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 9
    i32.const 1747873779
    i32.add
    local.get 10
    i32.const 1537002063
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 20
    local.get 1
    i32.load offset=84
    local.set 21
    local.get 1
    i32.load offset=88
    local.set 22
    local.get 1
    i32.load offset=92
    local.set 23
    local.get 1
    local.get 8
    i32.store offset=124
    local.get 1
    local.get 11
    i32.store offset=120
    local.get 1
    local.get 7
    i32.store offset=116
    local.get 1
    local.get 5
    i32.store offset=112
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 4
    call $sha2::sha256_utils::sha256msg1::hc1815eb73d1dc90c
    local.get 1
    local.get 18
    local.get 1
    i32.load offset=108
    i32.add
    i32.store offset=124
    local.get 1
    local.get 14
    local.get 1
    i32.load offset=104
    i32.add
    i32.store offset=120
    local.get 1
    local.get 13
    local.get 1
    i32.load offset=100
    i32.add
    i32.store offset=116
    local.get 1
    local.get 26
    local.get 1
    i32.load offset=96
    i32.add
    i32.store offset=112
    local.get 1
    i32.const 64
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 9
    local.get 10
    call $sha2::sha256_utils::sha256msg2::hc622d7751d1111e1
    local.get 1
    local.get 24
    i32.store offset=108
    local.get 1
    local.get 19
    i32.store offset=104
    local.get 1
    local.get 17
    i32.store offset=100
    local.get 1
    local.get 16
    i32.store offset=96
    local.get 1
    local.get 23
    i32.store offset=124
    local.get 1
    local.get 22
    i32.store offset=120
    local.get 1
    local.get 21
    i32.store offset=116
    local.get 1
    local.get 20
    i32.store offset=112
    local.get 1
    i32.load offset=64
    local.set 5
    local.get 1
    i32.load offset=68
    local.set 7
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 1
    i32.load offset=72
    i32.const 2024104815
    i32.add
    local.get 1
    i32.load offset=76
    local.tee 24
    i32.const 1955562222
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 8
    local.get 1
    i32.load offset=84
    local.set 11
    local.get 1
    i32.load offset=88
    local.set 13
    local.get 1
    i32.load offset=92
    local.set 14
    local.get 1
    local.get 23
    i32.store offset=108
    local.get 1
    local.get 22
    i32.store offset=104
    local.get 1
    local.get 21
    i32.store offset=100
    local.get 1
    local.get 20
    i32.store offset=96
    local.get 1
    local.get 14
    i32.store offset=124
    local.get 1
    local.get 13
    i32.store offset=120
    local.get 1
    local.get 11
    i32.store offset=116
    local.get 1
    local.get 8
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 5
    i32.const -1933114872
    i32.add
    local.get 7
    i32.const -2067236844
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 16
    local.get 1
    i32.load offset=84
    local.set 17
    local.get 1
    i32.load offset=88
    local.set 18
    local.get 1
    i32.load offset=92
    local.set 19
    local.get 1
    local.get 4
    i32.store offset=124
    local.get 1
    local.get 12
    i32.store offset=120
    local.get 1
    local.get 3
    i32.store offset=116
    local.get 1
    local.get 2
    i32.store offset=112
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 15
    call $sha2::sha256_utils::sha256msg1::hc1815eb73d1dc90c
    local.get 1
    local.get 25
    local.get 1
    i32.load offset=108
    i32.add
    i32.store offset=124
    local.get 1
    local.get 10
    local.get 1
    i32.load offset=104
    i32.add
    i32.store offset=120
    local.get 1
    local.get 9
    local.get 1
    i32.load offset=100
    i32.add
    i32.store offset=116
    local.get 1
    local.get 24
    local.get 1
    i32.load offset=96
    i32.add
    i32.store offset=112
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 5
    local.get 7
    call $sha2::sha256_utils::sha256msg2::hc622d7751d1111e1
    local.get 1
    i32.load offset=96
    local.set 7
    local.get 1
    i32.load offset=100
    local.set 12
    local.get 1
    i32.load offset=104
    local.set 2
    local.get 1
    i32.load offset=108
    local.set 3
    local.get 1
    local.get 14
    i32.store offset=108
    local.get 1
    local.get 13
    i32.store offset=104
    local.get 1
    local.get 11
    i32.store offset=100
    local.get 1
    local.get 8
    i32.store offset=96
    local.get 1
    local.get 19
    i32.store offset=124
    local.get 1
    local.get 18
    i32.store offset=120
    local.get 1
    local.get 17
    i32.store offset=116
    local.get 1
    local.get 16
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 2
    i32.const -1538233109
    i32.add
    local.get 3
    i32.const -1866530822
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=80
    local.set 2
    local.get 1
    i32.load offset=84
    local.set 3
    local.get 1
    i32.load offset=88
    local.set 4
    local.get 1
    i32.load offset=92
    local.set 5
    local.get 1
    local.get 19
    i32.store offset=108
    local.get 1
    local.get 18
    i32.store offset=104
    local.get 1
    local.get 17
    i32.store offset=100
    local.get 1
    local.get 16
    i32.store offset=96
    local.get 1
    local.get 5
    i32.store offset=124
    local.get 1
    local.get 4
    i32.store offset=120
    local.get 1
    local.get 3
    i32.store offset=116
    local.get 1
    local.get 2
    i32.store offset=112
    local.get 1
    i32.const 80
    i32.add
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 112
    i32.add
    local.get 7
    i32.const -965641998
    i32.add
    local.get 12
    i32.const -1090935817
    i32.add
    call $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3
    local.get 1
    i32.load offset=92
    local.set 7
    local.get 1
    i32.load offset=88
    local.set 8
    local.get 1
    i32.load offset=84
    local.set 11
    local.get 0
    local.get 0
    i32.load
    local.get 1
    i32.load offset=80
    i32.add
    i32.store
    local.get 0
    local.get 11
    local.get 0
    i32.load offset=4
    i32.add
    i32.store offset=4
    local.get 0
    local.get 2
    local.get 0
    i32.load offset=8
    i32.add
    i32.store offset=8
    local.get 0
    local.get 3
    local.get 0
    i32.load offset=12
    i32.add
    i32.store offset=12
    local.get 0
    local.get 8
    local.get 0
    i32.load offset=16
    i32.add
    i32.store offset=16
    local.get 0
    local.get 7
    local.get 0
    i32.load offset=20
    i32.add
    i32.store offset=20
    local.get 0
    local.get 4
    local.get 0
    i32.load offset=24
    i32.add
    i32.store offset=24
    local.get 0
    local.get 5
    local.get 0
    i32.load offset=28
    i32.add
    i32.store offset=28
    local.get 1
    i32.const 128
    i32.add
    global.set 0)
  (func $core::slice::<impl__T_>::copy_from_slice::h7af944ad26810922 (type 2) (param i32 i32 i32 i32)
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
    i32.const 9
    i32.store
    local.get 4
    i32.const 52
    i32.add
    i32.const 11
    i32.store
    local.get 4
    i32.const 16
    i32.add
    i32.const 20
    i32.add
    i32.const 3
    i32.store
    local.get 4
    i32.const 37700
    i32.store offset=88
    local.get 4
    i64.const 1
    i64.store offset=76 align=4
    local.get 4
    i32.const 38080
    i32.store offset=72
    local.get 4
    i32.const 11
    i32.store offset=44
    local.get 4
    i64.const 3
    i64.store offset=20 align=4
    local.get 4
    i32.const 38056
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
    i32.const 38088
    call $core::panicking::panic_fmt::h8a97af3c4a58de81
    unreachable)
  (func $<&T_as_core::fmt::Debug>::fmt::hc979c2e565dbed48 (type 1) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load
        local.tee 2
        i32.const 16
        i32.and
        br_if 0 (;@2;)
        local.get 0
        i32.load
        local.set 0
        local.get 2
        i32.const 32
        i32.and
        br_if 1 (;@1;)
        local.get 0
        i64.extend_i32_u
        local.get 1
        call $core::fmt::num::imp::fmt_u64::h410eebb512c98a23
        return
      end
      local.get 0
      i32.load
      local.get 1
      call $core::fmt::num::<impl_core::fmt::LowerHex_for_i32>::fmt::h4cbe3cf55e7a5b07
      return
    end
    local.get 0
    local.get 1
    call $core::fmt::num::<impl_core::fmt::UpperHex_for_i32>::fmt::hd7bcfce8448f99a3)
  (func $core::fmt::num::<impl_core::fmt::LowerHex_for_i32>::fmt::h4cbe3cf55e7a5b07 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 2
    global.set 0
    i32.const 0
    local.set 3
    loop  ;; label = @1
      local.get 2
      local.get 3
      i32.add
      i32.const 127
      i32.add
      local.get 0
      i32.const 15
      i32.and
      local.tee 4
      i32.const 48
      i32.or
      local.get 4
      i32.const 87
      i32.add
      local.get 4
      i32.const 10
      i32.lt_u
      select
      i32.store8
      local.get 3
      i32.const -1
      i32.add
      local.set 3
      local.get 0
      i32.const 4
      i32.shr_u
      local.tee 0
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 3
      i32.const 128
      i32.add
      local.tee 0
      i32.const 129
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 34485
      i32.const 2
      local.get 2
      local.get 3
      i32.add
      i32.const 128
      i32.add
      i32.const 0
      local.get 3
      i32.sub
      call $core::fmt::Formatter::pad_integral::hedb0fe99a5f5806f
      local.set 3
      local.get 2
      i32.const 128
      i32.add
      global.set 0
      local.get 3
      return
    end
    local.get 0
    i32.const 128
    call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
    unreachable)
  (func $core::fmt::num::<impl_core::fmt::UpperHex_for_i32>::fmt::hd7bcfce8448f99a3 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 2
    global.set 0
    i32.const 0
    local.set 3
    loop  ;; label = @1
      local.get 2
      local.get 3
      i32.add
      i32.const 127
      i32.add
      local.get 0
      i32.const 15
      i32.and
      local.tee 4
      i32.const 48
      i32.or
      local.get 4
      i32.const 55
      i32.add
      local.get 4
      i32.const 10
      i32.lt_u
      select
      i32.store8
      local.get 3
      i32.const -1
      i32.add
      local.set 3
      local.get 0
      i32.const 4
      i32.shr_u
      local.tee 0
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 3
      i32.const 128
      i32.add
      local.tee 0
      i32.const 129
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 34485
      i32.const 2
      local.get 2
      local.get 3
      i32.add
      i32.const 128
      i32.add
      i32.const 0
      local.get 3
      i32.sub
      call $core::fmt::Formatter::pad_integral::hedb0fe99a5f5806f
      local.set 3
      local.get 2
      i32.const 128
      i32.add
      global.set 0
      local.get 3
      return
    end
    local.get 0
    i32.const 128
    call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
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
  (func $sha2::sha256_utils::sha256_digest_round_x2::ha6b5c3fd5029f3f3 (type 13) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 2
    i32.load offset=8
    local.tee 5
    i32.const 6
    i32.rotr
    local.get 5
    i32.const 11
    i32.rotr
    i32.xor
    local.get 5
    i32.const 25
    i32.rotr
    i32.xor
    local.get 4
    i32.add
    local.get 1
    i32.load offset=12
    i32.add
    local.get 1
    i32.load offset=8
    local.tee 6
    local.get 2
    i32.load offset=12
    local.tee 7
    i32.xor
    local.get 5
    i32.and
    local.get 6
    i32.xor
    i32.add
    local.tee 8
    local.get 1
    i32.load offset=4
    i32.add
    local.tee 4
    i32.store offset=12
    local.get 0
    local.get 1
    i32.load
    local.tee 9
    local.get 2
    i32.load
    local.tee 1
    i32.and
    local.get 2
    i32.load offset=4
    local.tee 10
    local.get 1
    i32.and
    local.tee 11
    i32.xor
    local.get 9
    local.get 10
    i32.and
    i32.xor
    local.get 1
    i32.const 2
    i32.rotr
    local.get 1
    i32.const 13
    i32.rotr
    i32.xor
    local.get 1
    i32.const 22
    i32.rotr
    i32.xor
    i32.add
    local.get 8
    i32.add
    local.tee 2
    i32.store offset=4
    local.get 0
    local.get 9
    local.get 6
    local.get 3
    i32.add
    local.get 7
    local.get 4
    local.get 7
    local.get 5
    i32.xor
    i32.and
    i32.xor
    i32.add
    local.get 4
    i32.const 6
    i32.rotr
    local.get 4
    i32.const 11
    i32.rotr
    i32.xor
    local.get 4
    i32.const 25
    i32.rotr
    i32.xor
    i32.add
    local.tee 5
    i32.add
    i32.store offset=8
    local.get 0
    local.get 2
    i32.const 2
    i32.rotr
    local.get 2
    i32.const 13
    i32.rotr
    i32.xor
    local.get 2
    i32.const 22
    i32.rotr
    i32.xor
    local.get 2
    local.get 10
    local.get 1
    i32.xor
    i32.and
    local.get 11
    i32.xor
    i32.add
    local.get 5
    i32.add
    i32.store)
  (func $sha2::sha256_utils::sha256msg1::hc1815eb73d1dc90c (type 9) (param i32 i32 i32)
    (local i32)
    local.get 0
    local.get 2
    i32.const 25
    i32.rotl
    local.get 2
    i32.const 3
    i32.shr_u
    i32.xor
    local.get 2
    i32.const 14
    i32.rotl
    i32.xor
    local.get 1
    i32.load
    local.tee 2
    i32.add
    i32.store
    local.get 0
    local.get 1
    i32.load offset=8
    local.tee 3
    i32.const 25
    i32.rotl
    local.get 3
    i32.const 3
    i32.shr_u
    i32.xor
    local.get 3
    i32.const 14
    i32.rotl
    i32.xor
    local.get 1
    i32.load offset=12
    i32.add
    i32.store offset=12
    local.get 0
    local.get 3
    local.get 1
    i32.load offset=4
    local.tee 1
    i32.const 25
    i32.rotl
    local.get 1
    i32.const 3
    i32.shr_u
    i32.xor
    local.get 1
    i32.const 14
    i32.rotl
    i32.xor
    i32.add
    i32.store offset=8
    local.get 0
    local.get 1
    local.get 2
    i32.const 25
    i32.rotl
    local.get 2
    i32.const 3
    i32.shr_u
    i32.xor
    local.get 2
    i32.const 14
    i32.rotl
    i32.xor
    i32.add
    i32.store offset=4)
  (func $sha2::sha256_utils::sha256msg2::hc622d7751d1111e1 (type 2) (param i32 i32 i32 i32)
    local.get 0
    local.get 3
    i32.const 17
    i32.rotr
    local.get 3
    i32.const 19
    i32.rotr
    i32.xor
    local.get 3
    i32.const 10
    i32.shr_u
    i32.xor
    local.get 1
    i32.load offset=12
    i32.add
    local.tee 3
    i32.store offset=12
    local.get 0
    local.get 2
    i32.const 17
    i32.rotr
    local.get 2
    i32.const 19
    i32.rotr
    i32.xor
    local.get 2
    i32.const 10
    i32.shr_u
    i32.xor
    local.get 1
    i32.load offset=8
    i32.add
    local.tee 2
    i32.store offset=8
    local.get 0
    local.get 3
    i32.const 17
    i32.rotr
    local.get 3
    i32.const 19
    i32.rotr
    i32.xor
    local.get 3
    i32.const 10
    i32.shr_u
    i32.xor
    local.get 1
    i32.load offset=4
    i32.add
    i32.store offset=4
    local.get 0
    local.get 2
    i32.const 17
    i32.rotr
    local.get 2
    i32.const 19
    i32.rotr
    i32.xor
    local.get 2
    i32.const 10
    i32.shr_u
    i32.xor
    local.get 1
    i32.load
    i32.add
    i32.store)
  (func $alloc::raw_vec::RawVec<T_A>::reserve::hfdb4cd00ff5da4cf (type 9) (param i32 i32 i32)
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
              i32.const 1
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
  (func $alloc::raw_vec::capacity_overflow::hf2acb48acb5ae20a (type 8)
    i32.const 38104
    call $core::panicking::panic::hb7cb5b256fd27bcf
    unreachable)
  (func $<core::fmt::Error_as_core::fmt::Debug>::fmt::h40371bb409cc3d1e (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=24
    i32.const 37674
    i32.const 5
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 0))
  (func $<&T_as_core::fmt::Display>::fmt::hae9e5dcceb380088 (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $core::fmt::Formatter::pad::h30d888b7844d66df)
  (func $core::ptr::real_drop_in_place::hd37471b2036f178a (type 7) (param i32))
  (func $<&mut_W_as_core::fmt::Write>::write_str::hc35dec1d0a390ac3 (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 0
    local.get 0
    i32.load offset=8
    local.get 2
    call $alloc::raw_vec::RawVec<T_A>::reserve::hfdb4cd00ff5da4cf
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
    local.get 1
    local.get 2
    call $memcpy
    drop
    i32.const 0)
  (func $<&mut_W_as_core::fmt::Write>::write_char::h33b264b739b2dbdb (type 1) (param i32 i32) (result i32)
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
          call $alloc::raw_vec::RawVec<T_A>::reserve::hfdb4cd00ff5da4cf
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
        local.tee 0
        local.get 0
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
      local.get 0
      i32.load offset=8
      local.get 1
      call $alloc::raw_vec::RawVec<T_A>::reserve::hfdb4cd00ff5da4cf
      local.get 0
      local.get 0
      i32.load offset=8
      local.tee 3
      local.get 1
      i32.add
      i32.store offset=8
      local.get 3
      local.get 0
      i32.load
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call $memcpy
      drop
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    i32.const 0)
  (func $<&mut_W_as_core::fmt::Write>::write_fmt::he2b90737b87437a9 (type 1) (param i32 i32) (result i32)
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
    i32.const 37920
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
  (func $core::fmt::Formatter::pad::h30d888b7844d66df (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=16
    local.set 3
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
                      i32.load offset=8
                      local.tee 4
                      i32.const 1
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 3
                      br_if 1 (;@8;)
                      br 6 (;@3;)
                    end
                    local.get 3
                    i32.eqz
                    br_if 1 (;@7;)
                  end
                  local.get 2
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 1
                  local.get 2
                  i32.add
                  local.set 5
                  local.get 0
                  i32.const 20
                  i32.add
                  i32.load
                  i32.const -1
                  i32.xor
                  local.set 6
                  i32.const 0
                  local.set 7
                  local.get 1
                  local.set 3
                  local.get 1
                  local.set 8
                  loop  ;; label = @8
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 9
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 3
                              i32.load8_s
                              local.tee 10
                              i32.const 0
                              i32.lt_s
                              br_if 0 (;@13;)
                              local.get 10
                              i32.const 255
                              i32.and
                              local.set 10
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 9
                                local.get 5
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 9
                                i32.load8_u
                                i32.const 63
                                i32.and
                                local.set 11
                                local.get 3
                                i32.const 2
                                i32.add
                                local.tee 3
                                local.set 9
                                br 1 (;@13;)
                              end
                              i32.const 0
                              local.set 11
                              local.get 5
                              local.set 3
                            end
                            local.get 10
                            i32.const 31
                            i32.and
                            local.set 12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 10
                                  i32.const 255
                                  i32.and
                                  local.tee 10
                                  i32.const 224
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                  local.get 3
                                  local.get 5
                                  i32.eq
                                  br_if 1 (;@14;)
                                  local.get 3
                                  i32.load8_u
                                  i32.const 63
                                  i32.and
                                  local.set 13
                                  local.get 3
                                  i32.const 1
                                  i32.add
                                  local.tee 9
                                  local.set 14
                                  br 2 (;@13;)
                                end
                                local.get 11
                                local.get 12
                                i32.const 6
                                i32.shl
                                i32.or
                                local.set 10
                                br 2 (;@12;)
                              end
                              i32.const 0
                              local.set 13
                              local.get 5
                              local.set 14
                            end
                            local.get 13
                            local.get 11
                            i32.const 6
                            i32.shl
                            i32.or
                            local.set 11
                            block  ;; label = @13
                              local.get 10
                              i32.const 240
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 14
                              local.get 5
                              i32.eq
                              br_if 2 (;@11;)
                              local.get 14
                              i32.const 1
                              i32.add
                              local.set 3
                              local.get 14
                              i32.load8_u
                              i32.const 63
                              i32.and
                              local.set 10
                              br 3 (;@10;)
                            end
                            local.get 11
                            local.get 12
                            i32.const 12
                            i32.shl
                            i32.or
                            local.set 10
                          end
                          local.get 9
                          local.set 3
                          local.get 6
                          i32.const 1
                          i32.add
                          local.tee 6
                          br_if 2 (;@9;)
                          br 6 (;@5;)
                        end
                        i32.const 0
                        local.set 10
                        local.get 9
                        local.set 3
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
                      br_if 5 (;@4;)
                      local.get 6
                      i32.const 1
                      i32.add
                      local.tee 6
                      i32.eqz
                      br_if 4 (;@5;)
                    end
                    local.get 7
                    local.get 8
                    i32.sub
                    local.get 3
                    i32.add
                    local.set 7
                    local.get 3
                    local.set 8
                    local.get 5
                    local.get 3
                    i32.ne
                    br_if 0 (;@8;)
                    br 4 (;@4;)
                  end
                end
                local.get 0
                i32.load offset=24
                local.get 1
                local.get 2
                local.get 0
                i32.const 28
                i32.add
                i32.load
                i32.load offset=12
                call_indirect (type 0)
                local.set 3
                br 5 (;@1;)
              end
              i32.const 0
              local.set 2
              local.get 4
              br_if 2 (;@3;)
              br 3 (;@2;)
            end
            local.get 10
            i32.const 1114112
            i32.eq
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 7
                i32.eqz
                br_if 0 (;@6;)
                local.get 7
                local.get 2
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                local.set 3
                local.get 7
                local.get 2
                i32.ge_u
                br_if 1 (;@5;)
                local.get 1
                local.get 7
                i32.add
                i32.load8_s
                i32.const -64
                i32.lt_s
                br_if 1 (;@5;)
              end
              local.get 1
              local.set 3
            end
            local.get 7
            local.get 2
            local.get 3
            select
            local.set 2
            local.get 3
            local.get 1
            local.get 3
            select
            local.set 1
          end
          local.get 4
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 0
        local.set 9
        block  ;; label = @3
          local.get 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.set 10
          local.get 1
          local.set 3
          loop  ;; label = @4
            local.get 9
            local.get 3
            i32.load8_u
            i32.const 192
            i32.and
            i32.const 128
            i32.eq
            i32.add
            local.set 9
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 10
            i32.const -1
            i32.add
            local.tee 10
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                local.get 9
                i32.sub
                local.get 0
                i32.const 12
                i32.add
                i32.load
                local.tee 6
                i32.ge_u
                br_if 0 (;@6;)
                i32.const 0
                local.set 9
                block  ;; label = @7
                  local.get 2
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 9
                  local.get 2
                  local.set 10
                  local.get 1
                  local.set 3
                  loop  ;; label = @8
                    local.get 9
                    local.get 3
                    i32.load8_u
                    i32.const 192
                    i32.and
                    i32.const 128
                    i32.eq
                    i32.add
                    local.set 9
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 3
                    local.get 10
                    i32.const -1
                    i32.add
                    local.tee 10
                    br_if 0 (;@8;)
                  end
                end
                local.get 9
                local.get 2
                i32.sub
                local.get 6
                i32.add
                local.set 9
                i32.const 0
                local.get 0
                i32.load8_u offset=48
                local.tee 3
                local.get 3
                i32.const 3
                i32.eq
                select
                local.tee 3
                i32.const 3
                i32.and
                i32.eqz
                br_if 1 (;@5;)
                local.get 3
                i32.const 2
                i32.eq
                br_if 2 (;@4;)
                i32.const 0
                local.set 8
                br 3 (;@3;)
              end
              local.get 0
              i32.load offset=24
              local.get 1
              local.get 2
              local.get 0
              i32.const 28
              i32.add
              i32.load
              i32.load offset=12
              call_indirect (type 0)
              return
            end
            local.get 9
            local.set 8
            i32.const 0
            local.set 9
            br 1 (;@3;)
          end
          local.get 9
          i32.const 1
          i32.add
          i32.const 1
          i32.shr_u
          local.set 8
          local.get 9
          i32.const 1
          i32.shr_u
          local.set 9
        end
        i32.const -1
        local.set 3
        local.get 0
        i32.const 4
        i32.add
        local.set 10
        local.get 0
        i32.const 24
        i32.add
        local.set 6
        local.get 0
        i32.const 28
        i32.add
        local.set 7
        block  ;; label = @3
          loop  ;; label = @4
            local.get 3
            i32.const 1
            i32.add
            local.tee 3
            local.get 9
            i32.ge_u
            br_if 1 (;@3;)
            local.get 6
            i32.load
            local.get 10
            i32.load
            local.get 7
            i32.load
            i32.load offset=16
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 9
        i32.const 1
        local.set 3
        local.get 0
        i32.const 24
        i32.add
        local.tee 10
        i32.load
        local.get 1
        local.get 2
        local.get 0
        i32.const 28
        i32.add
        local.tee 6
        i32.load
        i32.load offset=12
        call_indirect (type 0)
        br_if 1 (;@1;)
        local.get 10
        i32.load
        local.set 10
        i32.const -1
        local.set 3
        local.get 6
        i32.load
        i32.const 16
        i32.add
        local.set 6
        block  ;; label = @3
          loop  ;; label = @4
            local.get 3
            i32.const 1
            i32.add
            local.tee 3
            local.get 8
            i32.ge_u
            br_if 1 (;@3;)
            local.get 10
            local.get 9
            local.get 6
            i32.load
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        i32.const 0
        return
      end
      local.get 0
      i32.load offset=24
      local.get 1
      local.get 2
      local.get 0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 0)
      return
    end
    local.get 3)
  (func $<num_bigint::biguint::BigUint_as_core::ops::arith::Add<&num_bigint::biguint::BigUint>>::add::h573de8f1a23e5fb4 (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i64 i32 i32 i64 i32)
    local.get 2
    i32.load
    local.set 3
    local.get 1
    i32.load
    local.set 4
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
                        local.get 1
                        i32.load offset=8
                        local.tee 5
                        local.get 2
                        i32.load offset=8
                        local.tee 6
                        i32.ge_u
                        br_if 0 (;@10;)
                        local.get 5
                        i32.eqz
                        br_if 1 (;@9;)
                        i64.const 0
                        local.set 7
                        local.get 5
                        local.set 8
                        local.get 4
                        local.set 9
                        loop  ;; label = @11
                          local.get 9
                          local.get 7
                          local.get 9
                          i64.load32_u
                          i64.add
                          local.get 3
                          i64.load32_u
                          i64.add
                          local.tee 7
                          i64.store32
                          local.get 9
                          i32.const 4
                          i32.add
                          local.set 9
                          local.get 3
                          i32.const 4
                          i32.add
                          local.set 3
                          local.get 7
                          i64.const 32
                          i64.shr_u
                          local.set 7
                          local.get 8
                          i32.const -1
                          i32.add
                          local.tee 8
                          br_if 0 (;@11;)
                        end
                        local.get 7
                        i64.eqz
                        br_if 1 (;@9;)
                        local.get 4
                        local.get 5
                        i32.const 2
                        i32.shl
                        i32.add
                        local.set 9
                        i32.const 0
                        local.set 3
                        loop  ;; label = @11
                          local.get 3
                          i32.eqz
                          br_if 3 (;@8;)
                          local.get 9
                          local.get 3
                          i32.add
                          local.tee 4
                          local.get 7
                          local.get 4
                          i64.load32_u
                          i64.add
                          local.tee 7
                          i64.store32
                          local.get 3
                          i32.const 4
                          i32.add
                          local.set 3
                          i64.const 0
                          local.set 10
                          local.get 7
                          i64.const 32
                          i64.shr_u
                          local.tee 7
                          i64.const 0
                          i64.ne
                          br_if 0 (;@11;)
                          br 4 (;@7;)
                        end
                      end
                      local.get 6
                      i32.eqz
                      br_if 5 (;@4;)
                      local.get 4
                      local.get 6
                      i32.const 2
                      i32.shl
                      i32.add
                      local.set 8
                      i64.const 0
                      local.set 7
                      local.get 6
                      local.set 9
                      loop  ;; label = @10
                        local.get 4
                        local.get 7
                        local.get 4
                        i64.load32_u
                        i64.add
                        local.get 3
                        i64.load32_u
                        i64.add
                        local.tee 7
                        i64.store32
                        local.get 4
                        i32.const 4
                        i32.add
                        local.set 4
                        local.get 3
                        i32.const 4
                        i32.add
                        local.set 3
                        local.get 7
                        i64.const 32
                        i64.shr_u
                        local.set 7
                        local.get 9
                        i32.const -1
                        i32.add
                        local.tee 9
                        br_if 0 (;@10;)
                      end
                      local.get 7
                      i64.eqz
                      br_if 5 (;@4;)
                      local.get 5
                      i32.const 2
                      i32.shl
                      local.get 6
                      i32.const 2
                      i32.shl
                      i32.sub
                      local.set 3
                      loop  ;; label = @10
                        local.get 3
                        i32.eqz
                        br_if 5 (;@5;)
                        local.get 8
                        local.get 7
                        local.get 8
                        i64.load32_u
                        i64.add
                        local.tee 7
                        i64.store32
                        local.get 3
                        i32.const -4
                        i32.add
                        local.set 3
                        local.get 8
                        i32.const 4
                        i32.add
                        local.set 8
                        local.get 7
                        i64.const 32
                        i64.shr_u
                        local.tee 7
                        i64.eqz
                        i32.eqz
                        br_if 0 (;@10;)
                        br 6 (;@4;)
                      end
                    end
                    i64.const 0
                    local.set 10
                    br 2 (;@6;)
                  end
                  local.get 7
                  local.set 10
                end
                local.get 2
                i32.const 8
                i32.add
                i32.load
                local.set 6
              end
              local.get 6
              local.get 5
              i32.lt_u
              br_if 2 (;@3;)
              local.get 1
              local.get 1
              i32.const 8
              i32.add
              local.tee 4
              i32.load
              local.get 2
              i32.load
              local.tee 3
              local.get 6
              i32.const 2
              i32.shl
              i32.add
              local.get 3
              local.get 5
              i32.const 2
              i32.shl
              local.tee 8
              i32.add
              local.tee 2
              i32.sub
              local.tee 6
              i32.const 2
              i32.shr_u
              local.tee 3
              call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
              local.get 4
              local.get 4
              i32.load
              local.tee 11
              local.get 3
              i32.add
              local.tee 3
              i32.store
              local.get 1
              i32.load
              local.tee 9
              local.get 11
              i32.const 2
              i32.shl
              i32.add
              local.get 2
              local.get 6
              i32.const -4
              i32.and
              call $memcpy
              drop
              local.get 3
              local.get 5
              i32.lt_u
              br_if 3 (;@2;)
              local.get 3
              local.get 5
              i32.eq
              br_if 4 (;@1;)
              local.get 9
              local.get 8
              i32.add
              local.tee 4
              local.get 10
              i64.const 4294967295
              i64.and
              local.get 4
              i64.load32_u
              i64.add
              local.tee 7
              i64.store32
              local.get 7
              i64.const 4294967296
              i64.and
              i64.eqz
              br_if 1 (;@4;)
              local.get 3
              i32.const 2
              i32.shl
              i32.const -4
              i32.add
              local.get 5
              i32.const 2
              i32.shl
              local.tee 3
              i32.sub
              local.set 4
              local.get 9
              local.get 3
              i32.add
              i32.const 4
              i32.add
              local.set 3
              i64.const 1
              local.set 7
              loop  ;; label = @6
                local.get 4
                i32.eqz
                br_if 1 (;@5;)
                local.get 3
                local.get 7
                local.get 3
                i64.load32_u
                i64.add
                local.tee 7
                i64.store32
                local.get 4
                i32.const -4
                i32.add
                local.set 4
                local.get 3
                i32.const 4
                i32.add
                local.set 3
                local.get 7
                i64.const 32
                i64.shr_u
                local.tee 7
                i64.eqz
                i32.eqz
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
            end
            local.get 7
            i32.wrap_i64
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 1
              i32.const 8
              i32.add
              local.tee 9
              i32.load
              local.tee 3
              local.get 1
              i32.load offset=4
              i32.ne
              br_if 0 (;@5;)
              local.get 1
              local.get 3
              i32.const 1
              call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
              local.get 9
              i32.load
              local.set 3
            end
            local.get 9
            local.get 3
            i32.const 1
            i32.add
            i32.store
            local.get 1
            i32.load
            local.get 3
            i32.const 2
            i32.shl
            i32.add
            local.get 4
            i32.store
          end
          local.get 0
          local.get 1
          i64.load align=4
          i64.store align=4
          local.get 0
          i32.const 8
          i32.add
          local.get 1
          i32.const 8
          i32.add
          i32.load
          i32.store
          return
        end
        local.get 5
        local.get 6
        call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
        unreachable
      end
      local.get 5
      local.get 3
      call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
      unreachable
    end
    i32.const 37944
    call $core::panicking::panic::hb7cb5b256fd27bcf
    unreachable)
  (func $<&num_bigint::biguint::BigUint_as_core::ops::arith::Sub<num_bigint::biguint::BigUint>>::sub::hdef5b659a0eef7cc (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i64 i32)
    local.get 2
    i32.load
    local.set 3
    local.get 1
    i32.load
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load offset=8
            local.tee 5
            local.get 1
            i32.load offset=8
            local.tee 6
            i32.ge_u
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            i32.const 2
            i32.shl
            i32.add
            local.set 7
            local.get 5
            i32.eqz
            br_if 1 (;@3;)
            i64.const 0
            local.set 8
            local.get 5
            local.set 9
            local.get 4
            local.set 1
            loop  ;; label = @5
              local.get 3
              local.get 1
              i64.load32_u
              local.get 3
              i64.load32_u
              i64.sub
              local.get 8
              i64.add
              local.tee 8
              i64.store32
              local.get 1
              i32.const 4
              i32.add
              local.set 1
              local.get 3
              i32.const 4
              i32.add
              local.set 3
              local.get 8
              i64.const 32
              i64.shr_s
              local.set 8
              local.get 9
              i32.const -1
              i32.add
              local.tee 9
              br_if 0 (;@5;)
            end
            local.get 2
            local.get 5
            local.get 4
            local.get 6
            i32.const 2
            i32.shl
            i32.add
            local.get 7
            i32.sub
            local.tee 4
            i32.const 2
            i32.shr_u
            local.tee 1
            call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
            local.get 2
            i32.const 8
            i32.add
            local.tee 3
            local.get 3
            i32.load
            local.tee 9
            local.get 1
            i32.add
            local.tee 1
            i32.store
            local.get 2
            i32.load
            local.tee 3
            local.get 9
            i32.const 2
            i32.shl
            i32.add
            local.get 7
            local.get 4
            i32.const -4
            i32.and
            call $memcpy
            drop
            local.get 8
            i32.wrap_i64
            i32.eqz
            br_if 2 (;@2;)
            local.get 1
            local.get 5
            i32.lt_u
            br_if 3 (;@1;)
            local.get 3
            local.get 5
            i32.const 2
            i32.shl
            i32.add
            local.get 1
            local.get 5
            i32.sub
            i32.const 33624
            i32.const 1
            call $num_bigint::biguint::algorithms::sub2::h4e4539b30a6aca64
            br 2 (;@2;)
          end
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 6
                i32.eqz
                br_if 0 (;@6;)
                i64.const 0
                local.set 8
                local.get 6
                local.set 9
                local.get 3
                local.set 1
                loop  ;; label = @7
                  local.get 1
                  local.get 4
                  i64.load32_u
                  local.get 1
                  i64.load32_u
                  i64.sub
                  local.get 8
                  i64.add
                  local.tee 8
                  i64.store32
                  local.get 4
                  i32.const 4
                  i32.add
                  local.set 4
                  local.get 1
                  i32.const 4
                  i32.add
                  local.set 1
                  local.get 8
                  i64.const 32
                  i64.shr_s
                  local.set 8
                  local.get 9
                  i32.const -1
                  i32.add
                  local.tee 9
                  br_if 0 (;@7;)
                end
                local.get 8
                i32.wrap_i64
                br_if 1 (;@5;)
              end
              local.get 6
              i32.const 2
              i32.shl
              local.set 1
              local.get 3
              local.get 5
              i32.const 2
              i32.shl
              i32.add
              local.set 9
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 9
                  local.get 3
                  local.get 1
                  i32.add
                  local.tee 4
                  i32.sub
                  i32.const 15
                  i32.le_u
                  br_if 1 (;@6;)
                  local.get 4
                  i32.load
                  br_if 2 (;@5;)
                  local.get 4
                  i32.const 4
                  i32.add
                  i32.load
                  br_if 2 (;@5;)
                  local.get 4
                  i32.const 8
                  i32.add
                  i32.load
                  br_if 2 (;@5;)
                  local.get 1
                  i32.const 16
                  i32.add
                  local.set 1
                  local.get 4
                  i32.const 12
                  i32.add
                  i32.load
                  i32.eqz
                  br_if 0 (;@7;)
                  br 2 (;@5;)
                end
              end
              local.get 5
              i32.const 2
              i32.shl
              local.set 9
              loop  ;; label = @6
                local.get 9
                local.get 1
                i32.eq
                br_if 2 (;@4;)
                local.get 3
                local.get 1
                i32.add
                local.set 4
                local.get 1
                i32.const 4
                i32.add
                local.set 1
                local.get 4
                i32.load
                i32.eqz
                br_if 0 (;@6;)
              end
            end
            i32.const 33453
            i32.const 52
            i32.const 38008
            call $std::panicking::begin_panic::h9d1f0cd51c92c0f4
            unreachable
          end
          local.get 5
          local.set 1
          br 1 (;@2;)
        end
        local.get 2
        i32.const 0
        local.get 4
        local.get 6
        i32.const 2
        i32.shl
        i32.add
        local.get 7
        i32.sub
        local.tee 4
        i32.const 2
        i32.shr_u
        local.tee 1
        call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
        local.get 2
        i32.const 8
        i32.add
        local.tee 3
        local.get 3
        i32.load
        local.tee 9
        local.get 1
        i32.add
        local.tee 1
        i32.store
        local.get 2
        i32.load
        local.tee 3
        local.get 9
        i32.const 2
        i32.shl
        i32.add
        local.get 7
        local.get 4
        i32.const -4
        i32.and
        call $memcpy
        drop
      end
      local.get 2
      i32.load offset=4
      local.set 5
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const -1
          i32.add
          local.get 1
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 2
          i32.shl
          i32.const -4
          i32.add
          local.set 9
          loop  ;; label = @4
            local.get 1
            i32.const -1
            i32.add
            local.tee 4
            local.get 1
            i32.ge_u
            br_if 1 (;@3;)
            local.get 3
            local.get 9
            i32.add
            local.tee 2
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            i32.load
            br_if 1 (;@3;)
            local.get 1
            i32.const -2
            i32.add
            local.set 2
            local.get 9
            i32.const -4
            i32.add
            local.set 9
            local.get 4
            local.set 1
            local.get 2
            local.get 4
            i32.le_u
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 1
        local.set 4
      end
      local.get 0
      local.get 4
      i32.store offset=8
      local.get 0
      local.get 5
      i32.store offset=4
      local.get 0
      local.get 3
      i32.store
      return
    end
    local.get 5
    local.get 1
    call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
    unreachable)
  (func $std::panicking::rust_panic_with_hook::hda811be35d0f5267 (type 7) (param i32)
    (local i32 i32)
    i32.const 1
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=40344
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            i32.const 0
            i32.load offset=40348
            i32.const 1
            i32.add
            local.tee 1
            i32.store offset=40348
            local.get 1
            i32.const 3
            i32.lt_u
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          i32.const 0
          i64.const 4294967297
          i64.store offset=40344
        end
        i32.const 0
        i32.load offset=40352
        local.tee 2
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        i32.const 0
        local.get 2
        i32.store offset=40352
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
  (func $num_bigint::biguint::algorithms::mac3::h458bf79c16a14b72 (type 15) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 416
    i32.sub
    local.tee 6
    global.set 0
    local.get 5
    local.get 3
    local.get 3
    local.get 5
    i32.lt_u
    local.tee 7
    select
    local.set 8
    local.get 4
    local.get 2
    local.get 7
    select
    local.set 9
    local.get 2
    local.get 4
    local.get 7
    select
    local.set 10
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
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              local.get 3
                                              local.get 5
                                              local.get 7
                                              select
                                              local.tee 4
                                              i32.const 32
                                              i32.gt_u
                                              br_if 0 (;@21;)
                                              local.get 4
                                              i32.eqz
                                              br_if 20 (;@1;)
                                              local.get 10
                                              local.get 4
                                              i32.const 2
                                              i32.shl
                                              i32.add
                                              local.set 11
                                              local.get 1
                                              i32.const 2
                                              i32.shl
                                              local.set 4
                                              local.get 8
                                              i32.const 2
                                              i32.shl
                                              local.set 12
                                              i32.const 0
                                              local.set 2
                                              loop  ;; label = @22
                                                local.get 2
                                                local.get 1
                                                i32.gt_u
                                                br_if 3 (;@19;)
                                                block  ;; label = @23
                                                  local.get 10
                                                  i32.load
                                                  local.tee 3
                                                  i32.eqz
                                                  br_if 0 (;@23;)
                                                  local.get 1
                                                  local.get 2
                                                  i32.sub
                                                  local.get 8
                                                  i32.lt_u
                                                  br_if 5 (;@18;)
                                                  local.get 8
                                                  i32.eqz
                                                  br_if 0 (;@23;)
                                                  local.get 3
                                                  i64.extend_i32_u
                                                  local.set 13
                                                  i64.const 0
                                                  local.set 14
                                                  local.get 8
                                                  local.set 7
                                                  local.get 9
                                                  local.set 5
                                                  local.get 0
                                                  local.set 3
                                                  loop  ;; label = @24
                                                    local.get 3
                                                    local.get 14
                                                    local.get 3
                                                    i64.load32_u
                                                    i64.add
                                                    local.get 5
                                                    i64.load32_u
                                                    local.get 13
                                                    i64.mul
                                                    i64.add
                                                    local.tee 14
                                                    i64.store32
                                                    local.get 14
                                                    i64.const 32
                                                    i64.shr_u
                                                    local.set 14
                                                    local.get 5
                                                    i32.const 4
                                                    i32.add
                                                    local.set 5
                                                    local.get 3
                                                    i32.const 4
                                                    i32.add
                                                    local.set 3
                                                    local.get 7
                                                    i32.const -1
                                                    i32.add
                                                    local.tee 7
                                                    br_if 0 (;@24;)
                                                  end
                                                  local.get 14
                                                  i64.eqz
                                                  br_if 0 (;@23;)
                                                  local.get 12
                                                  local.set 3
                                                  loop  ;; label = @24
                                                    local.get 4
                                                    local.get 3
                                                    i32.eq
                                                    br_if 4 (;@20;)
                                                    local.get 0
                                                    local.get 3
                                                    i32.add
                                                    local.tee 5
                                                    local.get 14
                                                    local.get 5
                                                    i64.load32_u
                                                    i64.add
                                                    local.tee 14
                                                    i64.store32
                                                    local.get 3
                                                    i32.const 4
                                                    i32.add
                                                    local.set 3
                                                    local.get 14
                                                    i64.const 32
                                                    i64.shr_u
                                                    local.tee 14
                                                    i64.const 0
                                                    i64.ne
                                                    br_if 0 (;@24;)
                                                  end
                                                end
                                                local.get 2
                                                i32.const 1
                                                i32.add
                                                local.set 2
                                                local.get 4
                                                i32.const -4
                                                i32.add
                                                local.set 4
                                                local.get 0
                                                i32.const 4
                                                i32.add
                                                local.set 0
                                                local.get 10
                                                i32.const 4
                                                i32.add
                                                local.tee 10
                                                local.get 11
                                                i32.ne
                                                br_if 0 (;@22;)
                                                br 21 (;@1;)
                                              end
                                            end
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        local.get 4
                                                        i32.const 257
                                                        i32.ge_u
                                                        br_if 0 (;@26;)
                                                        local.get 8
                                                        local.get 4
                                                        i32.const 1
                                                        i32.shr_u
                                                        local.tee 2
                                                        i32.lt_u
                                                        br_if 9 (;@17;)
                                                        local.get 6
                                                        i32.const 8
                                                        i32.add
                                                        local.get 8
                                                        local.get 2
                                                        i32.sub
                                                        local.tee 15
                                                        local.get 4
                                                        local.get 2
                                                        i32.sub
                                                        local.tee 16
                                                        i32.add
                                                        local.tee 5
                                                        i32.const 1
                                                        i32.add
                                                        local.tee 12
                                                        i32.const 1
                                                        call $alloc::raw_vec::RawVec<T_A>::allocate_in::h55f622eb10260618
                                                        local.get 6
                                                        local.get 12
                                                        i32.store offset=392
                                                        local.get 6
                                                        local.get 6
                                                        i32.load offset=12
                                                        i32.store offset=388
                                                        local.get 6
                                                        local.get 6
                                                        i32.load offset=8
                                                        local.tee 11
                                                        i32.store offset=384
                                                        local.get 11
                                                        local.get 12
                                                        local.get 10
                                                        local.get 2
                                                        i32.const 2
                                                        i32.shl
                                                        local.tee 3
                                                        i32.add
                                                        local.tee 17
                                                        local.get 16
                                                        local.get 9
                                                        local.get 3
                                                        i32.add
                                                        local.tee 18
                                                        local.get 15
                                                        call $num_bigint::biguint::algorithms::mac3::h458bf79c16a14b72
                                                        local.get 12
                                                        local.set 3
                                                        local.get 5
                                                        local.get 12
                                                        i32.gt_u
                                                        br_if 2 (;@24;)
                                                        local.get 5
                                                        i32.const 2
                                                        i32.shl
                                                        local.set 7
                                                        local.get 6
                                                        i32.const 392
                                                        i32.add
                                                        local.set 19
                                                        local.get 12
                                                        local.set 5
                                                        loop  ;; label = @27
                                                          local.get 5
                                                          i32.const -1
                                                          i32.add
                                                          local.tee 3
                                                          local.get 5
                                                          i32.ge_u
                                                          br_if 2 (;@25;)
                                                          local.get 11
                                                          local.get 7
                                                          i32.add
                                                          local.tee 8
                                                          i32.eqz
                                                          br_if 2 (;@25;)
                                                          local.get 8
                                                          i32.load
                                                          br_if 2 (;@25;)
                                                          local.get 19
                                                          local.get 3
                                                          i32.store
                                                          local.get 5
                                                          i32.const -2
                                                          i32.add
                                                          local.set 8
                                                          local.get 7
                                                          i32.const -4
                                                          i32.add
                                                          local.set 7
                                                          local.get 3
                                                          local.set 5
                                                          local.get 8
                                                          local.get 3
                                                          i32.le_u
                                                          br_if 0 (;@27;)
                                                          br 3 (;@24;)
                                                        end
                                                      end
                                                      local.get 6
                                                      i32.const 56
                                                      i32.add
                                                      local.get 8
                                                      i32.const 3
                                                      i32.div_u
                                                      local.tee 20
                                                      i32.const 1
                                                      i32.add
                                                      local.tee 11
                                                      local.get 4
                                                      local.get 4
                                                      local.get 11
                                                      i32.gt_u
                                                      select
                                                      local.tee 15
                                                      i32.const 0
                                                      call $alloc::raw_vec::RawVec<T_A>::allocate_in::h55f622eb10260618
                                                      local.get 6
                                                      i32.const 0
                                                      i32.store offset=408
                                                      local.get 6
                                                      local.get 6
                                                      i64.load offset=56
                                                      i64.store offset=400
                                                      local.get 6
                                                      i32.const 400
                                                      i32.add
                                                      i32.const 0
                                                      local.get 15
                                                      call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
                                                      local.get 6
                                                      local.get 6
                                                      i32.load offset=408
                                                      local.tee 5
                                                      local.get 15
                                                      i32.add
                                                      local.tee 3
                                                      i32.store offset=408
                                                      local.get 6
                                                      i32.load offset=400
                                                      local.tee 19
                                                      local.get 5
                                                      i32.const 2
                                                      i32.shl
                                                      i32.add
                                                      local.get 10
                                                      local.get 15
                                                      i32.const 2
                                                      i32.shl
                                                      local.tee 17
                                                      call $memcpy
                                                      drop
                                                      local.get 11
                                                      local.get 4
                                                      local.get 15
                                                      i32.sub
                                                      local.tee 5
                                                      local.get 5
                                                      local.get 11
                                                      i32.gt_u
                                                      select
                                                      local.set 12
                                                      local.get 6
                                                      i32.load offset=404
                                                      local.set 16
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          local.get 3
                                                          i32.const -1
                                                          i32.add
                                                          local.tee 5
                                                          local.get 3
                                                          i32.gt_u
                                                          br_if 0 (;@27;)
                                                          local.get 5
                                                          i32.const 2
                                                          i32.shl
                                                          local.set 7
                                                          loop  ;; label = @28
                                                            local.get 3
                                                            i32.const -1
                                                            i32.add
                                                            local.tee 5
                                                            local.get 3
                                                            i32.ge_u
                                                            br_if 1 (;@27;)
                                                            local.get 19
                                                            local.get 7
                                                            i32.add
                                                            local.tee 2
                                                            i32.eqz
                                                            br_if 1 (;@27;)
                                                            local.get 2
                                                            i32.load
                                                            br_if 1 (;@27;)
                                                            local.get 3
                                                            i32.const -2
                                                            i32.add
                                                            local.set 2
                                                            local.get 7
                                                            i32.const -4
                                                            i32.add
                                                            local.set 7
                                                            local.get 5
                                                            local.set 3
                                                            local.get 2
                                                            local.get 5
                                                            i32.le_u
                                                            br_if 0 (;@28;)
                                                            br 2 (;@26;)
                                                          end
                                                        end
                                                        local.get 3
                                                        local.set 5
                                                      end
                                                      local.get 6
                                                      local.get 16
                                                      i32.store offset=68
                                                      local.get 6
                                                      local.get 19
                                                      i32.store offset=64
                                                      local.get 6
                                                      local.get 5
                                                      i32.store offset=72
                                                      local.get 6
                                                      i32.const 2
                                                      i32.const 1
                                                      local.get 5
                                                      select
                                                      i32.store8 offset=76
                                                      local.get 12
                                                      local.get 15
                                                      i32.add
                                                      local.tee 16
                                                      local.get 12
                                                      i32.lt_u
                                                      br_if 9 (;@16;)
                                                      local.get 4
                                                      local.get 16
                                                      i32.lt_u
                                                      br_if 10 (;@15;)
                                                      local.get 6
                                                      i32.const 48
                                                      i32.add
                                                      local.get 12
                                                      i32.const 0
                                                      call $alloc::raw_vec::RawVec<T_A>::allocate_in::h55f622eb10260618
                                                      local.get 6
                                                      i32.const 0
                                                      i32.store offset=408
                                                      local.get 6
                                                      local.get 6
                                                      i64.load offset=48
                                                      i64.store offset=400
                                                      local.get 6
                                                      i32.const 400
                                                      i32.add
                                                      i32.const 0
                                                      local.get 12
                                                      call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
                                                      local.get 6
                                                      local.get 6
                                                      i32.load offset=408
                                                      local.tee 7
                                                      local.get 12
                                                      i32.add
                                                      local.tee 3
                                                      i32.store offset=408
                                                      local.get 6
                                                      i32.load offset=400
                                                      local.tee 15
                                                      local.get 7
                                                      i32.const 2
                                                      i32.shl
                                                      i32.add
                                                      local.get 10
                                                      local.get 17
                                                      i32.add
                                                      local.get 12
                                                      i32.const 2
                                                      i32.shl
                                                      call $memcpy
                                                      drop
                                                      local.get 6
                                                      i32.load offset=404
                                                      local.set 17
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          local.get 3
                                                          i32.const -1
                                                          i32.add
                                                          local.tee 7
                                                          local.get 3
                                                          i32.gt_u
                                                          br_if 0 (;@27;)
                                                          local.get 7
                                                          i32.const 2
                                                          i32.shl
                                                          local.set 2
                                                          loop  ;; label = @28
                                                            local.get 3
                                                            i32.const -1
                                                            i32.add
                                                            local.tee 7
                                                            local.get 3
                                                            i32.ge_u
                                                            br_if 1 (;@27;)
                                                            local.get 15
                                                            local.get 2
                                                            i32.add
                                                            local.tee 12
                                                            i32.eqz
                                                            br_if 1 (;@27;)
                                                            local.get 12
                                                            i32.load
                                                            br_if 1 (;@27;)
                                                            local.get 3
                                                            i32.const -2
                                                            i32.add
                                                            local.set 12
                                                            local.get 2
                                                            i32.const -4
                                                            i32.add
                                                            local.set 2
                                                            local.get 7
                                                            local.set 3
                                                            local.get 12
                                                            local.get 7
                                                            i32.le_u
                                                            br_if 0 (;@28;)
                                                            br 2 (;@26;)
                                                          end
                                                        end
                                                        local.get 3
                                                        local.set 7
                                                      end
                                                      local.get 6
                                                      local.get 17
                                                      i32.store offset=84
                                                      local.get 6
                                                      local.get 15
                                                      i32.store offset=80
                                                      local.get 6
                                                      local.get 7
                                                      i32.store offset=88
                                                      local.get 6
                                                      i32.const 2
                                                      i32.const 1
                                                      local.get 7
                                                      select
                                                      i32.store8 offset=92
                                                      local.get 6
                                                      i32.const 40
                                                      i32.add
                                                      local.get 4
                                                      local.get 16
                                                      i32.sub
                                                      i32.const 0
                                                      call $alloc::raw_vec::RawVec<T_A>::allocate_in::h55f622eb10260618
                                                      local.get 6
                                                      i32.const 0
                                                      i32.store offset=408
                                                      local.get 6
                                                      local.get 6
                                                      i64.load offset=40
                                                      i64.store offset=400
                                                      local.get 6
                                                      i32.const 400
                                                      i32.add
                                                      i32.const 0
                                                      local.get 10
                                                      local.get 4
                                                      i32.const 2
                                                      i32.shl
                                                      i32.add
                                                      local.get 10
                                                      local.get 16
                                                      i32.const 2
                                                      i32.shl
                                                      i32.add
                                                      local.tee 7
                                                      i32.sub
                                                      local.tee 4
                                                      i32.const 2
                                                      i32.shr_u
                                                      local.tee 3
                                                      call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
                                                      local.get 6
                                                      local.get 6
                                                      i32.load offset=408
                                                      local.tee 2
                                                      local.get 3
                                                      i32.add
                                                      local.tee 3
                                                      i32.store offset=408
                                                      local.get 6
                                                      i32.load offset=400
                                                      local.tee 15
                                                      local.get 2
                                                      i32.const 2
                                                      i32.shl
                                                      i32.add
                                                      local.get 7
                                                      local.get 4
                                                      call $memcpy
                                                      drop
                                                      local.get 6
                                                      i32.load offset=404
                                                      local.set 10
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          local.get 3
                                                          i32.const -1
                                                          i32.add
                                                          local.tee 7
                                                          local.get 3
                                                          i32.gt_u
                                                          br_if 0 (;@27;)
                                                          local.get 7
                                                          i32.const 2
                                                          i32.shl
                                                          local.set 4
                                                          loop  ;; label = @28
                                                            local.get 3
                                                            i32.const -1
                                                            i32.add
                                                            local.tee 7
                                                            local.get 3
                                                            i32.ge_u
                                                            br_if 1 (;@27;)
                                                            local.get 15
                                                            local.get 4
                                                            i32.add
                                                            local.tee 2
                                                            i32.eqz
                                                            br_if 1 (;@27;)
                                                            local.get 2
                                                            i32.load
                                                            br_if 1 (;@27;)
                                                            local.get 3
                                                            i32.const -2
                                                            i32.add
                                                            local.set 2
                                                            local.get 4
                                                            i32.const -4
                                                            i32.add
                                                            local.set 4
                                                            local.get 7
                                                            local.set 3
                                                            local.get 2
                                                            local.get 7
                                                            i32.le_u
                                                            br_if 0 (;@28;)
                                                            br 2 (;@26;)
                                                          end
                                                        end
                                                        local.get 3
                                                        local.set 7
                                                      end
                                                      local.get 6
                                                      local.get 10
                                                      i32.store offset=100
                                                      local.get 6
                                                      local.get 15
                                                      i32.store offset=96
                                                      local.get 6
                                                      local.get 7
                                                      i32.store offset=104
                                                      local.get 6
                                                      i32.const 2
                                                      i32.const 1
                                                      local.get 7
                                                      select
                                                      i32.store8 offset=108
                                                      local.get 8
                                                      local.get 20
                                                      i32.le_u
                                                      br_if 11 (;@14;)
                                                      local.get 11
                                                      local.get 8
                                                      local.get 11
                                                      i32.sub
                                                      local.tee 3
                                                      local.get 3
                                                      local.get 11
                                                      i32.gt_u
                                                      select
                                                      local.set 12
                                                      local.get 6
                                                      i32.const 32
                                                      i32.add
                                                      local.get 11
                                                      i32.const 0
                                                      call $alloc::raw_vec::RawVec<T_A>::allocate_in::h55f622eb10260618
                                                      local.get 6
                                                      i32.const 0
                                                      i32.store offset=408
                                                      local.get 6
                                                      local.get 6
                                                      i64.load offset=32
                                                      i64.store offset=400
                                                      local.get 6
                                                      i32.const 400
                                                      i32.add
                                                      i32.const 0
                                                      local.get 11
                                                      call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
                                                      local.get 6
                                                      local.get 6
                                                      i32.load offset=408
                                                      local.tee 4
                                                      local.get 11
                                                      i32.add
                                                      local.tee 3
                                                      i32.store offset=408
                                                      local.get 6
                                                      i32.load offset=400
                                                      local.tee 16
                                                      local.get 4
                                                      i32.const 2
                                                      i32.shl
                                                      i32.add
                                                      local.get 9
                                                      local.get 11
                                                      i32.const 2
                                                      i32.shl
                                                      local.tee 21
                                                      call $memcpy
                                                      drop
                                                      local.get 6
                                                      i32.load offset=404
                                                      local.set 17
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          local.get 3
                                                          i32.const -1
                                                          i32.add
                                                          local.tee 4
                                                          local.get 3
                                                          i32.gt_u
                                                          br_if 0 (;@27;)
                                                          local.get 4
                                                          i32.const 2
                                                          i32.shl
                                                          local.set 2
                                                          loop  ;; label = @28
                                                            local.get 3
                                                            i32.const -1
                                                            i32.add
                                                            local.tee 4
                                                            local.get 3
                                                            i32.ge_u
                                                            br_if 1 (;@27;)
                                                            local.get 16
                                                            local.get 2
                                                            i32.add
                                                            local.tee 10
                                                            i32.eqz
                                                            br_if 1 (;@27;)
                                                            local.get 10
                                                            i32.load
                                                            br_if 1 (;@27;)
                                                            local.get 3
                                                            i32.const -2
                                                            i32.add
                                                            local.set 10
                                                            local.get 2
                                                            i32.const -4
                                                            i32.add
                                                            local.set 2
                                                            local.get 4
                                                            local.set 3
                                                            local.get 10
                                                            local.get 4
                                                            i32.le_u
                                                            br_if 0 (;@28;)
                                                            br 2 (;@26;)
                                                          end
                                                        end
                                                        local.get 3
                                                        local.set 4
                                                      end
                                                      local.get 6
                                                      local.get 17
                                                      i32.store offset=116
                                                      local.get 6
                                                      local.get 16
                                                      i32.store offset=112
                                                      local.get 6
                                                      local.get 4
                                                      i32.store offset=120
                                                      local.get 6
                                                      i32.const 2
                                                      i32.const 1
                                                      local.get 4
                                                      select
                                                      local.tee 18
                                                      i32.store8 offset=124
                                                      local.get 12
                                                      local.get 11
                                                      i32.add
                                                      local.tee 17
                                                      local.get 20
                                                      i32.le_u
                                                      br_if 12 (;@13;)
                                                      local.get 8
                                                      local.get 17
                                                      i32.lt_u
                                                      br_if 13 (;@12;)
                                                      local.get 6
                                                      i32.const 24
                                                      i32.add
                                                      local.get 12
                                                      i32.const 0
                                                      call $alloc::raw_vec::RawVec<T_A>::allocate_in::h55f622eb10260618
                                                      local.get 6
                                                      i32.const 0
                                                      i32.store offset=408
                                                      local.get 6
                                                      local.get 6
                                                      i64.load offset=24
                                                      i64.store offset=400
                                                      local.get 6
                                                      i32.const 400
                                                      i32.add
                                                      i32.const 0
                                                      local.get 12
                                                      call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
                                                      local.get 6
                                                      local.get 6
                                                      i32.load offset=408
                                                      local.tee 2
                                                      local.get 12
                                                      i32.add
                                                      local.tee 3
                                                      i32.store offset=408
                                                      local.get 6
                                                      i32.load offset=400
                                                      local.tee 20
                                                      local.get 2
                                                      i32.const 2
                                                      i32.shl
                                                      i32.add
                                                      local.get 9
                                                      local.get 21
                                                      i32.add
                                                      local.get 12
                                                      i32.const 2
                                                      i32.shl
                                                      call $memcpy
                                                      drop
                                                      local.get 6
                                                      i32.load offset=404
                                                      local.set 21
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          local.get 3
                                                          i32.const -1
                                                          i32.add
                                                          local.tee 2
                                                          local.get 3
                                                          i32.gt_u
                                                          br_if 0 (;@27;)
                                                          local.get 2
                                                          i32.const 2
                                                          i32.shl
                                                          local.set 10
                                                          loop  ;; label = @28
                                                            local.get 3
                                                            i32.const -1
                                                            i32.add
                                                            local.tee 2
                                                            local.get 3
                                                            i32.ge_u
                                                            br_if 1 (;@27;)
                                                            local.get 20
                                                            local.get 10
                                                            i32.add
                                                            local.tee 12
                                                            i32.eqz
                                                            br_if 1 (;@27;)
                                                            local.get 12
                                                            i32.load
                                                            br_if 1 (;@27;)
                                                            local.get 3
                                                            i32.const -2
                                                            i32.add
                                                            local.set 12
                                                            local.get 10
                                                            i32.const -4
                                                            i32.add
                                                            local.set 10
                                                            local.get 2
                                                            local.set 3
                                                            local.get 12
                                                            local.get 2
                                                            i32.le_u
                                                            br_if 0 (;@28;)
                                                            br 2 (;@26;)
                                                          end
                                                        end
                                                        local.get 3
                                                        local.set 2
                                                      end
                                                      local.get 6
                                                      local.get 21
                                                      i32.store offset=132
                                                      local.get 6
                                                      local.get 20
                                                      i32.store offset=128
                                                      local.get 6
                                                      local.get 2
                                                      i32.store offset=136
                                                      i32.const 1
                                                      local.set 12
                                                      local.get 6
                                                      i32.const 2
                                                      i32.const 1
                                                      local.get 2
                                                      select
                                                      i32.store8 offset=140
                                                      local.get 6
                                                      i32.const 16
                                                      i32.add
                                                      local.get 8
                                                      local.get 17
                                                      i32.sub
                                                      i32.const 0
                                                      call $alloc::raw_vec::RawVec<T_A>::allocate_in::h55f622eb10260618
                                                      local.get 6
                                                      i32.const 0
                                                      i32.store offset=408
                                                      local.get 6
                                                      local.get 6
                                                      i64.load offset=16
                                                      i64.store offset=400
                                                      local.get 6
                                                      i32.const 400
                                                      i32.add
                                                      i32.const 0
                                                      local.get 9
                                                      local.get 8
                                                      i32.const 2
                                                      i32.shl
                                                      i32.add
                                                      local.get 9
                                                      local.get 17
                                                      i32.const 2
                                                      i32.shl
                                                      i32.add
                                                      local.tee 2
                                                      i32.sub
                                                      local.tee 10
                                                      i32.const 2
                                                      i32.shr_u
                                                      local.tee 3
                                                      call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
                                                      local.get 6
                                                      local.get 6
                                                      i32.load offset=408
                                                      local.tee 8
                                                      local.get 3
                                                      i32.add
                                                      local.tee 3
                                                      i32.store offset=408
                                                      local.get 6
                                                      i32.load offset=400
                                                      local.tee 9
                                                      local.get 8
                                                      i32.const 2
                                                      i32.shl
                                                      i32.add
                                                      local.get 2
                                                      local.get 10
                                                      call $memcpy
                                                      drop
                                                      local.get 6
                                                      i32.load offset=404
                                                      local.set 20
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          local.get 3
                                                          i32.const -1
                                                          i32.add
                                                          local.tee 2
                                                          local.get 3
                                                          i32.gt_u
                                                          br_if 0 (;@27;)
                                                          local.get 2
                                                          i32.const 2
                                                          i32.shl
                                                          local.set 10
                                                          loop  ;; label = @28
                                                            local.get 3
                                                            i32.const -1
                                                            i32.add
                                                            local.tee 2
                                                            local.get 3
                                                            i32.ge_u
                                                            br_if 1 (;@27;)
                                                            local.get 9
                                                            local.get 10
                                                            i32.add
                                                            local.tee 8
                                                            i32.eqz
                                                            br_if 1 (;@27;)
                                                            local.get 8
                                                            i32.load
                                                            br_if 1 (;@27;)
                                                            local.get 3
                                                            i32.const -2
                                                            i32.add
                                                            local.set 8
                                                            local.get 10
                                                            i32.const -4
                                                            i32.add
                                                            local.set 10
                                                            local.get 2
                                                            local.set 3
                                                            local.get 8
                                                            local.get 2
                                                            i32.le_u
                                                            br_if 0 (;@28;)
                                                            br 2 (;@26;)
                                                          end
                                                        end
                                                        local.get 3
                                                        local.set 2
                                                      end
                                                      local.get 6
                                                      local.get 20
                                                      i32.store offset=148
                                                      local.get 6
                                                      local.get 9
                                                      i32.store offset=144
                                                      local.get 6
                                                      local.get 2
                                                      i32.store offset=152
                                                      local.get 6
                                                      i32.const 2
                                                      i32.const 1
                                                      local.get 2
                                                      select
                                                      local.tee 10
                                                      i32.store8 offset=156
                                                      local.get 6
                                                      i32.const 160
                                                      i32.add
                                                      local.get 6
                                                      i32.const 64
                                                      i32.add
                                                      local.get 6
                                                      i32.const 96
                                                      i32.add
                                                      call $<&num_bigint::bigint::BigInt_as_core::ops::arith::Add<&num_bigint::bigint::BigInt>>::add::h485505acf3965575
                                                      local.get 6
                                                      i32.const 176
                                                      i32.add
                                                      local.get 6
                                                      i32.const 112
                                                      i32.add
                                                      local.get 6
                                                      i32.const 144
                                                      i32.add
                                                      call $<&num_bigint::bigint::BigInt_as_core::ops::arith::Add<&num_bigint::bigint::BigInt>>::add::h485505acf3965575
                                                      local.get 6
                                                      i32.const 192
                                                      i32.add
                                                      local.get 6
                                                      i32.const 160
                                                      i32.add
                                                      local.get 6
                                                      i32.const 80
                                                      i32.add
                                                      call $<&num_bigint::bigint::BigInt_as_core::ops::arith::Sub<&num_bigint::bigint::BigInt>>::sub::hb57ce062f7878844
                                                      local.get 6
                                                      i32.const 208
                                                      i32.add
                                                      local.get 6
                                                      i32.const 176
                                                      i32.add
                                                      local.get 6
                                                      i32.const 128
                                                      i32.add
                                                      call $<&num_bigint::bigint::BigInt_as_core::ops::arith::Sub<&num_bigint::bigint::BigInt>>::sub::hb57ce062f7878844
                                                      block  ;; label = @26
                                                        local.get 5
                                                        i32.eqz
                                                        br_if 0 (;@26;)
                                                        i32.const 1
                                                        local.set 12
                                                        local.get 18
                                                        i32.const 1
                                                        i32.eq
                                                        br_if 0 (;@26;)
                                                        i32.const 2
                                                        local.set 12
                                                        local.get 18
                                                        i32.const 2
                                                        i32.eq
                                                        br_if 0 (;@26;)
                                                        i32.const 0
                                                        local.set 12
                                                      end
                                                      local.get 6
                                                      i32.const 400
                                                      i32.add
                                                      local.get 19
                                                      local.get 5
                                                      local.get 16
                                                      local.get 4
                                                      call $num_bigint::biguint::algorithms::mul3::hf4ba5a376759f24b
                                                      i32.const 1
                                                      local.set 3
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          local.get 12
                                                          i32.const 1
                                                          i32.ne
                                                          br_if 0 (;@27;)
                                                          local.get 6
                                                          i32.const 408
                                                          i32.add
                                                          i32.const 0
                                                          i32.store
                                                          br 1 (;@26;)
                                                        end
                                                        local.get 12
                                                        i32.const 1
                                                        local.get 6
                                                        i32.const 408
                                                        i32.add
                                                        i32.load
                                                        select
                                                        local.set 3
                                                      end
                                                      local.get 6
                                                      i32.const 224
                                                      i32.add
                                                      i32.const 8
                                                      i32.add
                                                      local.get 6
                                                      i32.const 400
                                                      i32.add
                                                      i32.const 8
                                                      i32.add
                                                      i32.load
                                                      i32.store
                                                      local.get 6
                                                      local.get 6
                                                      i64.load offset=400
                                                      i64.store offset=224
                                                      local.get 6
                                                      local.get 3
                                                      i32.store8 offset=236
                                                      i32.const 1
                                                      local.set 3
                                                      block  ;; label = @26
                                                        local.get 7
                                                        i32.eqz
                                                        br_if 0 (;@26;)
                                                        i32.const 1
                                                        local.set 3
                                                        local.get 10
                                                        i32.const 1
                                                        i32.eq
                                                        br_if 0 (;@26;)
                                                        i32.const 2
                                                        local.set 3
                                                        local.get 10
                                                        i32.const 2
                                                        i32.eq
                                                        br_if 0 (;@26;)
                                                        i32.const 0
                                                        local.set 3
                                                      end
                                                      local.get 6
                                                      i32.const 400
                                                      i32.add
                                                      local.get 15
                                                      local.get 7
                                                      local.get 9
                                                      local.get 2
                                                      call $num_bigint::biguint::algorithms::mul3::hf4ba5a376759f24b
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          local.get 3
                                                          i32.const 1
                                                          i32.ne
                                                          br_if 0 (;@27;)
                                                          local.get 6
                                                          i32.const 408
                                                          i32.add
                                                          i32.const 0
                                                          i32.store
                                                          i32.const 1
                                                          local.set 5
                                                          br 1 (;@26;)
                                                        end
                                                        local.get 3
                                                        i32.const 1
                                                        local.get 6
                                                        i32.const 408
                                                        i32.add
                                                        i32.load
                                                        select
                                                        local.set 5
                                                      end
                                                      local.get 6
                                                      i32.const 240
                                                      i32.add
                                                      i32.const 8
                                                      i32.add
                                                      local.get 6
                                                      i32.const 400
                                                      i32.add
                                                      i32.const 8
                                                      i32.add
                                                      local.tee 3
                                                      i32.load
                                                      i32.store
                                                      local.get 6
                                                      local.get 6
                                                      i64.load offset=400
                                                      i64.store offset=240
                                                      local.get 6
                                                      local.get 5
                                                      i32.store8 offset=252
                                                      local.get 6
                                                      i32.const 384
                                                      i32.add
                                                      i32.const 8
                                                      i32.add
                                                      local.tee 5
                                                      local.get 6
                                                      i32.const 160
                                                      i32.add
                                                      i32.const 8
                                                      i32.add
                                                      i64.load
                                                      i64.store
                                                      local.get 6
                                                      local.get 6
                                                      i64.load offset=160
                                                      i64.store offset=384
                                                      local.get 3
                                                      local.get 6
                                                      i32.const 80
                                                      i32.add
                                                      i32.const 8
                                                      i32.add
                                                      i64.load
                                                      i64.store
                                                      local.get 6
                                                      local.get 6
                                                      i64.load offset=80
                                                      i64.store offset=400
                                                      local.get 6
                                                      i32.const 344
                                                      i32.add
                                                      local.get 6
                                                      i32.const 384
                                                      i32.add
                                                      local.get 6
                                                      i32.const 400
                                                      i32.add
                                                      call $<num_bigint::bigint::BigInt_as_core::ops::arith::Add>::add::h1bd8aba9ca36d5bb
                                                      local.get 5
                                                      local.get 6
                                                      i32.const 176
                                                      i32.add
                                                      i32.const 8
                                                      i32.add
                                                      i64.load
                                                      i64.store
                                                      local.get 6
                                                      local.get 6
                                                      i64.load offset=176
                                                      i64.store offset=384
                                                      local.get 3
                                                      local.get 6
                                                      i32.const 128
                                                      i32.add
                                                      i32.const 8
                                                      i32.add
                                                      i64.load
                                                      i64.store
                                                      local.get 6
                                                      local.get 6
                                                      i64.load offset=128
                                                      i64.store offset=400
                                                      local.get 6
                                                      i32.const 368
                                                      i32.add
                                                      local.get 6
                                                      i32.const 384
                                                      i32.add
                                                      local.get 6
                                                      i32.const 400
                                                      i32.add
                                                      call $<num_bigint::bigint::BigInt_as_core::ops::arith::Add>::add::h1bd8aba9ca36d5bb
                                                      local.get 6
                                                      i32.load offset=352
                                                      local.set 4
                                                      local.get 6
                                                      i32.load offset=348
                                                      local.set 5
                                                      local.get 6
                                                      i32.load offset=344
                                                      local.set 7
                                                      i32.const 1
                                                      local.set 3
                                                      local.get 6
                                                      i32.load8_u offset=356
                                                      local.tee 2
                                                      i32.const 1
                                                      i32.eq
                                                      br_if 4 (;@21;)
                                                      i32.const 1
                                                      local.set 3
                                                      local.get 6
                                                      i32.load8_u offset=380
                                                      local.tee 10
                                                      i32.const 3
                                                      i32.and
                                                      i32.const 1
                                                      i32.eq
                                                      br_if 4 (;@21;)
                                                      i32.const 2
                                                      local.set 3
                                                      local.get 10
                                                      i32.const 2
                                                      i32.ne
                                                      br_if 2 (;@23;)
                                                      local.get 2
                                                      br_if 4 (;@21;)
                                                      br 3 (;@22;)
                                                    end
                                                    local.get 5
                                                    local.set 3
                                                  end
                                                  local.get 2
                                                  local.get 1
                                                  i32.gt_u
                                                  br_if 12 (;@11;)
                                                  local.get 0
                                                  local.get 2
                                                  i32.const 2
                                                  i32.shl
                                                  i32.add
                                                  local.tee 19
                                                  local.get 1
                                                  local.get 2
                                                  i32.sub
                                                  local.tee 20
                                                  local.get 11
                                                  local.get 3
                                                  call $num_bigint::biguint::algorithms::add2::hb263877f5534fec5
                                                  local.get 4
                                                  i32.const -2
                                                  i32.and
                                                  local.tee 5
                                                  local.get 1
                                                  i32.gt_u
                                                  br_if 13 (;@10;)
                                                  local.get 0
                                                  local.get 5
                                                  i32.const 2
                                                  i32.shl
                                                  i32.add
                                                  local.get 1
                                                  local.get 5
                                                  i32.sub
                                                  local.get 11
                                                  local.get 3
                                                  call $num_bigint::biguint::algorithms::add2::hb263877f5534fec5
                                                  local.get 6
                                                  i32.const 384
                                                  i32.add
                                                  i32.const 8
                                                  i32.add
                                                  local.tee 11
                                                  i32.const 0
                                                  i32.store
                                                  local.get 6
                                                  i32.const 384
                                                  i32.add
                                                  local.get 12
                                                  call $<alloc::vec::Vec<T>_as_alloc::vec::SpecExtend<T_I>>::spec_extend::h866f17bd05355cb6
                                                  local.get 6
                                                  i32.load offset=384
                                                  local.tee 8
                                                  local.get 11
                                                  i32.load
                                                  local.tee 3
                                                  local.get 10
                                                  local.get 2
                                                  local.get 9
                                                  local.get 2
                                                  call $num_bigint::biguint::algorithms::mac3::h458bf79c16a14b72
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      local.get 3
                                                      i32.const -1
                                                      i32.add
                                                      local.get 3
                                                      i32.gt_u
                                                      br_if 0 (;@25;)
                                                      local.get 3
                                                      i32.const 2
                                                      i32.shl
                                                      i32.const -4
                                                      i32.add
                                                      local.set 7
                                                      loop  ;; label = @26
                                                        local.get 3
                                                        i32.const -1
                                                        i32.add
                                                        local.tee 5
                                                        local.get 3
                                                        i32.ge_u
                                                        br_if 1 (;@25;)
                                                        local.get 8
                                                        local.get 7
                                                        i32.add
                                                        local.tee 4
                                                        i32.eqz
                                                        br_if 1 (;@25;)
                                                        local.get 4
                                                        i32.load
                                                        br_if 1 (;@25;)
                                                        local.get 11
                                                        local.get 5
                                                        i32.store
                                                        local.get 3
                                                        i32.const -2
                                                        i32.add
                                                        local.set 4
                                                        local.get 7
                                                        i32.const -4
                                                        i32.add
                                                        local.set 7
                                                        local.get 5
                                                        local.set 3
                                                        local.get 4
                                                        local.get 5
                                                        i32.le_u
                                                        br_if 0 (;@26;)
                                                        br 2 (;@24;)
                                                      end
                                                    end
                                                    local.get 3
                                                    local.set 5
                                                  end
                                                  local.get 0
                                                  local.get 1
                                                  local.get 8
                                                  local.get 5
                                                  call $num_bigint::biguint::algorithms::add2::hb263877f5534fec5
                                                  local.get 19
                                                  local.get 20
                                                  local.get 8
                                                  local.get 5
                                                  call $num_bigint::biguint::algorithms::add2::hb263877f5534fec5
                                                  local.get 6
                                                  i32.const 400
                                                  i32.add
                                                  local.get 17
                                                  local.get 16
                                                  local.get 10
                                                  local.get 2
                                                  call $num_bigint::biguint::algorithms::sub_sign::hf6edc71fea8ca599
                                                  local.get 6
                                                  i32.const 412
                                                  i32.add
                                                  local.tee 7
                                                  i32.load
                                                  local.set 1
                                                  local.get 6
                                                  i32.const 400
                                                  i32.add
                                                  i32.const 8
                                                  i32.add
                                                  local.tee 5
                                                  i32.load
                                                  local.set 0
                                                  local.get 6
                                                  i32.load offset=404
                                                  local.set 10
                                                  local.get 6
                                                  i32.load8_u offset=400
                                                  local.set 3
                                                  local.get 6
                                                  i32.const 400
                                                  i32.add
                                                  local.get 18
                                                  local.get 15
                                                  local.get 9
                                                  local.get 2
                                                  call $num_bigint::biguint::algorithms::sub_sign::hf6edc71fea8ca599
                                                  local.get 5
                                                  i32.load
                                                  local.set 4
                                                  local.get 6
                                                  i32.load offset=404
                                                  local.set 2
                                                  local.get 3
                                                  i32.const 1
                                                  i32.eq
                                                  br_if 19 (;@4;)
                                                  local.get 6
                                                  i32.load8_u offset=400
                                                  i32.const 3
                                                  i32.and
                                                  local.tee 5
                                                  i32.const 1
                                                  i32.eq
                                                  br_if 19 (;@4;)
                                                  local.get 7
                                                  i32.load
                                                  local.set 7
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      local.get 5
                                                      i32.const 2
                                                      i32.ne
                                                      br_if 0 (;@25;)
                                                      local.get 3
                                                      i32.eqz
                                                      br_if 1 (;@24;)
                                                      br 20 (;@5;)
                                                    end
                                                    local.get 3
                                                    i32.eqz
                                                    br_if 19 (;@5;)
                                                  end
                                                  local.get 19
                                                  local.get 20
                                                  local.get 10
                                                  local.get 1
                                                  local.get 2
                                                  local.get 7
                                                  call $num_bigint::biguint::algorithms::mac3::h458bf79c16a14b72
                                                  local.get 4
                                                  br_if 20 (;@3;)
                                                  br 21 (;@2;)
                                                end
                                                local.get 2
                                                i32.eqz
                                                br_if 1 (;@21;)
                                              end
                                              i32.const 0
                                              local.set 3
                                            end
                                            local.get 6
                                            i32.const 400
                                            i32.add
                                            local.get 7
                                            local.get 4
                                            local.get 6
                                            i32.load offset=368
                                            local.tee 2
                                            local.get 6
                                            i32.load offset=376
                                            call $num_bigint::biguint::algorithms::mul3::hf4ba5a376759f24b
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                local.get 3
                                                i32.const 1
                                                i32.ne
                                                br_if 0 (;@22;)
                                                local.get 6
                                                i32.const 408
                                                i32.add
                                                i32.const 0
                                                i32.store
                                                i32.const 1
                                                local.set 3
                                                br 1 (;@21;)
                                              end
                                              local.get 3
                                              i32.const 1
                                              local.get 6
                                              i32.const 408
                                              i32.add
                                              i32.load
                                              select
                                              local.set 3
                                            end
                                            local.get 6
                                            i32.const 256
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            local.get 6
                                            i32.const 400
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            i32.load
                                            i32.store
                                            local.get 6
                                            local.get 6
                                            i64.load offset=400
                                            i64.store offset=256
                                            local.get 6
                                            local.get 3
                                            i32.store8 offset=268
                                            block  ;; label = @21
                                              local.get 5
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              local.get 7
                                              local.get 5
                                              i32.const 2
                                              i32.shl
                                              i32.const 4
                                              call $__rust_dealloc
                                            end
                                            block  ;; label = @21
                                              local.get 6
                                              i32.load offset=372
                                              local.tee 3
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              local.get 2
                                              local.get 3
                                              i32.const 2
                                              i32.shl
                                              i32.const 4
                                              call $__rust_dealloc
                                            end
                                            i32.const 1
                                            local.set 3
                                            block  ;; label = @21
                                              local.get 6
                                              i32.load8_u offset=204
                                              local.tee 5
                                              i32.const 1
                                              i32.eq
                                              br_if 0 (;@21;)
                                              i32.const 1
                                              local.set 3
                                              local.get 6
                                              i32.load8_u offset=220
                                              local.tee 7
                                              i32.const 3
                                              i32.and
                                              i32.const 1
                                              i32.eq
                                              br_if 0 (;@21;)
                                              i32.const 2
                                              local.set 3
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  local.get 7
                                                  i32.const 2
                                                  i32.ne
                                                  br_if 0 (;@23;)
                                                  local.get 5
                                                  br_if 2 (;@21;)
                                                  br 1 (;@22;)
                                                end
                                                local.get 5
                                                i32.eqz
                                                br_if 1 (;@21;)
                                              end
                                              i32.const 0
                                              local.set 3
                                            end
                                            local.get 6
                                            i32.const 400
                                            i32.add
                                            local.get 6
                                            i32.load offset=192
                                            local.get 6
                                            i32.load offset=200
                                            local.get 6
                                            i32.load offset=208
                                            local.get 6
                                            i32.load offset=216
                                            call $num_bigint::biguint::algorithms::mul3::hf4ba5a376759f24b
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                local.get 3
                                                i32.const 1
                                                i32.ne
                                                br_if 0 (;@22;)
                                                local.get 6
                                                i32.const 408
                                                i32.add
                                                i32.const 0
                                                i32.store
                                                i32.const 1
                                                local.set 5
                                                br 1 (;@21;)
                                              end
                                              local.get 3
                                              i32.const 1
                                              local.get 6
                                              i32.const 408
                                              i32.add
                                              i32.load
                                              select
                                              local.set 5
                                            end
                                            local.get 6
                                            i32.const 272
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            local.get 6
                                            i32.const 400
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            local.tee 3
                                            i32.load
                                            i32.store
                                            local.get 6
                                            local.get 6
                                            i64.load offset=400
                                            i64.store offset=272
                                            local.get 6
                                            local.get 5
                                            i32.store8 offset=284
                                            local.get 6
                                            i32.const 384
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            local.get 6
                                            i32.const 192
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            i64.load
                                            i64.store
                                            local.get 6
                                            local.get 6
                                            i64.load offset=192
                                            i64.store offset=384
                                            local.get 3
                                            local.get 6
                                            i32.const 96
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            i64.load
                                            i64.store
                                            local.get 6
                                            local.get 6
                                            i64.load offset=96
                                            i64.store offset=400
                                            local.get 6
                                            i32.const 368
                                            i32.add
                                            local.get 6
                                            i32.const 384
                                            i32.add
                                            local.get 6
                                            i32.const 400
                                            i32.add
                                            call $<num_bigint::bigint::BigInt_as_core::ops::arith::Add>::add::h1bd8aba9ca36d5bb
                                            local.get 6
                                            i32.load8_u offset=380
                                            local.set 2
                                            local.get 3
                                            local.get 6
                                            i32.const 368
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            i32.load
                                            local.tee 5
                                            i32.store
                                            local.get 6
                                            local.get 6
                                            i64.load offset=368
                                            local.tee 14
                                            i64.store offset=400
                                            local.get 14
                                            i32.wrap_i64
                                            local.set 7
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    local.get 5
                                                    i32.eqz
                                                    br_if 0 (;@24;)
                                                    local.get 5
                                                    i32.const 2
                                                    i32.shl
                                                    local.set 4
                                                    i64.const 0
                                                    local.set 14
                                                    i32.const 0
                                                    local.set 3
                                                    loop  ;; label = @25
                                                      local.get 7
                                                      local.get 3
                                                      i32.add
                                                      local.tee 5
                                                      local.get 5
                                                      i64.load32_u
                                                      i64.const 1
                                                      i64.shl
                                                      local.get 14
                                                      i64.add
                                                      local.tee 14
                                                      i64.store32
                                                      local.get 14
                                                      i64.const 32
                                                      i64.shr_u
                                                      local.set 14
                                                      local.get 4
                                                      local.get 3
                                                      i32.const 4
                                                      i32.add
                                                      local.tee 3
                                                      i32.ne
                                                      br_if 0 (;@25;)
                                                    end
                                                    local.get 6
                                                    i32.const 408
                                                    i32.add
                                                    i32.load
                                                    local.set 3
                                                    local.get 14
                                                    i32.wrap_i64
                                                    local.tee 4
                                                    i32.eqz
                                                    br_if 3 (;@21;)
                                                    local.get 3
                                                    local.get 6
                                                    i32.load offset=404
                                                    i32.ne
                                                    br_if 1 (;@23;)
                                                    local.get 6
                                                    i32.const 400
                                                    i32.add
                                                    local.get 3
                                                    i32.const 1
                                                    call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
                                                    local.get 6
                                                    i32.const 408
                                                    i32.add
                                                    i32.load
                                                    local.set 5
                                                    local.get 6
                                                    i32.load offset=400
                                                    local.set 7
                                                    br 2 (;@22;)
                                                  end
                                                  i32.const 0
                                                  local.set 3
                                                  br 2 (;@21;)
                                                end
                                                local.get 3
                                                local.set 5
                                              end
                                              local.get 6
                                              i32.const 408
                                              i32.add
                                              local.get 5
                                              i32.const 1
                                              i32.add
                                              local.tee 3
                                              i32.store
                                              local.get 7
                                              local.get 5
                                              i32.const 2
                                              i32.shl
                                              i32.add
                                              local.get 4
                                              i32.store
                                            end
                                            i32.const 1
                                            local.set 5
                                            local.get 6
                                            i32.load offset=404
                                            local.set 4
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                local.get 2
                                                i32.const 255
                                                i32.and
                                                i32.const 1
                                                i32.ne
                                                br_if 0 (;@22;)
                                                i32.const 0
                                                local.set 3
                                                br 1 (;@21;)
                                              end
                                              local.get 2
                                              i32.const 1
                                              local.get 3
                                              select
                                              local.set 5
                                            end
                                            local.get 6
                                            local.get 3
                                            i32.store offset=392
                                            local.get 6
                                            local.get 4
                                            i32.store offset=388
                                            local.get 6
                                            local.get 7
                                            i32.store offset=384
                                            local.get 6
                                            local.get 5
                                            i32.store8 offset=396
                                            local.get 6
                                            i32.const 400
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            local.tee 3
                                            local.get 6
                                            i32.const 64
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            i64.load
                                            i64.store
                                            local.get 6
                                            local.get 6
                                            i64.load offset=64
                                            i64.store offset=400
                                            local.get 6
                                            i32.const 344
                                            i32.add
                                            local.get 6
                                            i32.const 384
                                            i32.add
                                            local.get 6
                                            i32.const 400
                                            i32.add
                                            call $<num_bigint::bigint::BigInt_as_core::ops::arith::Sub>::sub::h06058bb1f11f361c.156
                                            local.get 6
                                            i32.const 384
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            local.get 6
                                            i32.const 208
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            i64.load
                                            i64.store
                                            local.get 6
                                            local.get 6
                                            i64.load offset=208
                                            i64.store offset=384
                                            local.get 3
                                            local.get 6
                                            i32.const 144
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            i64.load
                                            i64.store
                                            local.get 6
                                            local.get 6
                                            i64.load offset=144
                                            i64.store offset=400
                                            local.get 6
                                            i32.const 368
                                            i32.add
                                            local.get 6
                                            i32.const 384
                                            i32.add
                                            local.get 6
                                            i32.const 400
                                            i32.add
                                            call $<num_bigint::bigint::BigInt_as_core::ops::arith::Add>::add::h1bd8aba9ca36d5bb
                                            local.get 6
                                            i32.load8_u offset=380
                                            local.set 2
                                            local.get 3
                                            local.get 6
                                            i32.const 368
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            i32.load
                                            local.tee 5
                                            i32.store
                                            local.get 6
                                            local.get 6
                                            i64.load offset=368
                                            local.tee 14
                                            i64.store offset=400
                                            local.get 14
                                            i32.wrap_i64
                                            local.set 7
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    local.get 5
                                                    i32.eqz
                                                    br_if 0 (;@24;)
                                                    local.get 5
                                                    i32.const 2
                                                    i32.shl
                                                    local.set 4
                                                    i64.const 0
                                                    local.set 14
                                                    i32.const 0
                                                    local.set 3
                                                    loop  ;; label = @25
                                                      local.get 7
                                                      local.get 3
                                                      i32.add
                                                      local.tee 5
                                                      local.get 5
                                                      i64.load32_u
                                                      i64.const 1
                                                      i64.shl
                                                      local.get 14
                                                      i64.add
                                                      local.tee 14
                                                      i64.store32
                                                      local.get 14
                                                      i64.const 32
                                                      i64.shr_u
                                                      local.set 14
                                                      local.get 4
                                                      local.get 3
                                                      i32.const 4
                                                      i32.add
                                                      local.tee 3
                                                      i32.ne
                                                      br_if 0 (;@25;)
                                                    end
                                                    local.get 6
                                                    i32.const 408
                                                    i32.add
                                                    i32.load
                                                    local.set 3
                                                    local.get 14
                                                    i32.wrap_i64
                                                    local.tee 4
                                                    i32.eqz
                                                    br_if 3 (;@21;)
                                                    local.get 3
                                                    local.get 6
                                                    i32.load offset=404
                                                    i32.ne
                                                    br_if 1 (;@23;)
                                                    local.get 6
                                                    i32.const 400
                                                    i32.add
                                                    local.get 3
                                                    i32.const 1
                                                    call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
                                                    local.get 6
                                                    i32.const 408
                                                    i32.add
                                                    i32.load
                                                    local.set 5
                                                    local.get 6
                                                    i32.load offset=400
                                                    local.set 7
                                                    br 2 (;@22;)
                                                  end
                                                  i32.const 0
                                                  local.set 3
                                                  br 2 (;@21;)
                                                end
                                                local.get 3
                                                local.set 5
                                              end
                                              local.get 6
                                              i32.const 408
                                              i32.add
                                              local.get 5
                                              i32.const 1
                                              i32.add
                                              local.tee 3
                                              i32.store
                                              local.get 7
                                              local.get 5
                                              i32.const 2
                                              i32.shl
                                              i32.add
                                              local.get 4
                                              i32.store
                                            end
                                            i32.const 1
                                            local.set 5
                                            local.get 6
                                            i32.load offset=404
                                            local.set 4
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                local.get 2
                                                i32.const 255
                                                i32.and
                                                i32.const 1
                                                i32.ne
                                                br_if 0 (;@22;)
                                                i32.const 0
                                                local.set 3
                                                br 1 (;@21;)
                                              end
                                              local.get 2
                                              i32.const 1
                                              local.get 3
                                              select
                                              local.set 5
                                            end
                                            local.get 6
                                            local.get 3
                                            i32.store offset=392
                                            local.get 6
                                            local.get 4
                                            i32.store offset=388
                                            local.get 6
                                            local.get 7
                                            i32.store offset=384
                                            local.get 6
                                            local.get 5
                                            i32.store8 offset=396
                                            local.get 6
                                            i32.const 400
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            local.get 6
                                            i32.const 112
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            i64.load
                                            i64.store
                                            local.get 6
                                            local.get 6
                                            i64.load offset=112
                                            i64.store offset=400
                                            local.get 6
                                            i32.const 368
                                            i32.add
                                            local.get 6
                                            i32.const 384
                                            i32.add
                                            local.get 6
                                            i32.const 400
                                            i32.add
                                            call $<num_bigint::bigint::BigInt_as_core::ops::arith::Sub>::sub::h06058bb1f11f361c.156
                                            local.get 6
                                            i32.load offset=352
                                            local.set 4
                                            local.get 6
                                            i32.load offset=348
                                            local.set 5
                                            local.get 6
                                            i32.load offset=344
                                            local.set 7
                                            i32.const 1
                                            local.set 3
                                            block  ;; label = @21
                                              local.get 6
                                              i32.load8_u offset=356
                                              local.tee 2
                                              i32.const 1
                                              i32.eq
                                              br_if 0 (;@21;)
                                              i32.const 1
                                              local.set 3
                                              local.get 6
                                              i32.load8_u offset=380
                                              local.tee 10
                                              i32.const 3
                                              i32.and
                                              i32.const 1
                                              i32.eq
                                              br_if 0 (;@21;)
                                              i32.const 2
                                              local.set 3
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  local.get 10
                                                  i32.const 2
                                                  i32.ne
                                                  br_if 0 (;@23;)
                                                  local.get 2
                                                  br_if 2 (;@21;)
                                                  br 1 (;@22;)
                                                end
                                                local.get 2
                                                i32.eqz
                                                br_if 1 (;@21;)
                                              end
                                              i32.const 0
                                              local.set 3
                                            end
                                            local.get 6
                                            i32.const 400
                                            i32.add
                                            local.get 7
                                            local.get 4
                                            local.get 6
                                            i32.load offset=368
                                            local.tee 2
                                            local.get 6
                                            i32.load offset=376
                                            call $num_bigint::biguint::algorithms::mul3::hf4ba5a376759f24b
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                local.get 3
                                                i32.const 1
                                                i32.ne
                                                br_if 0 (;@22;)
                                                local.get 6
                                                i32.const 408
                                                i32.add
                                                i32.const 0
                                                i32.store
                                                i32.const 1
                                                local.set 3
                                                br 1 (;@21;)
                                              end
                                              local.get 3
                                              i32.const 1
                                              local.get 6
                                              i32.const 408
                                              i32.add
                                              i32.load
                                              select
                                              local.set 3
                                            end
                                            local.get 6
                                            i32.const 296
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            local.get 6
                                            i32.const 400
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            i32.load
                                            i32.store
                                            local.get 6
                                            local.get 6
                                            i64.load offset=400
                                            i64.store offset=296
                                            block  ;; label = @21
                                              local.get 5
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              local.get 7
                                              local.get 5
                                              i32.const 2
                                              i32.shl
                                              i32.const 4
                                              call $__rust_dealloc
                                            end
                                            block  ;; label = @21
                                              local.get 6
                                              i32.load offset=372
                                              local.tee 5
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              local.get 2
                                              local.get 5
                                              i32.const 2
                                              i32.shl
                                              i32.const 4
                                              call $__rust_dealloc
                                            end
                                            local.get 6
                                            i32.const 400
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            local.get 6
                                            i32.const 296
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            i32.load
                                            i32.store
                                            local.get 6
                                            i32.const 415
                                            i32.add
                                            local.get 6
                                            i32.const 295
                                            i32.add
                                            i32.load8_u
                                            i32.store8
                                            local.get 6
                                            local.get 3
                                            i32.store8 offset=412
                                            local.get 6
                                            local.get 6
                                            i64.load offset=296
                                            i64.store offset=400
                                            local.get 6
                                            local.get 6
                                            i32.load16_u offset=293 align=1
                                            i32.store16 offset=413 align=1
                                            local.get 6
                                            i32.const 384
                                            i32.add
                                            local.get 6
                                            i32.const 400
                                            i32.add
                                            local.get 6
                                            i32.const 256
                                            i32.add
                                            call $<num_bigint::bigint::BigInt_as_core::ops::arith::Sub<&num_bigint::bigint::BigInt>>::sub::h378b241d5f41cdcb
                                            local.get 6
                                            i32.load8_u offset=396
                                            local.set 7
                                            local.get 6
                                            i32.const 368
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            local.get 6
                                            i32.const 384
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            i32.load
                                            i32.store
                                            local.get 6
                                            local.get 6
                                            i64.load offset=384
                                            i64.store offset=368
                                            local.get 6
                                            i32.const 400
                                            i32.add
                                            local.get 6
                                            i32.const 368
                                            i32.add
                                            i32.const 3
                                            call $num_bigint::biguint::algorithms::div_rem_digit::h744a33ccfc0e683c
                                            i32.const 1
                                            local.set 3
                                            local.get 6
                                            i32.load offset=404
                                            local.set 5
                                            local.get 6
                                            i32.load offset=400
                                            local.set 2
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                local.get 7
                                                i32.const 1
                                                i32.ne
                                                br_if 0 (;@22;)
                                                i32.const 0
                                                local.set 10
                                                br 1 (;@21;)
                                              end
                                              local.get 7
                                              i32.const 1
                                              local.get 6
                                              i32.load offset=408
                                              local.tee 10
                                              select
                                              local.set 3
                                            end
                                            local.get 6
                                            local.get 10
                                            i32.store offset=320
                                            local.get 6
                                            local.get 5
                                            i32.store offset=316
                                            local.get 6
                                            local.get 2
                                            i32.store offset=312
                                            local.get 6
                                            local.get 3
                                            i32.store8 offset=324
                                            local.get 6
                                            i32.const 400
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            local.get 6
                                            i32.const 256
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            i64.load
                                            i64.store
                                            local.get 6
                                            local.get 6
                                            i64.load offset=256
                                            i64.store offset=400
                                            local.get 6
                                            i32.const 384
                                            i32.add
                                            local.get 6
                                            i32.const 400
                                            i32.add
                                            local.get 6
                                            i32.const 272
                                            i32.add
                                            call $<num_bigint::bigint::BigInt_as_core::ops::arith::Sub<&num_bigint::bigint::BigInt>>::sub::h378b241d5f41cdcb
                                            local.get 6
                                            i32.load8_u offset=396
                                            local.set 7
                                            local.get 6
                                            i32.const 368
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            local.get 6
                                            i32.const 384
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            i32.load
                                            i32.store
                                            local.get 6
                                            local.get 6
                                            i64.load offset=384
                                            i64.store offset=368
                                            local.get 6
                                            i32.const 400
                                            i32.add
                                            local.get 6
                                            i32.const 368
                                            i32.add
                                            i32.const 2
                                            call $num_bigint::biguint::algorithms::div_rem_digit::h744a33ccfc0e683c
                                            i32.const 1
                                            local.set 4
                                            local.get 6
                                            i32.load offset=404
                                            local.set 9
                                            local.get 6
                                            i32.load offset=400
                                            local.set 8
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                local.get 7
                                                i32.const 1
                                                i32.ne
                                                br_if 0 (;@22;)
                                                i32.const 0
                                                local.set 12
                                                br 1 (;@21;)
                                              end
                                              local.get 7
                                              i32.const 1
                                              local.get 6
                                              i32.load offset=408
                                              local.tee 12
                                              select
                                              local.set 4
                                            end
                                            local.get 6
                                            local.get 12
                                            i32.store offset=336
                                            local.get 6
                                            local.get 9
                                            i32.store offset=332
                                            local.get 6
                                            local.get 8
                                            i32.store offset=328
                                            local.get 6
                                            local.get 4
                                            i32.store8 offset=340
                                            local.get 6
                                            i32.const 400
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            local.get 6
                                            i32.const 272
                                            i32.add
                                            i32.const 8
                                            i32.add
                                            i64.load
                                            i64.store
                                            local.get 6
                                            local.get 6
                                            i64.load offset=272
                                            i64.store offset=400
                                            local.get 6
                                            i32.const 344
                                            i32.add
                                            local.get 6
                                            i32.const 400
                                            i32.add
                                            local.get 6
                                            i32.const 224
                                            i32.add
                                            call $<num_bigint::bigint::BigInt_as_core::ops::arith::Sub<&num_bigint::bigint::BigInt>>::sub::h378b241d5f41cdcb
                                            local.get 6
                                            i32.const 366
                                            i32.add
                                            local.get 6
                                            i32.const 327
                                            i32.add
                                            i32.load8_u
                                            i32.store8
                                            local.get 6
                                            local.get 6
                                            i32.load16_u offset=325 align=1
                                            i32.store16 offset=364
                                            local.get 6
                                            i32.load8_u offset=356
                                            local.set 7
                                            block  ;; label = @21
                                              local.get 3
                                              i32.const 1
                                              i32.ne
                                              br_if 0 (;@21;)
                                              local.get 6
                                              i32.const 384
                                              i32.add
                                              local.get 6
                                              i32.const 344
                                              i32.add
                                              call $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9
                                              br 14 (;@7;)
                                            end
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      local.get 7
                                                      i32.const 1
                                                      i32.eq
                                                      br_if 0 (;@25;)
                                                      local.get 7
                                                      i32.const 2
                                                      i32.ne
                                                      br_if 1 (;@24;)
                                                      local.get 3
                                                      i32.eqz
                                                      br_if 2 (;@23;)
                                                      br 16 (;@9;)
                                                    end
                                                    i32.const 2
                                                    local.set 4
                                                    local.get 6
                                                    i32.const 400
                                                    i32.add
                                                    i32.const 2
                                                    i32.add
                                                    local.get 6
                                                    i32.const 364
                                                    i32.add
                                                    i32.const 2
                                                    i32.add
                                                    i32.load8_u
                                                    i32.store8
                                                    local.get 6
                                                    local.get 6
                                                    i32.load16_u offset=364
                                                    i32.store16 offset=400
                                                    local.get 3
                                                    i32.const 3
                                                    i32.and
                                                    local.tee 3
                                                    i32.const 1
                                                    i32.eq
                                                    br_if 2 (;@22;)
                                                    local.get 3
                                                    i32.const 2
                                                    i32.ne
                                                    br_if 3 (;@21;)
                                                    i32.const 0
                                                    local.set 4
                                                    br 3 (;@21;)
                                                  end
                                                  local.get 3
                                                  i32.eqz
                                                  br_if 14 (;@9;)
                                                end
                                                local.get 6
                                                local.get 10
                                                i32.store offset=408
                                                local.get 6
                                                local.get 5
                                                i32.store offset=404
                                                local.get 6
                                                local.get 2
                                                i32.store offset=400
                                                i32.const 1
                                                local.set 4
                                                local.get 6
                                                i32.const 368
                                                i32.add
                                                local.get 6
                                                i32.const 400
                                                i32.add
                                                local.get 6
                                                i32.const 344
                                                i32.add
                                                call $<num_bigint::biguint::BigUint_as_core::ops::arith::Add<&num_bigint::biguint::BigUint>>::add::h573de8f1a23e5fb4
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    local.get 7
                                                    i32.const 1
                                                    i32.ne
                                                    br_if 0 (;@24;)
                                                    local.get 6
                                                    i32.const 376
                                                    i32.add
                                                    i32.const 0
                                                    i32.store
                                                    br 1 (;@23;)
                                                  end
                                                  local.get 7
                                                  i32.const 1
                                                  local.get 6
                                                  i32.const 376
                                                  i32.add
                                                  i32.load
                                                  select
                                                  local.set 4
                                                end
                                                local.get 6
                                                i32.const 384
                                                i32.add
                                                i32.const 8
                                                i32.add
                                                local.get 6
                                                i32.const 368
                                                i32.add
                                                i32.const 8
                                                i32.add
                                                i32.load
                                                i32.store
                                                local.get 6
                                                local.get 6
                                                i64.load offset=368
                                                i64.store offset=384
                                                br 14 (;@8;)
                                              end
                                              i32.const 1
                                              local.set 4
                                            end
                                            local.get 6
                                            i32.const 399
                                            i32.add
                                            local.get 6
                                            i32.const 402
                                            i32.add
                                            i32.load8_u
                                            i32.store8
                                            local.get 6
                                            local.get 4
                                            i32.store8 offset=396
                                            local.get 6
                                            local.get 10
                                            i32.store offset=392
                                            local.get 6
                                            local.get 5
                                            i32.store offset=388
                                            local.get 6
                                            local.get 2
                                            i32.store offset=384
                                            local.get 6
                                            local.get 6
                                            i32.load16_u offset=400
                                            i32.store16 offset=397 align=1
                                            br 14 (;@6;)
                                          end
                                          call $core::option::expect_failed::h9ef8b2757246ebad
                                          unreachable
                                        end
                                        local.get 2
                                        local.get 1
                                        call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
                                        unreachable
                                      end
                                      i32.const 37944
                                      call $core::panicking::panic::hb7cb5b256fd27bcf
                                      unreachable
                                    end
                                    local.get 2
                                    local.get 8
                                    call $core::slice::slice_index_len_fail::hb81ac75c4a989ce8
                                    unreachable
                                  end
                                  local.get 15
                                  local.get 16
                                  call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
                                  unreachable
                                end
                                local.get 16
                                local.get 4
                                call $core::slice::slice_index_len_fail::hb81ac75c4a989ce8
                                unreachable
                              end
                              local.get 11
                              local.get 8
                              call $core::slice::slice_index_len_fail::hb81ac75c4a989ce8
                              unreachable
                            end
                            local.get 11
                            local.get 17
                            call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
                            unreachable
                          end
                          local.get 17
                          local.get 8
                          call $core::slice::slice_index_len_fail::hb81ac75c4a989ce8
                          unreachable
                        end
                        local.get 2
                        local.get 1
                        call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
                        unreachable
                      end
                      local.get 5
                      local.get 1
                      call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
                      unreachable
                    end
                    block  ;; label = @9
                      local.get 6
                      i32.load offset=352
                      local.tee 3
                      local.get 10
                      i32.lt_u
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        local.get 3
                        local.get 10
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 10
                        i32.const 2
                        i32.shl
                        local.set 4
                        local.get 2
                        i32.const -4
                        i32.add
                        local.set 19
                        local.get 3
                        i32.const 2
                        i32.shl
                        local.set 3
                        local.get 6
                        i32.load offset=344
                        i32.const -4
                        i32.add
                        local.set 15
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 3
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 4
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 15
                            local.get 3
                            i32.add
                            i32.load
                            local.tee 9
                            local.get 19
                            local.get 4
                            i32.add
                            i32.load
                            local.tee 12
                            i32.lt_u
                            br_if 3 (;@9;)
                            local.get 4
                            i32.const -4
                            i32.add
                            local.set 4
                            local.get 3
                            i32.const -4
                            i32.add
                            local.set 3
                            local.get 9
                            local.get 12
                            i32.le_u
                            br_if 0 (;@12;)
                            br 2 (;@10;)
                          end
                        end
                        local.get 6
                        i32.const 0
                        i32.store offset=392
                        local.get 6
                        i64.const 4
                        i64.store offset=384
                        i32.const 1
                        local.set 7
                        br 3 (;@7;)
                      end
                      local.get 6
                      local.get 10
                      i32.store offset=408
                      local.get 6
                      local.get 5
                      i32.store offset=404
                      local.get 6
                      local.get 2
                      i32.store offset=400
                      i32.const 1
                      local.set 4
                      local.get 6
                      i32.const 368
                      i32.add
                      local.get 6
                      i32.const 344
                      i32.add
                      local.get 6
                      i32.const 400
                      i32.add
                      call $<&num_bigint::biguint::BigUint_as_core::ops::arith::Sub<num_bigint::biguint::BigUint>>::sub::hdef5b659a0eef7cc
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 7
                          i32.const 1
                          i32.ne
                          br_if 0 (;@11;)
                          local.get 6
                          i32.const 376
                          i32.add
                          i32.const 0
                          i32.store
                          br 1 (;@10;)
                        end
                        local.get 7
                        i32.const 1
                        local.get 6
                        i32.const 376
                        i32.add
                        i32.load
                        select
                        local.set 4
                      end
                      local.get 6
                      i32.const 384
                      i32.add
                      i32.const 8
                      i32.add
                      local.get 6
                      i32.const 368
                      i32.add
                      i32.const 8
                      i32.add
                      i32.load
                      i32.store
                      local.get 6
                      local.get 6
                      i64.load offset=368
                      i64.store offset=384
                      br 1 (;@8;)
                    end
                    i32.const 1
                    local.set 3
                    block  ;; label = @9
                      local.get 7
                      i32.const 3
                      i32.and
                      local.tee 7
                      i32.const 1
                      i32.eq
                      br_if 0 (;@9;)
                      i32.const 2
                      local.set 3
                      local.get 7
                      i32.const 2
                      i32.ne
                      br_if 0 (;@9;)
                      i32.const 0
                      local.set 3
                    end
                    local.get 6
                    local.get 10
                    i32.store offset=408
                    local.get 6
                    local.get 5
                    i32.store offset=404
                    local.get 6
                    local.get 2
                    i32.store offset=400
                    i32.const 1
                    local.set 4
                    local.get 6
                    i32.const 400
                    i32.add
                    local.get 6
                    i32.const 344
                    i32.add
                    call $<num_bigint::biguint::BigUint_as_core::ops::arith::SubAssign<&num_bigint::biguint::BigUint>>::sub_assign::h2c33f9a06754f570
                    local.get 6
                    i32.load offset=404
                    local.set 5
                    local.get 6
                    i32.load offset=400
                    local.set 7
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 3
                        i32.const 1
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 2
                        br 1 (;@9;)
                      end
                      local.get 3
                      i32.const 1
                      local.get 6
                      i32.load offset=408
                      local.tee 2
                      select
                      local.set 4
                    end
                    local.get 6
                    local.get 2
                    i32.store offset=392
                    local.get 6
                    local.get 5
                    i32.store offset=388
                    local.get 6
                    local.get 7
                    i32.store offset=384
                  end
                  local.get 6
                  local.get 4
                  i32.store8 offset=396
                  br 1 (;@6;)
                end
                local.get 6
                local.get 7
                i32.store8 offset=396
                block  ;; label = @7
                  local.get 5
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 5
                  i32.const 2
                  i32.shl
                  i32.const 4
                  call $__rust_dealloc
                end
                local.get 7
                local.set 4
              end
              local.get 6
              i32.const 368
              i32.add
              i32.const 8
              i32.add
              local.get 6
              i32.const 384
              i32.add
              i32.const 8
              i32.add
              i32.load
              i32.store
              local.get 6
              local.get 6
              i64.load offset=384
              i64.store offset=368
              local.get 6
              i32.const 400
              i32.add
              local.get 6
              i32.const 368
              i32.add
              i32.const 2
              call $num_bigint::biguint::algorithms::div_rem_digit::h744a33ccfc0e683c
              i32.const 1
              local.set 3
              local.get 6
              i32.load offset=404
              local.set 5
              local.get 6
              i32.load offset=400
              local.set 7
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  i32.const 1
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 2
                  br 1 (;@6;)
                end
                local.get 4
                i32.const 1
                local.get 6
                i32.load offset=408
                local.tee 2
                select
                local.set 3
              end
              local.get 6
              local.get 2
              i32.store offset=376
              local.get 6
              local.get 5
              i32.store offset=372
              local.get 6
              local.get 7
              i32.store offset=368
              local.get 6
              local.get 3
              i32.store8 offset=380
              local.get 6
              i32.const 252
              i32.add
              i32.load8_u
              local.set 2
              local.get 6
              i32.const 400
              i32.add
              local.get 6
              i32.const 240
              i32.add
              call $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9
              local.get 6
              local.get 2
              i32.store8 offset=412
              local.get 6
              i32.const 384
              i32.add
              i32.const 8
              i32.add
              local.get 6
              i32.const 400
              i32.add
              i32.const 8
              i32.add
              i32.load
              local.tee 3
              i32.store
              local.get 6
              local.get 6
              i64.load offset=400
              local.tee 14
              i64.store offset=384
              local.get 14
              i32.wrap_i64
              local.set 7
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 3
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 3
                      i32.const 2
                      i32.shl
                      local.set 4
                      i64.const 0
                      local.set 14
                      i32.const 0
                      local.set 3
                      loop  ;; label = @10
                        local.get 7
                        local.get 3
                        i32.add
                        local.tee 5
                        local.get 5
                        i64.load32_u
                        i64.const 1
                        i64.shl
                        local.get 14
                        i64.add
                        local.tee 14
                        i64.store32
                        local.get 14
                        i64.const 32
                        i64.shr_u
                        local.set 14
                        local.get 4
                        local.get 3
                        i32.const 4
                        i32.add
                        local.tee 3
                        i32.ne
                        br_if 0 (;@10;)
                      end
                      local.get 6
                      i32.const 392
                      i32.add
                      i32.load
                      local.set 3
                      local.get 14
                      i32.wrap_i64
                      local.tee 4
                      i32.eqz
                      br_if 3 (;@6;)
                      local.get 3
                      local.get 6
                      i32.load offset=388
                      i32.ne
                      br_if 1 (;@8;)
                      local.get 6
                      i32.const 384
                      i32.add
                      local.get 3
                      i32.const 1
                      call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
                      local.get 6
                      i32.const 392
                      i32.add
                      i32.load
                      local.set 5
                      local.get 6
                      i32.load offset=384
                      local.set 7
                      br 2 (;@7;)
                    end
                    i32.const 0
                    local.set 3
                    br 2 (;@6;)
                  end
                  local.get 3
                  local.set 5
                end
                local.get 6
                i32.const 392
                i32.add
                local.get 5
                i32.const 1
                i32.add
                local.tee 3
                i32.store
                local.get 7
                local.get 5
                i32.const 2
                i32.shl
                i32.add
                local.get 4
                i32.store
              end
              i32.const 1
              local.set 5
              local.get 6
              i32.load offset=388
              local.set 4
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.const 255
                  i32.and
                  i32.const 1
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 3
                  br 1 (;@6;)
                end
                local.get 2
                i32.const 1
                local.get 3
                select
                local.set 5
              end
              local.get 6
              local.get 3
              i32.store offset=392
              local.get 6
              local.get 4
              i32.store offset=388
              local.get 6
              local.get 7
              i32.store offset=384
              local.get 6
              local.get 5
              i32.store8 offset=396
              local.get 6
              i32.const 312
              i32.add
              local.get 6
              i32.const 368
              i32.add
              local.get 6
              i32.const 384
              i32.add
              call $<num_bigint::bigint::BigInt_as_core::ops::arith::Add>::add::h1bd8aba9ca36d5bb
              local.get 6
              i32.const 370
              i32.add
              local.tee 10
              local.get 6
              i32.const 344
              i32.add
              i32.const 15
              i32.add
              i32.load8_u
              i32.store8
              local.get 6
              local.get 6
              i32.load16_u offset=357 align=1
              i32.store16 offset=368
              local.get 6
              i32.const 344
              i32.add
              i32.const 12
              i32.add
              i32.load8_u
              local.set 3
              local.get 6
              i32.load offset=352
              local.set 7
              local.get 6
              i32.load offset=348
              local.set 5
              local.get 6
              i32.load offset=344
              local.set 4
              block  ;; label = @6
                block  ;; label = @7
                  local.get 6
                  i32.const 328
                  i32.add
                  i32.const 12
                  i32.add
                  i32.load8_u
                  local.tee 2
                  i32.const 1
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 6
                  i32.const 400
                  i32.add
                  i32.const 15
                  i32.add
                  local.get 10
                  i32.load8_u
                  i32.store8
                  local.get 6
                  local.get 3
                  i32.store8 offset=412
                  local.get 6
                  local.get 7
                  i32.store offset=408
                  local.get 6
                  local.get 5
                  i32.store offset=404
                  local.get 6
                  local.get 4
                  i32.store offset=400
                  local.get 6
                  local.get 6
                  i32.load16_u offset=368
                  i32.store16 offset=413 align=1
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 3
                          i32.const 1
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 3
                          i32.const 2
                          i32.ne
                          br_if 1 (;@10;)
                          local.get 2
                          i32.eqz
                          br_if 2 (;@9;)
                          br 4 (;@7;)
                        end
                        local.get 6
                        i32.const 400
                        i32.add
                        local.get 6
                        i32.const 328
                        i32.add
                        call $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9
                        local.get 6
                        local.get 2
                        i32.store8 offset=412
                        local.get 5
                        i32.eqz
                        br_if 4 (;@6;)
                        br 2 (;@8;)
                      end
                      local.get 2
                      i32.eqz
                      br_if 2 (;@7;)
                    end
                    block  ;; label = @9
                      local.get 7
                      local.get 6
                      i32.const 328
                      i32.add
                      i32.const 8
                      i32.add
                      i32.load
                      local.tee 10
                      i32.lt_u
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        local.get 7
                        local.get 10
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 10
                        i32.const 2
                        i32.shl
                        local.set 9
                        local.get 8
                        i32.const -4
                        i32.add
                        local.set 19
                        local.get 7
                        i32.const 2
                        i32.shl
                        local.set 10
                        local.get 4
                        i32.const -4
                        i32.add
                        local.set 15
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 10
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 9
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 15
                            local.get 10
                            i32.add
                            i32.load
                            local.tee 8
                            local.get 19
                            local.get 9
                            i32.add
                            i32.load
                            local.tee 12
                            i32.lt_u
                            br_if 3 (;@9;)
                            local.get 9
                            i32.const -4
                            i32.add
                            local.set 9
                            local.get 10
                            i32.const -4
                            i32.add
                            local.set 10
                            local.get 8
                            local.get 12
                            i32.le_u
                            br_if 0 (;@12;)
                            br 2 (;@10;)
                          end
                        end
                        local.get 6
                        i32.const 0
                        i32.store offset=408
                        local.get 6
                        i64.const 4
                        i64.store offset=400
                        local.get 6
                        i32.const 1
                        i32.store8 offset=412
                        local.get 5
                        br_if 2 (;@8;)
                        br 4 (;@6;)
                      end
                      local.get 6
                      local.get 7
                      i32.store offset=408
                      local.get 6
                      local.get 5
                      i32.store offset=404
                      local.get 6
                      local.get 4
                      i32.store offset=400
                      i32.const 1
                      local.set 5
                      local.get 6
                      i32.const 400
                      i32.add
                      local.get 6
                      i32.const 328
                      i32.add
                      call $<num_bigint::biguint::BigUint_as_core::ops::arith::SubAssign<&num_bigint::biguint::BigUint>>::sub_assign::h2c33f9a06754f570
                      local.get 6
                      i32.load offset=404
                      local.set 7
                      local.get 6
                      i32.load offset=400
                      local.set 4
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 3
                          i32.const 1
                          i32.ne
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 2
                          br 1 (;@10;)
                        end
                        local.get 3
                        i32.const 1
                        local.get 6
                        i32.load offset=408
                        local.tee 2
                        select
                        local.set 5
                      end
                      local.get 6
                      local.get 2
                      i32.store offset=408
                      local.get 6
                      local.get 7
                      i32.store offset=404
                      local.get 6
                      local.get 4
                      i32.store offset=400
                      local.get 6
                      local.get 5
                      i32.store8 offset=412
                      br 3 (;@6;)
                    end
                    local.get 6
                    local.get 7
                    i32.store offset=408
                    local.get 6
                    local.get 5
                    i32.store offset=404
                    local.get 6
                    local.get 4
                    i32.store offset=400
                    local.get 6
                    i32.const 384
                    i32.add
                    local.get 6
                    i32.const 328
                    i32.add
                    local.get 6
                    i32.const 400
                    i32.add
                    call $<&num_bigint::biguint::BigUint_as_core::ops::arith::Sub<num_bigint::biguint::BigUint>>::sub::hdef5b659a0eef7cc
                    local.get 6
                    i32.const 400
                    i32.add
                    i32.const 8
                    i32.add
                    local.get 6
                    i32.load offset=392
                    local.tee 3
                    i32.store
                    local.get 6
                    local.get 6
                    i64.load offset=384
                    i64.store offset=400
                    local.get 6
                    local.get 2
                    i32.const 1
                    local.get 3
                    select
                    i32.store8 offset=412
                    br 2 (;@6;)
                  end
                  local.get 4
                  local.get 5
                  i32.const 2
                  i32.shl
                  i32.const 4
                  call $__rust_dealloc
                  br 1 (;@6;)
                end
                local.get 6
                local.get 7
                i32.store offset=408
                local.get 6
                local.get 5
                i32.store offset=404
                local.get 6
                local.get 4
                i32.store offset=400
                local.get 6
                i32.const 384
                i32.add
                local.get 6
                i32.const 400
                i32.add
                local.get 6
                i32.const 328
                i32.add
                call $<num_bigint::biguint::BigUint_as_core::ops::arith::Add<&num_bigint::biguint::BigUint>>::add::h573de8f1a23e5fb4
                local.get 6
                i32.const 408
                i32.add
                local.get 6
                i32.load offset=392
                local.tee 5
                i32.store
                local.get 6
                local.get 6
                i64.load offset=384
                i64.store offset=400
                local.get 6
                local.get 3
                i32.const 1
                local.get 5
                select
                i32.store8 offset=412
              end
              local.get 6
              i32.const 344
              i32.add
              local.get 6
              i32.const 400
              i32.add
              local.get 6
              i32.const 240
              i32.add
              call $<num_bigint::bigint::BigInt_as_core::ops::arith::Sub<&num_bigint::bigint::BigInt>>::sub::h378b241d5f41cdcb
              local.get 6
              i32.const 400
              i32.add
              i32.const 8
              i32.add
              local.tee 4
              local.get 6
              i32.const 328
              i32.add
              i32.const 8
              i32.add
              local.tee 5
              i64.load
              i64.store
              local.get 6
              local.get 6
              i64.load offset=328
              i64.store offset=400
              local.get 6
              i32.const 328
              i32.add
              local.get 6
              i32.const 400
              i32.add
              local.get 6
              i32.const 312
              i32.add
              call $<num_bigint::bigint::BigInt_as_core::ops::arith::Sub<&num_bigint::bigint::BigInt>>::sub::h378b241d5f41cdcb
              local.get 6
              i32.const 384
              i32.add
              i32.const 8
              i32.add
              local.get 6
              i32.const 224
              i32.add
              i32.const 8
              i32.add
              i64.load
              i64.store
              local.get 6
              local.get 6
              i64.load offset=224
              i64.store offset=384
              local.get 6
              i32.const 328
              i32.add
              i32.const 12
              i32.add
              i32.load
              local.set 7
              local.get 6
              i64.load offset=328
              local.set 14
              local.get 6
              i32.const 400
              i32.add
              i32.const 12
              i32.add
              local.tee 3
              local.get 5
              i32.load
              i32.store
              local.get 6
              local.get 14
              i64.store offset=404 align=4
              local.get 6
              i32.const 1
              i32.store offset=400
              local.get 6
              i32.const 368
              i32.add
              local.get 6
              i32.const 400
              i32.add
              local.get 11
              i32.const 5
              i32.shl
              call $num_bigint::biguint::algorithms::biguint_shl::h0d97096934b982fe.157
              local.get 6
              i64.load offset=368
              local.set 14
              local.get 6
              i32.load offset=376
              local.set 5
              local.get 6
              local.get 7
              i32.store offset=412
              local.get 6
              local.get 5
              i32.store offset=408
              local.get 6
              local.get 14
              i64.store offset=400
              local.get 6
              i32.const 368
              i32.add
              local.get 6
              i32.const 384
              i32.add
              local.get 6
              i32.const 400
              i32.add
              call $<num_bigint::bigint::BigInt_as_core::ops::arith::Add>::add::h1bd8aba9ca36d5bb
              local.get 6
              i32.const 344
              i32.add
              i32.const 12
              i32.add
              i32.load
              local.set 5
              local.get 6
              i64.load offset=344
              local.set 14
              local.get 3
              local.get 6
              i32.const 344
              i32.add
              i32.const 8
              i32.add
              i32.load
              i32.store
              local.get 6
              local.get 14
              i64.store offset=404 align=4
              local.get 6
              i32.const 1
              i32.store offset=400
              local.get 6
              i32.const 384
              i32.add
              local.get 6
              i32.const 400
              i32.add
              local.get 11
              i32.const 6
              i32.shl
              call $num_bigint::biguint::algorithms::biguint_shl::h0d97096934b982fe.157
              local.get 6
              i64.load offset=384
              local.set 14
              local.get 6
              i32.load offset=392
              local.set 7
              local.get 6
              local.get 5
              i32.store offset=412
              local.get 6
              local.get 7
              i32.store offset=408
              local.get 6
              local.get 14
              i64.store offset=400
              local.get 6
              i32.const 384
              i32.add
              local.get 6
              i32.const 368
              i32.add
              local.get 6
              i32.const 400
              i32.add
              call $<num_bigint::bigint::BigInt_as_core::ops::arith::Add>::add::h1bd8aba9ca36d5bb
              local.get 6
              i32.const 312
              i32.add
              i32.const 12
              i32.add
              i32.load
              local.set 5
              local.get 6
              i64.load offset=312
              local.set 14
              local.get 3
              local.get 6
              i32.const 312
              i32.add
              i32.const 8
              i32.add
              i32.load
              i32.store
              local.get 6
              local.get 14
              i64.store offset=404 align=4
              local.get 6
              i32.const 1
              i32.store offset=400
              local.get 6
              i32.const 368
              i32.add
              local.get 6
              i32.const 400
              i32.add
              local.get 11
              i32.const 96
              i32.mul
              call $num_bigint::biguint::algorithms::biguint_shl::h0d97096934b982fe.157
              local.get 6
              i64.load offset=368
              local.set 14
              local.get 6
              i32.load offset=376
              local.set 7
              local.get 6
              local.get 5
              i32.store offset=412
              local.get 6
              local.get 7
              i32.store offset=408
              local.get 6
              local.get 14
              i64.store offset=400
              local.get 6
              i32.const 368
              i32.add
              local.get 6
              i32.const 384
              i32.add
              local.get 6
              i32.const 400
              i32.add
              call $<num_bigint::bigint::BigInt_as_core::ops::arith::Add>::add::h1bd8aba9ca36d5bb
              local.get 6
              i32.const 240
              i32.add
              i32.const 12
              i32.add
              i32.load
              local.set 5
              local.get 6
              i64.load offset=240
              local.set 14
              local.get 3
              local.get 6
              i32.load offset=248
              i32.store
              local.get 6
              local.get 14
              i64.store offset=404 align=4
              local.get 6
              i32.const 1
              i32.store offset=400
              local.get 6
              i32.const 384
              i32.add
              local.get 6
              i32.const 400
              i32.add
              local.get 11
              i32.const 7
              i32.shl
              call $num_bigint::biguint::algorithms::biguint_shl::h0d97096934b982fe.157
              local.get 6
              i64.load offset=384
              local.set 14
              local.get 6
              i32.load offset=392
              local.set 3
              local.get 6
              local.get 5
              i32.store offset=412
              local.get 6
              local.get 3
              i32.store offset=408
              local.get 6
              local.get 14
              i64.store offset=400
              local.get 6
              i32.const 384
              i32.add
              local.get 6
              i32.const 368
              i32.add
              local.get 6
              i32.const 400
              i32.add
              call $<num_bigint::bigint::BigInt_as_core::ops::arith::Add>::add::h1bd8aba9ca36d5bb
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 6
                      i32.load8_u offset=396
                      local.tee 3
                      i32.const 1
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 3
                      i32.const 2
                      i32.ne
                      br_if 2 (;@7;)
                      local.get 6
                      i32.const 400
                      i32.add
                      local.get 6
                      i32.const 384
                      i32.add
                      call $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9
                      local.get 6
                      i32.load offset=400
                      local.tee 3
                      i32.eqz
                      br_if 3 (;@6;)
                      local.get 6
                      i32.const 408
                      i32.add
                      i32.load
                      local.set 7
                      local.get 6
                      i32.load offset=404
                      local.set 5
                      br 1 (;@8;)
                    end
                    i32.const 0
                    local.set 7
                    local.get 4
                    i32.const 0
                    i32.store
                    local.get 6
                    i64.const 4
                    i64.store offset=400
                    i32.const 4
                    local.set 3
                    i32.const 0
                    local.set 5
                  end
                  local.get 0
                  local.get 1
                  local.get 3
                  local.get 7
                  call $num_bigint::biguint::algorithms::add2::hb263877f5534fec5
                  block  ;; label = @8
                    local.get 5
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 3
                    local.get 5
                    i32.const 2
                    i32.shl
                    i32.const 4
                    call $__rust_dealloc
                  end
                  local.get 6
                  i32.load offset=388
                  local.tee 3
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 6
                  i32.load offset=384
                  local.get 3
                  i32.const 2
                  i32.shl
                  i32.const 4
                  call $__rust_dealloc
                  br 6 (;@1;)
                end
                local.get 6
                i32.const 0
                i32.store offset=400
              end
              i32.const 38416
              call $core::panicking::panic::hb7cb5b256fd27bcf
              unreachable
            end
            local.get 6
            i32.const 392
            i32.add
            local.tee 11
            i32.const 0
            i32.store
            local.get 6
            i32.const 384
            i32.add
            local.get 12
            call $<alloc::vec::Vec<T>_as_alloc::vec::SpecExtend<T_I>>::spec_extend::h866f17bd05355cb6
            local.get 6
            i32.load offset=384
            local.tee 8
            local.get 11
            i32.load
            local.tee 3
            local.get 10
            local.get 1
            local.get 2
            local.get 7
            call $num_bigint::biguint::algorithms::mac3::h458bf79c16a14b72
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.const -1
                i32.add
                local.get 3
                i32.gt_u
                br_if 0 (;@6;)
                local.get 3
                i32.const 2
                i32.shl
                i32.const -4
                i32.add
                local.set 7
                loop  ;; label = @7
                  local.get 3
                  i32.const -1
                  i32.add
                  local.tee 5
                  local.get 3
                  i32.ge_u
                  br_if 1 (;@6;)
                  local.get 8
                  local.get 7
                  i32.add
                  local.tee 1
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 1
                  i32.load
                  br_if 1 (;@6;)
                  local.get 11
                  local.get 5
                  i32.store
                  local.get 3
                  i32.const -2
                  i32.add
                  local.set 1
                  local.get 7
                  i32.const -4
                  i32.add
                  local.set 7
                  local.get 5
                  local.set 3
                  local.get 1
                  local.get 5
                  i32.le_u
                  br_if 0 (;@7;)
                  br 2 (;@5;)
                end
              end
              local.get 3
              local.set 5
            end
            local.get 19
            local.get 20
            local.get 8
            local.get 5
            call $num_bigint::biguint::algorithms::sub2::h4e4539b30a6aca64
          end
          local.get 4
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 2
        local.get 4
        i32.const 2
        i32.shl
        i32.const 4
        call $__rust_dealloc
      end
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 10
        local.get 0
        i32.const 2
        i32.shl
        i32.const 4
        call $__rust_dealloc
      end
      local.get 6
      i32.load offset=388
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 8
      local.get 3
      i32.const 2
      i32.shl
      i32.const 4
      call $__rust_dealloc
    end
    local.get 6
    i32.const 416
    i32.add
    global.set 0)
  (func $<&num_bigint::bigint::BigInt_as_core::ops::arith::Add<&num_bigint::bigint::BigInt>>::add::h485505acf3965575 (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i64 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 1
    i32.load8_u offset=12
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load8_u offset=12
        local.tee 5
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        call $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9
        local.get 0
        local.get 4
        i32.store8 offset=12
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.const 1
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              i32.const 2
              i32.ne
              br_if 1 (;@4;)
              local.get 5
              i32.eqz
              br_if 2 (;@3;)
              br 3 (;@2;)
            end
            local.get 0
            local.get 2
            call $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9
            local.get 0
            local.get 5
            i32.store8 offset=12
            br 3 (;@1;)
          end
          local.get 5
          i32.eqz
          br_if 1 (;@2;)
        end
        block  ;; label = @3
          local.get 1
          i32.load offset=8
          local.tee 6
          local.get 2
          i32.load offset=8
          local.tee 7
          i32.lt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 6
            local.get 7
            i32.gt_u
            br_if 0 (;@4;)
            local.get 7
            i32.const 2
            i32.shl
            local.set 7
            local.get 2
            i32.load
            i32.const -4
            i32.add
            local.set 9
            local.get 6
            i32.const 2
            i32.shl
            local.set 6
            local.get 1
            i32.load
            i32.const -4
            i32.add
            local.set 10
            block  ;; label = @5
              loop  ;; label = @6
                local.get 6
                i32.eqz
                br_if 1 (;@5;)
                local.get 7
                i32.eqz
                br_if 1 (;@5;)
                local.get 10
                local.get 6
                i32.add
                i32.load
                local.tee 11
                local.get 9
                local.get 7
                i32.add
                i32.load
                local.tee 12
                i32.lt_u
                br_if 3 (;@3;)
                local.get 7
                i32.const -4
                i32.add
                local.set 7
                local.get 6
                i32.const -4
                i32.add
                local.set 6
                local.get 11
                local.get 12
                i32.le_u
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
            end
            local.get 0
            i32.const 0
            i32.store offset=8
            local.get 0
            i64.const 4
            i64.store align=4
            local.get 0
            i32.const 1
            i32.store8 offset=12
            br 3 (;@1;)
          end
          local.get 3
          i32.const 16
          i32.add
          local.get 1
          call $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9
          local.get 3
          i32.const 16
          i32.add
          local.get 2
          call $<num_bigint::biguint::BigUint_as_core::ops::arith::SubAssign<&num_bigint::biguint::BigUint>>::sub_assign::h2c33f9a06754f570
          i32.const 1
          local.set 1
          local.get 3
          i32.load offset=20
          local.set 2
          local.get 3
          i32.load offset=16
          local.set 5
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.const 1
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              local.set 6
              br 1 (;@4;)
            end
            local.get 4
            i32.const 1
            local.get 3
            i32.load offset=24
            local.tee 6
            select
            local.set 1
          end
          local.get 0
          local.get 6
          i32.store offset=8
          local.get 0
          local.get 2
          i32.store offset=4
          local.get 0
          local.get 5
          i32.store
          local.get 0
          local.get 1
          i32.store8 offset=12
          br 2 (;@1;)
        end
        local.get 3
        i32.const 16
        i32.add
        local.get 2
        call $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9
        local.get 3
        i32.const 16
        i32.add
        local.get 1
        call $<num_bigint::biguint::BigUint_as_core::ops::arith::SubAssign<&num_bigint::biguint::BigUint>>::sub_assign::h2c33f9a06754f570
        local.get 3
        i64.load offset=16
        local.set 8
        local.get 0
        local.get 3
        i32.load offset=24
        local.tee 1
        i32.store offset=8
        local.get 0
        local.get 8
        i64.store align=4
        local.get 0
        local.get 5
        i32.const 1
        local.get 1
        select
        i32.store8 offset=12
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=8
          local.get 2
          i32.load offset=8
          i32.ge_u
          br_if 0 (;@3;)
          local.get 3
          i32.const 16
          i32.add
          local.get 2
          call $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9
          local.get 3
          local.get 3
          i32.const 16
          i32.add
          local.get 1
          call $<num_bigint::biguint::BigUint_as_core::ops::arith::Add<&num_bigint::biguint::BigUint>>::add::h573de8f1a23e5fb4
          br 1 (;@2;)
        end
        local.get 3
        i32.const 16
        i32.add
        local.get 1
        call $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9
        local.get 3
        local.get 3
        i32.const 16
        i32.add
        local.get 2
        call $<num_bigint::biguint::BigUint_as_core::ops::arith::Add<&num_bigint::biguint::BigUint>>::add::h573de8f1a23e5fb4
      end
      i32.const 1
      local.set 1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          i32.const 8
          i32.add
          i32.const 0
          i32.store
          br 1 (;@2;)
        end
        local.get 4
        i32.const 1
        local.get 3
        i32.const 8
        i32.add
        i32.load
        select
        local.set 1
      end
      local.get 0
      local.get 3
      i64.load
      i64.store align=4
      local.get 0
      local.get 1
      i32.store8 offset=12
      local.get 0
      i32.const 8
      i32.add
      local.get 3
      i32.const 8
      i32.add
      i32.load
      i32.store
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func $<&num_bigint::bigint::BigInt_as_core::ops::arith::Sub<&num_bigint::bigint::BigInt>>::sub::hb57ce062f7878844 (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 1
    i32.load8_u offset=12
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load8_u offset=12
        local.tee 5
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        call $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9
        local.get 0
        local.get 4
        i32.store8 offset=12
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.const 1
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              i32.const 2
              i32.ne
              br_if 1 (;@4;)
              local.get 5
              i32.eqz
              br_if 2 (;@3;)
              br 3 (;@2;)
            end
            local.get 3
            local.get 2
            call $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9
            local.get 3
            local.get 5
            i32.store8 offset=12
            i32.const 1
            local.set 1
            block  ;; label = @5
              local.get 5
              i32.const 3
              i32.and
              local.tee 2
              i32.const 1
              i32.eq
              br_if 0 (;@5;)
              i32.const 2
              local.set 1
              local.get 2
              i32.const 2
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              local.set 1
            end
            local.get 3
            i32.const 12
            i32.add
            local.get 1
            i32.store8
            local.get 0
            local.get 3
            i64.load
            i64.store align=4
            local.get 0
            i32.const 8
            i32.add
            local.get 3
            i32.const 8
            i32.add
            i64.load
            i64.store align=4
            br 3 (;@1;)
          end
          local.get 5
          i32.eqz
          br_if 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load offset=8
            local.get 2
            i32.load offset=8
            i32.ge_u
            br_if 0 (;@4;)
            local.get 3
            local.get 2
            call $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9
            local.get 3
            i32.const 16
            i32.add
            local.get 3
            local.get 1
            call $<num_bigint::biguint::BigUint_as_core::ops::arith::Add<&num_bigint::biguint::BigUint>>::add::h573de8f1a23e5fb4
            br 1 (;@3;)
          end
          local.get 3
          local.get 1
          call $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9
          local.get 3
          i32.const 16
          i32.add
          local.get 3
          local.get 2
          call $<num_bigint::biguint::BigUint_as_core::ops::arith::Add<&num_bigint::biguint::BigUint>>::add::h573de8f1a23e5fb4
        end
        i32.const 1
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            i32.const 24
            i32.add
            i32.const 0
            i32.store
            br 1 (;@3;)
          end
          local.get 4
          i32.const 1
          local.get 3
          i32.const 24
          i32.add
          i32.load
          select
          local.set 1
        end
        local.get 0
        local.get 3
        i64.load offset=16
        i64.store align=4
        local.get 0
        local.get 1
        i32.store8 offset=12
        local.get 0
        i32.const 8
        i32.add
        local.get 3
        i32.const 16
        i32.add
        i32.const 8
        i32.add
        i32.load
        i32.store
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.load offset=8
        local.tee 5
        local.get 2
        i32.load offset=8
        local.tee 6
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 5
          local.get 6
          i32.gt_u
          br_if 0 (;@3;)
          local.get 6
          i32.const 2
          i32.shl
          local.set 6
          local.get 2
          i32.load
          i32.const -4
          i32.add
          local.set 7
          local.get 5
          i32.const 2
          i32.shl
          local.set 5
          local.get 1
          i32.load
          i32.const -4
          i32.add
          local.set 8
          block  ;; label = @4
            loop  ;; label = @5
              local.get 5
              i32.eqz
              br_if 1 (;@4;)
              local.get 6
              i32.eqz
              br_if 1 (;@4;)
              local.get 8
              local.get 5
              i32.add
              i32.load
              local.tee 9
              local.get 7
              local.get 6
              i32.add
              i32.load
              local.tee 10
              i32.lt_u
              br_if 3 (;@2;)
              local.get 6
              i32.const -4
              i32.add
              local.set 6
              local.get 5
              i32.const -4
              i32.add
              local.set 5
              local.get 9
              local.get 10
              i32.le_u
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          local.get 0
          i32.const 0
          i32.store offset=8
          local.get 0
          i64.const 4
          i64.store align=4
          local.get 0
          i32.const 1
          i32.store8 offset=12
          br 2 (;@1;)
        end
        local.get 3
        local.get 1
        call $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9
        local.get 3
        local.get 2
        call $<num_bigint::biguint::BigUint_as_core::ops::arith::SubAssign<&num_bigint::biguint::BigUint>>::sub_assign::h2c33f9a06754f570
        i32.const 1
        local.set 1
        local.get 3
        i32.load offset=4
        local.set 2
        local.get 3
        i32.load
        local.set 5
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.set 6
            br 1 (;@3;)
          end
          local.get 4
          i32.const 1
          local.get 3
          i32.load offset=8
          local.tee 6
          select
          local.set 1
        end
        local.get 0
        local.get 6
        i32.store offset=8
        local.get 0
        local.get 2
        i32.store offset=4
        local.get 0
        local.get 5
        i32.store
        local.get 0
        local.get 1
        i32.store8 offset=12
        br 1 (;@1;)
      end
      i32.const 1
      local.set 5
      block  ;; label = @2
        local.get 4
        i32.const 3
        i32.and
        local.tee 4
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        i32.const 2
        local.set 5
        local.get 4
        i32.const 2
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.set 5
      end
      local.get 3
      local.get 2
      call $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9
      local.get 3
      local.get 1
      call $<num_bigint::biguint::BigUint_as_core::ops::arith::SubAssign<&num_bigint::biguint::BigUint>>::sub_assign::h2c33f9a06754f570
      i32.const 1
      local.set 1
      local.get 3
      i32.load offset=4
      local.set 2
      local.get 3
      i32.load
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          local.set 6
          br 1 (;@2;)
        end
        local.get 5
        i32.const 1
        local.get 3
        i32.load offset=8
        local.tee 6
        select
        local.set 1
      end
      local.get 0
      local.get 6
      i32.store offset=8
      local.get 0
      local.get 2
      i32.store offset=4
      local.get 0
      local.get 4
      i32.store
      local.get 0
      local.get 1
      i32.store8 offset=12
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func $<num_bigint::bigint::BigInt_as_core::ops::arith::Add>::add::h1bd8aba9ca36d5bb (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load8_u offset=12
        local.tee 4
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i64.load align=4
        i64.store align=4
        local.get 0
        i32.const 8
        i32.add
        local.get 1
        i32.const 8
        i32.add
        i64.load align=4
        i64.store align=4
        local.get 2
        i32.load offset=4
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load
        local.get 1
        i32.const 2
        i32.shl
        i32.const 4
        call $__rust_dealloc
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load8_u offset=12
                local.tee 5
                i32.const 1
                i32.eq
                br_if 0 (;@6;)
                local.get 5
                i32.const 2
                i32.ne
                br_if 1 (;@5;)
                local.get 4
                i32.eqz
                br_if 2 (;@4;)
                br 4 (;@2;)
              end
              local.get 0
              local.get 2
              i64.load align=4
              i64.store align=4
              local.get 0
              i32.const 8
              i32.add
              local.get 2
              i32.const 8
              i32.add
              i64.load align=4
              i64.store align=4
              br 2 (;@3;)
            end
            local.get 4
            i32.eqz
            br_if 2 (;@2;)
          end
          block  ;; label = @4
            local.get 1
            i32.load offset=8
            local.tee 6
            local.get 2
            i32.load offset=8
            local.tee 7
            i32.lt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 6
              local.get 7
              i32.gt_u
              br_if 0 (;@5;)
              local.get 7
              i32.const 2
              i32.shl
              local.set 7
              local.get 2
              i32.load
              local.tee 8
              i32.const -4
              i32.add
              local.set 9
              local.get 6
              i32.const 2
              i32.shl
              local.set 6
              local.get 1
              i32.load
              i32.const -4
              i32.add
              local.set 10
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 6
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 7
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 10
                  local.get 6
                  i32.add
                  i32.load
                  local.tee 11
                  local.get 9
                  local.get 7
                  i32.add
                  i32.load
                  local.tee 12
                  i32.lt_u
                  br_if 3 (;@4;)
                  local.get 7
                  i32.const -4
                  i32.add
                  local.set 7
                  local.get 6
                  i32.const -4
                  i32.add
                  local.set 6
                  local.get 11
                  local.get 12
                  i32.le_u
                  br_if 0 (;@7;)
                  br 2 (;@5;)
                end
              end
              local.get 0
              i32.const 0
              i32.store offset=8
              local.get 0
              i64.const 4
              i64.store align=4
              local.get 0
              i32.const 1
              i32.store8 offset=12
              local.get 2
              i32.load offset=4
              local.tee 2
              i32.eqz
              br_if 2 (;@3;)
              local.get 8
              local.get 2
              i32.const 2
              i32.shl
              i32.const 4
              call $__rust_dealloc
              br 2 (;@3;)
            end
            local.get 3
            i32.const 32
            i32.add
            i32.const 8
            i32.add
            local.get 2
            i32.const 8
            i32.add
            i32.load
            i32.store
            local.get 3
            local.get 2
            i64.load align=4
            i64.store offset=32
            local.get 3
            i32.const 48
            i32.add
            i32.const 8
            i32.add
            local.tee 2
            local.get 1
            i32.const 8
            i32.add
            i32.load
            i32.store
            local.get 3
            local.get 1
            i64.load align=4
            i64.store offset=48
            local.get 3
            i32.const 48
            i32.add
            local.get 3
            i32.const 32
            i32.add
            call $<num_bigint::biguint::BigUint_as_core::ops::arith::SubAssign<&num_bigint::biguint::BigUint>>::sub_assign::h2c33f9a06754f570
            local.get 2
            i32.load
            local.set 2
            local.get 3
            i32.load offset=52
            local.set 4
            local.get 3
            i32.load offset=48
            local.set 6
            block  ;; label = @5
              local.get 3
              i32.load offset=36
              local.tee 1
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=32
              local.get 1
              i32.const 2
              i32.shl
              i32.const 4
              call $__rust_dealloc
            end
            i32.const 1
            local.set 1
            block  ;; label = @5
              block  ;; label = @6
                local.get 5
                i32.const 1
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                local.set 2
                br 1 (;@5;)
              end
              local.get 5
              i32.const 1
              local.get 2
              select
              local.set 1
            end
            local.get 0
            local.get 2
            i32.store offset=8
            local.get 0
            local.get 4
            i32.store offset=4
            local.get 0
            local.get 6
            i32.store
            local.get 0
            local.get 1
            i32.store8 offset=12
            br 3 (;@1;)
          end
          local.get 3
          i32.const 32
          i32.add
          i32.const 8
          i32.add
          local.get 1
          i32.const 8
          i32.add
          i32.load
          i32.store
          local.get 3
          local.get 1
          i64.load align=4
          i64.store offset=32
          local.get 3
          i32.const 48
          i32.add
          i32.const 8
          i32.add
          local.tee 1
          local.get 2
          i32.const 8
          i32.add
          i32.load
          i32.store
          local.get 3
          local.get 2
          i64.load align=4
          i64.store offset=48
          local.get 3
          i32.const 48
          i32.add
          local.get 3
          i32.const 32
          i32.add
          call $<num_bigint::biguint::BigUint_as_core::ops::arith::SubAssign<&num_bigint::biguint::BigUint>>::sub_assign::h2c33f9a06754f570
          local.get 1
          i32.load
          local.set 2
          local.get 3
          i32.load offset=52
          local.set 1
          local.get 3
          i32.load offset=48
          local.set 6
          block  ;; label = @4
            local.get 3
            i32.load offset=36
            local.tee 7
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.load offset=32
            local.get 7
            i32.const 2
            i32.shl
            i32.const 4
            call $__rust_dealloc
          end
          local.get 0
          local.get 2
          i32.store offset=8
          local.get 0
          local.get 1
          i32.store offset=4
          local.get 0
          local.get 6
          i32.store
          local.get 0
          local.get 4
          i32.const 1
          local.get 2
          select
          i32.store8 offset=12
          br 2 (;@1;)
        end
        local.get 1
        i32.load offset=4
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.load
        local.get 2
        i32.const 2
        i32.shl
        i32.const 4
        call $__rust_dealloc
        br 1 (;@1;)
      end
      local.get 3
      i32.const 16
      i32.add
      i32.const 8
      i32.add
      local.tee 4
      local.get 1
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 3
      local.get 1
      i64.load align=4
      i64.store offset=16
      local.get 3
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.tee 6
      local.get 2
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 3
      local.get 2
      i64.load align=4
      i64.store offset=32
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load offset=20
          local.tee 2
          local.get 3
          i32.load offset=36
          local.tee 1
          i32.ge_u
          br_if 0 (;@3;)
          local.get 3
          i32.const 48
          i32.add
          i32.const 8
          i32.add
          local.get 6
          i32.load
          i32.store
          local.get 3
          local.get 3
          i64.load offset=32
          i64.store offset=48
          local.get 3
          local.get 3
          i32.const 48
          i32.add
          local.get 3
          i32.const 16
          i32.add
          call $<num_bigint::biguint::BigUint_as_core::ops::arith::Add<&num_bigint::biguint::BigUint>>::add::h573de8f1a23e5fb4
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=16
          local.get 2
          i32.const 2
          i32.shl
          i32.const 4
          call $__rust_dealloc
          br 1 (;@2;)
        end
        local.get 3
        i32.const 48
        i32.add
        i32.const 8
        i32.add
        local.get 4
        i32.load
        i32.store
        local.get 3
        local.get 3
        i64.load offset=16
        i64.store offset=48
        local.get 3
        local.get 3
        i32.const 48
        i32.add
        local.get 3
        i32.const 32
        i32.add
        call $<num_bigint::biguint::BigUint_as_core::ops::arith::Add<&num_bigint::biguint::BigUint>>::add::h573de8f1a23e5fb4
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=32
        local.get 1
        i32.const 2
        i32.shl
        i32.const 4
        call $__rust_dealloc
      end
      i32.const 1
      local.set 2
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          i32.const 8
          i32.add
          i32.const 0
          i32.store
          br 1 (;@2;)
        end
        local.get 5
        i32.const 1
        local.get 3
        i32.const 8
        i32.add
        i32.load
        select
        local.set 2
      end
      local.get 0
      local.get 3
      i64.load
      i64.store align=4
      local.get 0
      local.get 2
      i32.store8 offset=12
      local.get 0
      i32.const 8
      i32.add
      local.get 3
      i32.const 8
      i32.add
      i32.load
      i32.store
    end
    local.get 3
    i32.const 64
    i32.add
    global.set 0)
  (func $<alloc::vec::Vec<T>_as_alloc::vec::SpecExtend<T_I>>::spec_extend::h866f17bd05355cb6 (type 4) (param i32 i32)
    (local i32 i32 i32)
    local.get 0
    local.get 0
    i32.load offset=8
    local.get 1
    call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
    local.get 0
    i32.load offset=8
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.get 2
      i32.const 2
      i32.shl
      i32.add
      local.set 3
      local.get 1
      local.set 4
      loop  ;; label = @2
        local.get 3
        i32.const 0
        i32.store
        local.get 3
        i32.const 4
        i32.add
        local.set 3
        local.get 4
        i32.const -1
        i32.add
        local.tee 4
        br_if 0 (;@2;)
      end
      local.get 2
      local.get 1
      i32.add
      local.set 2
    end
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    i32.store)
  (func $num_bigint::biguint::algorithms::sub_sign::hf6edc71fea8ca599 (type 13) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 5
    global.set 0
    local.get 1
    local.get 2
    i32.const 2
    i32.shl
    local.tee 6
    i32.add
    local.set 7
    local.get 2
    local.set 8
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
                          loop  ;; label = @12
                            local.get 7
                            local.get 1
                            i32.sub
                            i32.const 15
                            i32.le_u
                            br_if 1 (;@11;)
                            local.get 7
                            i32.const -4
                            i32.add
                            i32.load
                            br_if 2 (;@10;)
                            local.get 7
                            i32.const -8
                            i32.add
                            i32.load
                            br_if 3 (;@9;)
                            local.get 7
                            i32.const -12
                            i32.add
                            i32.load
                            br_if 4 (;@8;)
                            local.get 6
                            i32.const -16
                            i32.add
                            local.set 6
                            local.get 8
                            i32.const -4
                            i32.add
                            local.set 8
                            local.get 7
                            i32.const -16
                            i32.add
                            local.tee 7
                            i32.load
                            i32.eqz
                            br_if 0 (;@12;)
                            br 5 (;@7;)
                          end
                        end
                        local.get 1
                        i32.const -4
                        i32.add
                        local.set 9
                        i32.const 0
                        local.set 10
                        i32.const 0
                        local.set 7
                        loop  ;; label = @11
                          local.get 6
                          i32.eqz
                          br_if 5 (;@6;)
                          local.get 7
                          i32.const 1
                          i32.add
                          local.set 7
                          local.get 9
                          local.get 6
                          i32.add
                          local.set 11
                          local.get 6
                          i32.const -4
                          i32.add
                          local.set 6
                          local.get 11
                          i32.load
                          i32.eqz
                          br_if 0 (;@11;)
                        end
                        local.get 8
                        local.get 7
                        i32.sub
                        local.set 8
                        br 3 (;@7;)
                      end
                      local.get 8
                      i32.const -1
                      i32.add
                      local.set 8
                      br 2 (;@7;)
                    end
                    local.get 8
                    i32.const -2
                    i32.add
                    local.set 8
                    br 1 (;@7;)
                  end
                  local.get 8
                  i32.const -3
                  i32.add
                  local.set 8
                end
                local.get 8
                i32.const 1
                i32.add
                local.tee 10
                local.get 2
                i32.gt_u
                br_if 1 (;@5;)
              end
              local.get 3
              local.get 4
              i32.const 2
              i32.shl
              local.tee 6
              i32.add
              local.set 7
              local.get 4
              local.set 8
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 7
                            local.get 3
                            i32.sub
                            i32.const 15
                            i32.le_u
                            br_if 1 (;@11;)
                            local.get 7
                            i32.const -4
                            i32.add
                            i32.load
                            br_if 2 (;@10;)
                            local.get 7
                            i32.const -8
                            i32.add
                            i32.load
                            br_if 3 (;@9;)
                            local.get 7
                            i32.const -12
                            i32.add
                            i32.load
                            br_if 4 (;@8;)
                            local.get 6
                            i32.const -16
                            i32.add
                            local.set 6
                            local.get 8
                            i32.const -4
                            i32.add
                            local.set 8
                            local.get 7
                            i32.const -16
                            i32.add
                            local.tee 7
                            i32.load
                            i32.eqz
                            br_if 0 (;@12;)
                            br 5 (;@7;)
                          end
                        end
                        local.get 3
                        i32.const -4
                        i32.add
                        local.set 9
                        i32.const 0
                        local.set 2
                        i32.const 0
                        local.set 7
                        loop  ;; label = @11
                          local.get 6
                          i32.eqz
                          br_if 5 (;@6;)
                          local.get 7
                          i32.const 1
                          i32.add
                          local.set 7
                          local.get 9
                          local.get 6
                          i32.add
                          local.set 11
                          local.get 6
                          i32.const -4
                          i32.add
                          local.set 6
                          local.get 11
                          i32.load
                          i32.eqz
                          br_if 0 (;@11;)
                        end
                        local.get 8
                        local.get 7
                        i32.sub
                        local.set 8
                        br 3 (;@7;)
                      end
                      local.get 8
                      i32.const -1
                      i32.add
                      local.set 8
                      br 2 (;@7;)
                    end
                    local.get 8
                    i32.const -2
                    i32.add
                    local.set 8
                    br 1 (;@7;)
                  end
                  local.get 8
                  i32.const -3
                  i32.add
                  local.set 8
                end
                local.get 8
                i32.const 1
                i32.add
                local.tee 2
                local.get 4
                i32.gt_u
                br_if 2 (;@4;)
              end
              local.get 10
              local.get 2
              i32.lt_u
              br_if 3 (;@2;)
              local.get 10
              local.get 2
              i32.gt_u
              br_if 2 (;@3;)
              local.get 2
              i32.const 2
              i32.shl
              local.set 6
              local.get 3
              i32.const -4
              i32.add
              local.set 4
              local.get 10
              i32.const 2
              i32.shl
              local.set 7
              local.get 1
              i32.const -4
              i32.add
              local.set 9
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 7
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 6
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 9
                  local.get 7
                  i32.add
                  i32.load
                  local.tee 8
                  local.get 4
                  local.get 6
                  i32.add
                  i32.load
                  local.tee 11
                  i32.lt_u
                  br_if 5 (;@2;)
                  local.get 6
                  i32.const -4
                  i32.add
                  local.set 6
                  local.get 7
                  i32.const -4
                  i32.add
                  local.set 7
                  local.get 8
                  local.get 11
                  i32.le_u
                  br_if 0 (;@7;)
                  br 4 (;@3;)
                end
              end
              local.get 0
              i32.const 4
              i32.store offset=4
              local.get 0
              i32.const 1
              i32.store8
              i32.const 0
              local.set 4
              i32.const 0
              local.set 7
              br 4 (;@1;)
            end
            local.get 10
            local.get 2
            call $core::slice::slice_index_len_fail::hb81ac75c4a989ce8
            unreachable
          end
          local.get 2
          local.get 4
          call $core::slice::slice_index_len_fail::hb81ac75c4a989ce8
          unreachable
        end
        local.get 5
        i32.const 8
        i32.add
        local.get 10
        i32.const 0
        call $alloc::raw_vec::RawVec<T_A>::allocate_in::h55f622eb10260618
        local.get 5
        i32.const 0
        i32.store offset=24
        local.get 5
        local.get 5
        i64.load offset=8
        i64.store offset=16
        local.get 5
        i32.const 16
        i32.add
        i32.const 0
        local.get 10
        call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
        local.get 5
        local.get 5
        i32.load offset=24
        local.tee 7
        local.get 10
        i32.add
        local.tee 6
        i32.store offset=24
        local.get 5
        i32.load offset=16
        local.tee 11
        local.get 7
        i32.const 2
        i32.shl
        i32.add
        local.get 1
        local.get 10
        i32.const 2
        i32.shl
        call $memcpy
        drop
        local.get 5
        i32.load offset=20
        local.set 4
        local.get 11
        local.get 6
        local.get 3
        local.get 2
        call $num_bigint::biguint::algorithms::sub2::h4e4539b30a6aca64
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            i32.const -1
            i32.add
            local.tee 7
            local.get 6
            i32.gt_u
            br_if 0 (;@4;)
            local.get 7
            i32.const 2
            i32.shl
            local.set 8
            loop  ;; label = @5
              local.get 6
              i32.const -1
              i32.add
              local.tee 7
              local.get 6
              i32.ge_u
              br_if 1 (;@4;)
              local.get 11
              local.get 8
              i32.add
              local.tee 3
              i32.eqz
              br_if 1 (;@4;)
              local.get 3
              i32.load
              br_if 1 (;@4;)
              local.get 6
              i32.const -2
              i32.add
              local.set 3
              local.get 8
              i32.const -4
              i32.add
              local.set 8
              local.get 7
              local.set 6
              local.get 3
              local.get 7
              i32.le_u
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          local.get 6
          local.set 7
        end
        local.get 0
        local.get 11
        i32.store offset=4
        local.get 0
        i32.const 2
        i32.store8
        br 1 (;@1;)
      end
      local.get 5
      local.get 2
      i32.const 0
      call $alloc::raw_vec::RawVec<T_A>::allocate_in::h55f622eb10260618
      local.get 5
      i32.const 0
      i32.store offset=24
      local.get 5
      local.get 5
      i64.load
      i64.store offset=16
      local.get 5
      i32.const 16
      i32.add
      i32.const 0
      local.get 2
      call $alloc::raw_vec::RawVec<T_A>::reserve::he8ed78e1a8cf77d6
      local.get 5
      local.get 5
      i32.load offset=24
      local.tee 7
      local.get 2
      i32.add
      local.tee 6
      i32.store offset=24
      local.get 5
      i32.load offset=16
      local.tee 11
      local.get 7
      i32.const 2
      i32.shl
      i32.add
      local.get 3
      local.get 2
      i32.const 2
      i32.shl
      call $memcpy
      drop
      local.get 5
      i32.load offset=20
      local.set 4
      local.get 11
      local.get 6
      local.get 1
      local.get 10
      call $num_bigint::biguint::algorithms::sub2::h4e4539b30a6aca64
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.const -1
          i32.add
          local.tee 7
          local.get 6
          i32.gt_u
          br_if 0 (;@3;)
          local.get 7
          i32.const 2
          i32.shl
          local.set 8
          loop  ;; label = @4
            local.get 6
            i32.const -1
            i32.add
            local.tee 7
            local.get 6
            i32.ge_u
            br_if 1 (;@3;)
            local.get 11
            local.get 8
            i32.add
            local.tee 3
            i32.eqz
            br_if 1 (;@3;)
            local.get 3
            i32.load
            br_if 1 (;@3;)
            local.get 6
            i32.const -2
            i32.add
            local.set 3
            local.get 8
            i32.const -4
            i32.add
            local.set 8
            local.get 7
            local.set 6
            local.get 3
            local.get 7
            i32.le_u
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 6
        local.set 7
      end
      local.get 0
      local.get 11
      i32.store offset=4
      local.get 0
      i32.const 0
      i32.store8
    end
    local.get 0
    i32.const 12
    i32.add
    local.get 7
    i32.store
    local.get 0
    i32.const 8
    i32.add
    local.get 4
    i32.store
    local.get 5
    i32.const 32
    i32.add
    global.set 0)
  (func $<num_bigint::bigint::BigInt_as_core::ops::arith::Sub>::sub::h06058bb1f11f361c.156 (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load8_u offset=12
        local.tee 4
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i64.load align=4
        i64.store align=4
        local.get 0
        i32.const 8
        i32.add
        local.get 1
        i32.const 8
        i32.add
        i64.load align=4
        i64.store align=4
        local.get 2
        i32.load offset=4
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load
        local.get 0
        i32.const 2
        i32.shl
        i32.const 4
        call $__rust_dealloc
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.load8_u offset=12
                        local.tee 5
                        i32.const 1
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 5
                        i32.const 2
                        i32.ne
                        br_if 1 (;@9;)
                        local.get 4
                        i32.eqz
                        br_if 2 (;@8;)
                        br 5 (;@5;)
                      end
                      local.get 3
                      i32.const 48
                      i32.add
                      i32.const 8
                      i32.add
                      local.get 2
                      i32.const 8
                      i32.add
                      i32.load
                      i32.store
                      i32.const 2
                      local.set 6
                      local.get 3
                      i32.const 32
                      i32.add
                      i32.const 2
                      i32.add
                      local.get 2
                      i32.const 15
                      i32.add
                      i32.load8_u
                      i32.store8
                      local.get 3
                      local.get 2
                      i64.load align=4
                      i64.store offset=48
                      local.get 3
                      local.get 2
                      i32.load16_u offset=13 align=1
                      i32.store16 offset=32
                      local.get 4
                      i32.const 3
                      i32.and
                      local.tee 2
                      i32.const 1
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 2
                      i32.const 2
                      i32.ne
                      br_if 3 (;@6;)
                      i32.const 0
                      local.set 6
                      br 3 (;@6;)
                    end
                    local.get 4
                    i32.eqz
                    br_if 3 (;@5;)
                  end
                  local.get 3
                  i32.const 16
                  i32.add
                  i32.const 8
                  i32.add
                  local.tee 4
                  local.get 1
                  i32.const 8
                  i32.add
                  i32.load
                  i32.store
                  local.get 3
                  local.get 1
                  i64.load align=4
                  i64.store offset=16
                  local.get 3
                  i32.const 32
                  i32.add
                  i32.const 8
                  i32.add
                  local.tee 6
                  local.get 2
                  i32.const 8
                  i32.add
                  i32.load
                  i32.store
                  local.get 3
                  local.get 2
                  i64.load align=4
                  i64.store offset=32
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 3
                      i32.load offset=20
                      local.tee 2
                      local.get 3
                      i32.load offset=36
                      local.tee 1
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 3
                      i32.const 48
                      i32.add
                      i32.const 8
                      i32.add
                      local.get 6
                      i32.load
                      i32.store
                      local.get 3
                      local.get 3
                      i64.load offset=32
                      i64.store offset=48
                      local.get 3
                      local.get 3
                      i32.const 48
                      i32.add
                      local.get 3
                      i32.const 16
                      i32.add
                      call $<num_bigint::biguint::BigUint_as_core::ops::arith::Add<&num_bigint::biguint::BigUint>>::add::h573de8f1a23e5fb4
                      local.get 2
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 3
                      i32.load offset=16
                      local.get 2
                      i32.const 2
                      i32.shl
                      i32.const 4
                      call $__rust_dealloc
                      br 1 (;@8;)
                    end
                    local.get 3
                    i32.const 48
                    i32.add
                    i32.const 8
                    i32.add
                    local.get 4
                    i32.load
                    i32.store
                    local.get 3
                    local.get 3
                    i64.load offset=16
                    i64.store offset=48
                    local.get 3
                    local.get 3
                    i32.const 48
                    i32.add
                    local.get 3
                    i32.const 32
                    i32.add
                    call $<num_bigint::biguint::BigUint_as_core::ops::arith::Add<&num_bigint::biguint::BigUint>>::add::h573de8f1a23e5fb4
                    local.get 1
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 3
                    i32.load offset=32
                    local.get 1
                    i32.const 2
                    i32.shl
                    i32.const 4
                    call $__rust_dealloc
                  end
                  i32.const 1
                  local.set 2
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 5
                      i32.const 1
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 3
                      i32.const 8
                      i32.add
                      i32.const 0
                      i32.store
                      br 1 (;@8;)
                    end
                    local.get 5
                    i32.const 1
                    local.get 3
                    i32.const 8
                    i32.add
                    i32.load
                    select
                    local.set 2
                  end
                  local.get 0
                  local.get 3
                  i64.load
                  i64.store align=4
                  local.get 0
                  local.get 2
                  i32.store8 offset=12
                  local.get 0
                  i32.const 8
                  i32.add
                  local.get 3
                  i32.const 8
                  i32.add
                  i32.load
                  i32.store
                  br 6 (;@1;)
                end
                i32.const 1
                local.set 6
              end
              local.get 0
              local.get 3
              i64.load offset=48
              i64.store align=4
              local.get 0
              local.get 6
              i32.store8 offset=12
              local.get 0
              local.get 3
              i32.load16_u offset=32
              i32.store16 offset=13 align=1
              local.get 0
              i32.const 8
              i32.add
              local.get 3
              i32.const 48
              i32.add
              i32.const 8
              i32.add
              i32.load
              i32.store
              local.get 0
              i32.const 15
              i32.add
              local.get 3
              i32.const 34
              i32.add
              i32.load8_u
              i32.store8
              br 1 (;@4;)
            end
            local.get 1
            i32.load offset=8
            local.tee 4
            local.get 2
            i32.load offset=8
            local.tee 6
            i32.lt_u
            br_if 2 (;@2;)
            local.get 4
            local.get 6
            i32.gt_u
            br_if 1 (;@3;)
            local.get 6
            i32.const 2
            i32.shl
            local.set 6
            local.get 2
            i32.load
            local.tee 7
            i32.const -4
            i32.add
            local.set 8
            local.get 4
            i32.const 2
            i32.shl
            local.set 4
            local.get 1
            i32.load
            i32.const -4
            i32.add
            local.set 9
            block  ;; label = @5
              loop  ;; label = @6
                local.get 4
                i32.eqz
                br_if 1 (;@5;)
                local.get 6
                i32.eqz
                br_if 1 (;@5;)
                local.get 9
                local.get 4
                i32.add
                i32.load
                local.tee 10
                local.get 8
                local.get 6
                i32.add
                i32.load
                local.tee 11
                i32.lt_u
                br_if 4 (;@2;)
                local.get 6
                i32.const -4
                i32.add
                local.set 6
                local.get 4
                i32.const -4
                i32.add
                local.set 4
                local.get 10
                local.get 11
                i32.le_u
                br_if 0 (;@6;)
                br 3 (;@3;)
              end
            end
            local.get 0
            i32.const 0
            i32.store offset=8
            local.get 0
            i64.const 4
            i64.store align=4
            local.get 0
            i32.const 1
            i32.store8 offset=12
            local.get 2
            i32.load offset=4
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 7
            local.get 2
            i32.const 2
            i32.shl
            i32.const 4
            call $__rust_dealloc
          end
          local.get 1
          i32.load offset=4
          local.tee 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          i32.load
          local.get 2
          i32.const 2
          i32.shl
          i32.const 4
          call $__rust_dealloc
          br 2 (;@1;)
        end
        local.get 3
        i32.const 32
        i32.add
        i32.const 8
        i32.add
        local.get 2
        i32.const 8
        i32.add
        i32.load
        i32.store
        local.get 3
        local.get 2
        i64.load align=4
        i64.store offset=32
        local.get 3
        i32.const 48
        i32.add
        i32.const 8
        i32.add
        local.tee 2
        local.get 1
        i32.const 8
        i32.add
        i32.load
        i32.store
        local.get 3
        local.get 1
        i64.load align=4
        i64.store offset=48
        local.get 3
        i32.const 48
        i32.add
        local.get 3
        i32.const 32
        i32.add
        call $<num_bigint::biguint::BigUint_as_core::ops::arith::SubAssign<&num_bigint::biguint::BigUint>>::sub_assign::h2c33f9a06754f570
        local.get 2
        i32.load
        local.set 2
        local.get 3
        i32.load offset=52
        local.set 4
        local.get 3
        i32.load offset=48
        local.set 6
        block  ;; label = @3
          local.get 3
          i32.load offset=36
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=32
          local.get 1
          i32.const 2
          i32.shl
          i32.const 4
          call $__rust_dealloc
        end
        i32.const 1
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 5
          i32.const 1
          local.get 2
          select
          local.set 1
        end
        local.get 0
        local.get 2
        i32.store offset=8
        local.get 0
        local.get 4
        i32.store offset=4
        local.get 0
        local.get 6
        i32.store
        local.get 0
        local.get 1
        i32.store8 offset=12
        br 1 (;@1;)
      end
      i32.const 1
      local.set 4
      block  ;; label = @2
        local.get 5
        i32.const 3
        i32.and
        local.tee 6
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        i32.const 2
        local.set 4
        local.get 6
        i32.const 2
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
      end
      local.get 3
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 3
      local.get 1
      i64.load align=4
      i64.store offset=32
      local.get 3
      i32.const 48
      i32.add
      i32.const 8
      i32.add
      local.tee 1
      local.get 2
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 3
      local.get 2
      i64.load align=4
      i64.store offset=48
      local.get 3
      i32.const 48
      i32.add
      local.get 3
      i32.const 32
      i32.add
      call $<num_bigint::biguint::BigUint_as_core::ops::arith::SubAssign<&num_bigint::biguint::BigUint>>::sub_assign::h2c33f9a06754f570
      local.get 1
      i32.load
      local.set 2
      local.get 3
      i32.load offset=52
      local.set 6
      local.get 3
      i32.load offset=48
      local.set 5
      block  ;; label = @2
        local.get 3
        i32.load offset=36
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=32
        local.get 1
        i32.const 2
        i32.shl
        i32.const 4
        call $__rust_dealloc
      end
      i32.const 1
      local.set 1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          local.set 2
          br 1 (;@2;)
        end
        local.get 4
        i32.const 1
        local.get 2
        select
        local.set 1
      end
      local.get 0
      local.get 2
      i32.store offset=8
      local.get 0
      local.get 6
      i32.store offset=4
      local.get 0
      local.get 5
      i32.store
      local.get 0
      local.get 1
      i32.store8 offset=12
    end
    local.get 3
    i32.const 64
    i32.add
    global.set 0)
  (func $<num_bigint::bigint::BigInt_as_core::ops::arith::Sub<&num_bigint::bigint::BigInt>>::sub::h378b241d5f41cdcb (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load8_u offset=12
        local.tee 4
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i64.load align=4
        i64.store align=4
        local.get 0
        i32.const 8
        i32.add
        local.get 1
        i32.const 8
        i32.add
        i64.load align=4
        i64.store align=4
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.load8_u offset=12
                  local.tee 5
                  i32.const 1
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 2
                  i32.ne
                  br_if 1 (;@6;)
                  local.get 4
                  i32.eqz
                  br_if 2 (;@5;)
                  br 3 (;@4;)
                end
                local.get 3
                local.get 2
                call $<alloc::vec::Vec<T>_as_core::clone::Clone>::clone::hf10ca4fbeddf29d9
                local.get 3
                local.get 4
                i32.store8 offset=12
                i32.const 1
                local.set 2
                block  ;; label = @7
                  local.get 4
                  i32.const 3
                  i32.and
                  local.tee 4
                  i32.const 1
                  i32.eq
                  br_if 0 (;@7;)
                  i32.const 2
                  local.set 2
                  local.get 4
                  i32.const 2
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 2
                end
                local.get 3
                i32.const 12
                i32.add
                local.get 2
                i32.store8
                local.get 0
                local.get 3
                i64.load
                i64.store align=4
                local.get 0
                i32.const 8
                i32.add
                local.get 3
                i32.const 8
                i32.add
                i64.load
                i64.store align=4
                local.get 1
                i32.load
                local.set 7
                br 3 (;@3;)
              end
              local.get 4
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 3
            i32.const 8
            i32.add
            local.get 1
            i32.const 8
            i32.add
            i32.load
            i32.store
            local.get 3
            local.get 1
            i64.load align=4
            i64.store
            local.get 3
            i32.const 16
            i32.add
            local.get 3
            local.get 2
            call $<num_bigint::biguint::BigUint_as_core::ops::arith::Add<&num_bigint::biguint::BigUint>>::add::h573de8f1a23e5fb4
            i32.const 1
            local.set 1
            block  ;; label = @5
              block  ;; label = @6
                local.get 5
                i32.const 1
                i32.ne
                br_if 0 (;@6;)
                local.get 3
                i32.const 16
                i32.add
                i32.const 8
                i32.add
                i32.const 0
                i32.store
                br 1 (;@5;)
              end
              local.get 5
              i32.const 1
              local.get 3
              i32.const 16
              i32.add
              i32.const 8
              i32.add
              i32.load
              select
              local.set 1
            end
            local.get 0
            local.get 3
            i64.load offset=16
            i64.store align=4
            local.get 0
            local.get 1
            i32.store8 offset=12
            local.get 0
            i32.const 8
            i32.add
            local.get 3
            i32.const 16
            i32.add
            i32.const 8
            i32.add
            i32.load
            i32.store
            br 3 (;@1;)
          end
          local.get 1
          i32.load offset=8
          local.tee 4
          local.get 2
          i32.load offset=8
          local.tee 6
          i32.lt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 4
            local.get 6
            i32.gt_u
            br_if 0 (;@4;)
            local.get 6
            i32.const 2
            i32.shl
            local.set 6
            local.get 2
            i32.load
            i32.const -4
            i32.add
            local.set 8
            local.get 4
            i32.const 2
            i32.shl
            local.set 4
            local.get 1
            i32.load
            local.tee 7
            i32.const -4
            i32.add
            local.set 9
            block  ;; label = @5
              loop  ;; label = @6
                local.get 4
                i32.eqz
                br_if 1 (;@5;)
                local.get 6
                i32.eqz
                br_if 1 (;@5;)
                local.get 9
                local.get 4
                i32.add
                i32.load
                local.tee 10
                local.get 8
                local.get 6
                i32.add
                i32.load
                local.tee 11
                i32.lt_u
                br_if 4 (;@2;)
                local.get 6
                i32.const -4
                i32.add
                local.set 6
                local.get 4
                i32.const -4
                i32.add
                local.set 4
                local.get 10
                local.get 11
                i32.le_u
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
            end
            local.get 0
            i32.const 0
            i32.store offset=8
            local.get 0
            i64.const 4
            i64.store align=4
            local.get 0
            i32.const 1
            i32.store8 offset=12
            br 1 (;@3;)
          end
          local.get 3
          i32.const 8
          i32.add
          local.tee 6
          local.get 1
          i32.const 8
          i32.add
          i32.load
          i32.store
          local.get 3
          local.get 1
          i64.load align=4
          i64.store
          local.get 3
          local.get 2
          call $<num_bigint::biguint::BigUint_as_core::ops::arith::SubAssign<&num_bigint::biguint::BigUint>>::sub_assign::h2c33f9a06754f570
          i32.const 1
          local.set 1
          local.get 3
          i32.load offset=4
          local.set 2
          local.get 3
          i32.load
          local.set 4
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.const 1
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              local.set 6
              br 1 (;@4;)
            end
            local.get 5
            i32.const 1
            local.get 6
            i32.load
            local.tee 6
            select
            local.set 1
          end
          local.get 0
          local.get 6
          i32.store offset=8
          local.get 0
          local.get 2
          i32.store offset=4
          local.get 0
          local.get 4
          i32.store
          local.get 0
          local.get 1
          i32.store8 offset=12
          br 2 (;@1;)
        end
        local.get 1
        i32.load offset=4
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 7
        local.get 1
        i32.const 2
        i32.shl
        i32.const 4
        call $__rust_dealloc
        br 1 (;@1;)
      end
      i32.const 1
      local.set 4
      block  ;; label = @2
        local.get 5
        i32.const 3
        i32.and
        local.tee 6
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        i32.const 2
        local.set 4
        local.get 6
        i32.const 2
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
      end
      local.get 3
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 3
      local.get 1
      i64.load align=4
      i64.store
      local.get 3
      i32.const 16
      i32.add
      local.get 2
      local.get 3
      call $<&num_bigint::biguint::BigUint_as_core::ops::arith::Sub<num_bigint::biguint::BigUint>>::sub::hdef5b659a0eef7cc
      i32.const 1
      local.set 1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          i32.const 16
          i32.add
          i32.const 8
          i32.add
          i32.const 0
          i32.store
          br 1 (;@2;)
        end
        local.get 4
        i32.const 1
        local.get 3
        i32.const 16
        i32.add
        i32.const 8
        i32.add
        i32.load
        select
        local.set 1
      end
      local.get 0
      local.get 3
      i64.load offset=16
      i64.store align=4
      local.get 0
      local.get 1
      i32.store8 offset=12
      local.get 0
      i32.const 8
      i32.add
      local.get 3
      i32.const 16
      i32.add
      i32.const 8
      i32.add
      i32.load
      i32.store
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func $core::option::expect_failed::h9ef8b2757246ebad (type 8)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 37
    i32.store offset=12
    local.get 0
    i32.const 33416
    i32.store offset=8
    local.get 0
    i32.const 36
    i32.add
    i32.const 1
    i32.store
    local.get 0
    i32.const 12
    i32.store offset=44
    local.get 0
    i64.const 1
    i64.store offset=20 align=4
    local.get 0
    i32.const 40152
    i32.store offset=16
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
    i32.const 40160
    call $core::panicking::panic_fmt::h8a97af3c4a58de81
    unreachable)
  (func $alloc::raw_vec::RawVec<T_A>::allocate_in::__closure__::h892cf558725d0f86 (type 8)
    call $alloc::raw_vec::capacity_overflow::hf2acb48acb5ae20a
    unreachable)
  (func $alloc::raw_vec::RawVec<T_A>::allocate_in::__closure__::h98e2056993ad0039 (type 8)
    call $alloc::raw_vec::capacity_overflow::hf2acb48acb5ae20a
    unreachable)
  (func $alloc::raw_vec::RawVec<T_A>::allocate_in::__closure__::hf36f91df86914301 (type 8)
    call $alloc::raw_vec::capacity_overflow::hf2acb48acb5ae20a
    unreachable)
  (func $<&T_as_core::fmt::Debug>::fmt::h6860a7bd4ad4c3ad (type 1) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load
        local.tee 2
        i32.const 16
        i32.and
        br_if 0 (;@2;)
        local.get 0
        i32.load
        local.set 0
        local.get 2
        i32.const 32
        i32.and
        br_if 1 (;@1;)
        local.get 0
        i64.extend_i32_u
        local.get 1
        call $core::fmt::num::imp::fmt_u64::h410eebb512c98a23
        return
      end
      local.get 0
      i32.load
      local.get 1
      call $core::fmt::num::<impl_core::fmt::LowerHex_for_i32>::fmt::h4cbe3cf55e7a5b07
      return
    end
    local.get 0
    local.get 1
    call $core::fmt::num::<impl_core::fmt::UpperHex_for_i32>::fmt::hd7bcfce8448f99a3)
  (func $rust_panic (type 8)
    unreachable
    unreachable)
  (func $std::panicking::continue_panic_fmt::hc2cf477c81abced1 (type 7) (param i32)
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
    i32.const 38416
    call $core::panicking::panic::hb7cb5b256fd27bcf
    unreachable)
  (func $rust_begin_unwind (type 7) (param i32)
    local.get 0
    call $std::panicking::continue_panic_fmt::hc2cf477c81abced1
    unreachable)
  (func $core::ptr::real_drop_in_place::h06e718275dc906bf (type 7) (param i32))
  (func $core::fmt::builders::DebugStruct::field::ha4cf5f78fd42b75a (type 16) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 2
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    i32.const 1
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=4
      br_if 0 (;@1;)
      local.get 5
      i32.const 1
      i32.const 2
      local.get 0
      i32.load8_u offset=5
      local.tee 1
      select
      local.tee 2
      i32.store offset=20
      local.get 5
      i32.const 37622
      i32.const 37620
      local.get 1
      select
      local.tee 6
      i32.store offset=16
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load
            local.tee 1
            i32.load8_u
            i32.const 4
            i32.and
            br_if 0 (;@4;)
            local.get 5
            i32.const 92
            i32.add
            i32.const 12
            i32.store
            local.get 5
            i32.const 12
            i32.store offset=84
            local.get 1
            i32.const 28
            i32.add
            i32.load
            local.set 2
            local.get 5
            local.get 5
            i32.const 8
            i32.add
            i32.store offset=88
            local.get 5
            local.get 5
            i32.const 16
            i32.add
            i32.store offset=80
            local.get 1
            i32.load offset=24
            local.set 1
            local.get 5
            i32.const 44
            i32.add
            i32.const 2
            i32.store
            local.get 5
            i64.const 3
            i64.store offset=28 align=4
            local.get 5
            i32.const 40200
            i32.store offset=24
            local.get 5
            local.get 5
            i32.const 80
            i32.add
            i32.store offset=40
            local.get 1
            local.get 2
            local.get 5
            i32.const 24
            i32.add
            call $core::fmt::write::hf7a0d3bddcb07d0c
            br_if 1 (;@3;)
            local.get 3
            local.get 0
            i32.load
            local.get 4
            i32.load offset=12
            call_indirect (type 1)
            local.set 1
            br 3 (;@1;)
          end
          local.get 5
          i32.const 0
          i32.store8 offset=88
          local.get 1
          i64.load offset=16 align=4
          local.set 7
          local.get 1
          i64.load offset=8 align=4
          local.set 8
          local.get 5
          i32.const 52
          i32.add
          i32.const 40176
          i32.store
          local.get 5
          local.get 1
          i64.load offset=24 align=4
          i64.store offset=80
          local.get 1
          i64.load offset=32 align=4
          local.set 9
          local.get 1
          i64.load offset=40 align=4
          local.set 10
          local.get 5
          local.get 1
          i32.load8_u offset=48
          i32.store8 offset=72
          local.get 1
          i64.load align=4
          local.set 11
          local.get 5
          local.get 8
          i64.store offset=32
          local.get 5
          local.get 7
          i64.store offset=40
          local.get 5
          local.get 10
          i64.store offset=64
          local.get 5
          local.get 9
          i64.store offset=56
          local.get 5
          local.get 11
          i64.store offset=24
          local.get 5
          local.get 5
          i32.const 80
          i32.add
          i32.store offset=48
          local.get 5
          i32.const 80
          i32.add
          local.get 6
          local.get 2
          call $<core::fmt::builders::PadAdapter_as_core::fmt::Write>::write_str::hcb550781fcaa7ef9
          br_if 0 (;@3;)
          local.get 5
          i32.const 80
          i32.add
          i32.const 37623
          i32.const 1
          call $<core::fmt::builders::PadAdapter_as_core::fmt::Write>::write_str::hcb550781fcaa7ef9
          br_if 0 (;@3;)
          local.get 5
          i32.const 80
          i32.add
          local.get 5
          i32.load offset=8
          local.get 5
          i32.load offset=12
          call $<core::fmt::builders::PadAdapter_as_core::fmt::Write>::write_str::hcb550781fcaa7ef9
          br_if 0 (;@3;)
          local.get 5
          i32.const 80
          i32.add
          i32.const 37700
          i32.const 2
          call $<core::fmt::builders::PadAdapter_as_core::fmt::Write>::write_str::hcb550781fcaa7ef9
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 1
        local.set 1
        br 1 (;@1;)
      end
      local.get 3
      local.get 5
      i32.const 24
      i32.add
      local.get 4
      i32.load offset=12
      call_indirect (type 1)
      local.set 1
    end
    local.get 0
    i32.const 1
    i32.store8 offset=5
    local.get 0
    i32.const 4
    i32.add
    local.get 1
    i32.store8
    local.get 5
    i32.const 96
    i32.add
    global.set 0
    local.get 0)
  (func $<&T_as_core::fmt::Debug>::fmt::h39db290c16e4075f (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 0
    local.get 1
    i32.load offset=24
    i32.const 37645
    i32.const 9
    local.get 1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 0)
    local.set 3
    local.get 2
    i32.const 0
    i32.store8 offset=5
    local.get 2
    local.get 3
    i32.store8 offset=4
    local.get 2
    local.get 1
    i32.store
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    i32.const 37654
    i32.const 11
    local.get 2
    i32.const 12
    i32.add
    i32.const 40256
    call $core::fmt::builders::DebugStruct::field::ha4cf5f78fd42b75a
    local.set 1
    local.get 2
    local.get 0
    i32.const 4
    i32.add
    i32.store offset=12
    local.get 1
    i32.const 37665
    i32.const 9
    local.get 2
    i32.const 12
    i32.add
    i32.const 40272
    call $core::fmt::builders::DebugStruct::field::ha4cf5f78fd42b75a
    drop
    local.get 2
    i32.load8_u offset=4
    local.set 1
    block  ;; label = @1
      local.get 2
      i32.load8_u offset=5
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 255
      i32.and
      local.set 0
      i32.const 1
      local.set 1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        local.get 2
        i32.load
        local.tee 1
        i32.load offset=24
        i32.const 37627
        i32.const 37625
        local.get 1
        i32.load
        i32.const 4
        i32.and
        select
        i32.const 2
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 0)
        local.set 1
      end
      local.get 2
      local.get 1
      i32.store8 offset=4
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1
    i32.const 255
    i32.and
    i32.const 0
    i32.ne)
  (func $<&T_as_core::fmt::Debug>::fmt::hb13d666b523d25f8 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.const 28
    i32.add
    local.tee 3
    i32.load
    local.set 4
    local.get 0
    i32.load
    local.tee 0
    i32.load offset=8
    local.set 5
    local.get 0
    i32.load
    local.set 0
    local.get 1
    i32.load offset=24
    local.set 6
    local.get 2
    i32.const 44
    i32.add
    i32.const 0
    i32.store
    local.get 2
    i32.const 37700
    i32.store offset=40
    local.get 2
    i64.const 1
    i64.store offset=28 align=4
    local.get 2
    i32.const 40248
    i32.store offset=24
    local.get 6
    local.get 4
    local.get 2
    i32.const 24
    i32.add
    call $core::fmt::write::hf7a0d3bddcb07d0c
    local.set 4
    i32.const 1
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const 24
          i32.add
          local.set 8
          i32.const 0
          local.set 9
          loop  ;; label = @4
            local.get 2
            local.get 0
            i32.store offset=4
            local.get 4
            i32.const 255
            i32.and
            local.set 6
            i32.const 1
            local.set 4
            block  ;; label = @5
              local.get 6
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 1
                i32.load
                local.tee 4
                i32.const 4
                i32.and
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 9
                  i32.const 255
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 1
                  local.set 4
                  local.get 8
                  i32.load
                  i32.const 37633
                  i32.const 2
                  local.get 3
                  i32.load
                  i32.load offset=12
                  call_indirect (type 0)
                  br_if 2 (;@5;)
                end
                local.get 2
                i32.const 4
                i32.add
                local.get 1
                call $<&T_as_core::fmt::Debug>::fmt::h7c1b8948c71db4fd
                local.set 4
                br 1 (;@5;)
              end
              local.get 2
              i32.const 8
              i32.add
              i32.const 8
              i32.add
              i32.const 0
              i32.store8
              local.get 2
              i32.const 24
              i32.add
              i32.const 28
              i32.add
              i32.const 40176
              i32.store
              local.get 2
              i32.const 24
              i32.add
              i32.const 48
              i32.add
              local.get 1
              i32.const 48
              i32.add
              i32.load8_u
              i32.store8
              local.get 2
              i32.const 24
              i32.add
              i32.const 8
              i32.add
              local.get 1
              i32.const 8
              i32.add
              i64.load align=4
              i64.store
              local.get 2
              i32.const 24
              i32.add
              i32.const 40
              i32.add
              local.get 1
              i32.const 40
              i32.add
              i64.load align=4
              i64.store
              local.get 2
              i32.const 24
              i32.add
              i32.const 32
              i32.add
              local.get 1
              i32.const 32
              i32.add
              i64.load align=4
              i64.store
              local.get 2
              i32.const 24
              i32.add
              i32.const 16
              i32.add
              local.get 1
              i32.const 16
              i32.add
              i64.load align=4
              i64.store
              local.get 2
              local.get 4
              i32.store offset=24
              local.get 2
              i32.const 24
              i32.add
              i32.const 24
              i32.add
              local.get 2
              i32.const 8
              i32.add
              i32.store
              local.get 2
              local.get 8
              i64.load align=4
              i64.store offset=8
              local.get 2
              local.get 1
              i32.const 4
              i32.add
              i32.load
              i32.store offset=28
              block  ;; label = @6
                local.get 2
                i32.const 8
                i32.add
                i32.const 37631
                i32.const 37623
                local.get 9
                i32.const 255
                i32.and
                local.tee 4
                select
                i32.const 2
                i32.const 1
                local.get 4
                select
                call $<core::fmt::builders::PadAdapter_as_core::fmt::Write>::write_str::hcb550781fcaa7ef9
                i32.eqz
                br_if 0 (;@6;)
                i32.const 1
                local.set 4
                br 1 (;@5;)
              end
              local.get 2
              i32.const 4
              i32.add
              local.get 2
              i32.const 24
              i32.add
              call $<&T_as_core::fmt::Debug>::fmt::h7c1b8948c71db4fd
              local.set 4
            end
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            i32.const 1
            local.set 9
            local.get 5
            i32.const -1
            i32.add
            local.tee 5
            br_if 0 (;@4;)
          end
          i32.const 0
          local.set 0
          local.get 4
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        i32.const 1
        local.set 0
        local.get 4
        br_if 1 (;@1;)
      end
      i32.const 1
      local.set 7
      local.get 1
      i32.const 24
      i32.add
      local.tee 4
      i32.load
      i32.const 37700
      i32.const 37623
      local.get 1
      i32.load8_u
      i32.const 4
      i32.and
      i32.eqz
      local.get 0
      i32.or
      local.tee 0
      select
      local.get 0
      i32.const 1
      i32.xor
      local.get 1
      i32.const 28
      i32.add
      local.tee 0
      i32.load
      i32.load offset=12
      call_indirect (type 0)
      br_if 0 (;@1;)
      local.get 4
      i32.load
      i32.const 37635
      i32.const 1
      local.get 0
      i32.load
      i32.load offset=12
      call_indirect (type 0)
      local.set 7
    end
    local.get 2
    i32.const 80
    i32.add
    global.set 0
    local.get 7)
  (func $<&T_as_core::fmt::Debug>::fmt::h7c1b8948c71db4fd (type 1) (param i32 i32) (result i32)
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
              i32.load8_u
              local.set 4
              local.get 3
              i32.const 32
              i32.and
              br_if 1 (;@4;)
              local.get 4
              i64.extend_i32_u
              i64.const 255
              i64.and
              local.get 1
              call $core::fmt::num::imp::fmt_u64::h410eebb512c98a23
              local.set 0
              br 2 (;@3;)
            end
            local.get 0
            i32.load8_u
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
              i32.const 15
              i32.and
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
            i32.const 34485
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
            i32.const 15
            i32.and
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
          i32.const 34485
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
  (func $<core::fmt::builders::PadAdapter_as_core::fmt::Write>::write_str::hcb550781fcaa7ef9 (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.const 40
              i32.add
              local.set 4
              local.get 0
              i32.const 8
              i32.add
              local.set 5
              local.get 3
              i32.const 32
              i32.add
              local.set 6
              local.get 3
              i32.const 28
              i32.add
              local.set 7
              local.get 3
              i32.const 36
              i32.add
              local.set 8
              local.get 0
              i32.const 4
              i32.add
              local.set 9
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 5
                  i32.load8_u
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load
                  i32.const 37616
                  i32.const 4
                  local.get 9
                  i32.load
                  i32.load offset=12
                  call_indirect (type 0)
                  br_if 3 (;@4;)
                end
                local.get 4
                i32.const 10
                i32.store
                local.get 6
                i64.const 4294967306
                i64.store
                local.get 7
                local.get 2
                i32.store
                local.get 3
                i32.const 16
                i32.add
                i32.const 8
                i32.add
                local.tee 10
                i32.const 0
                i32.store
                local.get 3
                local.get 2
                i32.store offset=20
                local.get 3
                local.get 1
                i32.store offset=16
                local.get 3
                i32.const 8
                i32.add
                i32.const 10
                local.get 1
                local.get 2
                call $core::slice::memchr::memchr::h03ff8eec60686a90
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 3
                          i32.load offset=8
                          i32.const 1
                          i32.ne
                          br_if 0 (;@11;)
                          local.get 3
                          i32.load offset=12
                          local.set 11
                          loop  ;; label = @12
                            local.get 10
                            local.get 11
                            local.get 10
                            i32.load
                            i32.add
                            i32.const 1
                            i32.add
                            local.tee 11
                            i32.store
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 11
                                local.get 8
                                i32.load
                                local.tee 12
                                i32.ge_u
                                br_if 0 (;@14;)
                                local.get 3
                                i32.load offset=20
                                local.set 13
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.load offset=20
                              local.tee 13
                              local.get 11
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 12
                              i32.const 5
                              i32.ge_u
                              br_if 5 (;@8;)
                              local.get 3
                              i32.load offset=16
                              local.get 11
                              local.get 12
                              i32.sub
                              local.tee 14
                              i32.add
                              local.tee 15
                              local.get 4
                              i32.eq
                              br_if 4 (;@9;)
                              local.get 15
                              local.get 4
                              local.get 12
                              call $memcmp
                              i32.eqz
                              br_if 4 (;@9;)
                            end
                            local.get 7
                            i32.load
                            local.tee 15
                            local.get 11
                            i32.lt_u
                            br_if 2 (;@10;)
                            local.get 13
                            local.get 15
                            i32.lt_u
                            br_if 2 (;@10;)
                            local.get 3
                            local.get 3
                            i32.const 16
                            i32.add
                            local.get 12
                            i32.add
                            i32.const 23
                            i32.add
                            i32.load8_u
                            local.get 3
                            i32.load offset=16
                            local.get 11
                            i32.add
                            local.get 15
                            local.get 11
                            i32.sub
                            call $core::slice::memchr::memchr::h03ff8eec60686a90
                            local.get 3
                            i32.load offset=4
                            local.set 11
                            local.get 3
                            i32.load
                            i32.const 1
                            i32.eq
                            br_if 0 (;@12;)
                          end
                        end
                        local.get 10
                        local.get 7
                        i32.load
                        i32.store
                      end
                      local.get 5
                      i32.const 0
                      i32.store8
                      local.get 2
                      local.set 11
                      br 2 (;@7;)
                    end
                    local.get 5
                    i32.const 1
                    i32.store8
                    local.get 14
                    i32.const 1
                    i32.add
                    local.set 11
                    br 1 (;@7;)
                  end
                  local.get 12
                  i32.const 4
                  call $core::slice::slice_index_len_fail::hb81ac75c4a989ce8
                  unreachable
                end
                local.get 9
                i32.load
                local.set 15
                local.get 0
                i32.load
                local.set 12
                block  ;; label = @7
                  local.get 11
                  i32.eqz
                  local.get 2
                  local.get 11
                  i32.eq
                  i32.or
                  local.tee 10
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 11
                  i32.le_u
                  br_if 5 (;@2;)
                  local.get 1
                  local.get 11
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.le_s
                  br_if 5 (;@2;)
                end
                local.get 12
                local.get 1
                local.get 11
                local.get 15
                i32.load offset=12
                call_indirect (type 0)
                br_if 2 (;@4;)
                block  ;; label = @7
                  local.get 10
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 11
                  i32.le_u
                  br_if 6 (;@1;)
                  local.get 1
                  local.get 11
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.le_s
                  br_if 6 (;@1;)
                end
                local.get 1
                local.get 11
                i32.add
                local.set 1
                local.get 2
                local.get 11
                i32.sub
                local.tee 2
                br_if 0 (;@6;)
              end
            end
            i32.const 0
            local.set 11
            br 1 (;@3;)
          end
          i32.const 1
          local.set 11
        end
        local.get 3
        i32.const 48
        i32.add
        global.set 0
        local.get 11
        return
      end
      local.get 1
      local.get 2
      i32.const 0
      local.get 11
      call $core::str::slice_error_fail::h1e6d53c31b5f17e9
      unreachable
    end
    local.get 1
    local.get 2
    local.get 11
    local.get 2
    call $core::str::slice_error_fail::h1e6d53c31b5f17e9
    unreachable)
  (func $core::fmt::Formatter::pad_integral::hedb0fe99a5f5806f (type 16) (param i32 i32 i32 i32 i32) (result i32)
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
        i32.const 40360
        i32.add
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 40356
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
        i32.const 38184
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
      i32.load offset=40356
      i32.store offset=8
      local.get 0
      local.get 1
      local.get 2
      i32.const 8
      i32.add
      i32.const 37700
      i32.const 38208
      call $wee_alloc::alloc_with_refill::hf098685871d9df6e
      local.set 1
      i32.const 0
      local.get 2
      i32.load offset=8
      i32.store offset=40356
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func $__rg_dealloc (type 9) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $<wee_alloc::WeeAlloc_as_core::alloc::GlobalAlloc>::dealloc::h4a9e07f4c470c478)
  (func $<wee_alloc::WeeAlloc_as_core::alloc::GlobalAlloc>::dealloc::h4a9e07f4c470c478 (type 9) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      i32.store offset=4
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        i32.const 4
        i32.gt_u
        br_if 0 (;@2;)
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
        i32.const 40360
        i32.add
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const 40356
        i32.store offset=8
        local.get 3
        local.get 0
        i32.load
        i32.store offset=12
        local.get 3
        i32.const 4
        i32.add
        local.get 3
        i32.const 12
        i32.add
        local.get 3
        i32.const 8
        i32.add
        i32.const 38184
        call $wee_alloc::WeeAlloc::dealloc_impl::__closure__::h78220dde08d1f3d8
        local.get 0
        local.get 3
        i32.load offset=12
        i32.store
        br 1 (;@1;)
      end
      local.get 3
      i32.const 0
      i32.load offset=40356
      i32.store offset=12
      local.get 3
      i32.const 4
      i32.add
      local.get 3
      i32.const 12
      i32.add
      i32.const 37700
      i32.const 38208
      call $wee_alloc::WeeAlloc::dealloc_impl::__closure__::h78220dde08d1f3d8
      i32.const 0
      local.get 3
      i32.load offset=12
      i32.store offset=40356
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func $__rg_realloc (type 12) (param i32 i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 3
      local.get 2
      call $<wee_alloc::WeeAlloc_as_core::alloc::GlobalAlloc>::alloc::h5f6727536d6bc77f
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      local.get 0
      local.get 3
      local.get 1
      local.get 1
      local.get 3
      i32.gt_u
      select
      call $memcpy
      drop
      local.get 0
      local.get 1
      local.get 2
      call $<wee_alloc::WeeAlloc_as_core::alloc::GlobalAlloc>::dealloc::h4a9e07f4c470c478
    end
    local.get 4)
  (func $__rg_alloc_zeroed (type 1) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      local.get 1
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
    i32.const 37700
    i32.const 38160
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
  (func $wee_alloc::alloc_with_refill::hf098685871d9df6e (type 16) (param i32 i32 i32 i32 i32) (result i32)
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
  (func $core::ptr::real_drop_in_place::hb362d9cbd0511fba (type 7) (param i32))
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
  (func $wee_alloc::alloc_first_fit::heb08c623bbd02e66 (type 16) (param i32 i32 i32 i32 i32) (result i32)
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
  (func $core::ptr::real_drop_in_place::hb362d9cbd0511fba.406 (type 7) (param i32))
  (func $core::ptr::real_drop_in_place::h7f1c6dba4d8a1f3e (type 7) (param i32))
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
  (func $core::ptr::real_drop_in_place::ha16765b235858e2e (type 7) (param i32))
  (func $<T_as_core::any::Any>::type_id::hfbb4b8d9c7d9a397 (type 17) (param i32) (result i64)
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
  (func $core::str::slice_error_fail::h1e6d53c31b5f17e9 (type 2) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 112
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 3
    i32.store offset=12
    local.get 4
    local.get 2
    i32.store offset=8
    i32.const 1
    local.set 5
    local.get 1
    local.set 6
    block  ;; label = @1
      local.get 1
      i32.const 257
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      local.get 1
      i32.sub
      local.set 7
      i32.const 256
      local.set 8
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 8
            local.get 1
            i32.ge_u
            br_if 0 (;@4;)
            local.get 0
            local.get 8
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            br_if 2 (;@2;)
          end
          local.get 8
          i32.const -1
          i32.add
          local.set 6
          i32.const 0
          local.set 5
          local.get 8
          i32.const 1
          i32.eq
          br_if 2 (;@1;)
          local.get 7
          local.get 8
          i32.add
          local.set 9
          local.get 6
          local.set 8
          local.get 9
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 0
      local.set 5
      local.get 8
      local.set 6
    end
    local.get 4
    local.get 6
    i32.store offset=20
    local.get 4
    local.get 0
    i32.store offset=16
    local.get 4
    i32.const 0
    i32.const 5
    local.get 5
    select
    i32.store offset=28
    local.get 4
    i32.const 37700
    i32.const 34487
    local.get 5
    select
    i32.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          local.get 1
          i32.gt_u
          local.tee 8
          br_if 0 (;@3;)
          local.get 3
          local.get 1
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.gt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              local.get 2
              i32.eq
              br_if 0 (;@5;)
              local.get 1
              local.get 2
              i32.le_u
              br_if 1 (;@4;)
              local.get 0
              local.get 2
              i32.add
              i32.load8_s
              i32.const -64
              i32.lt_s
              br_if 1 (;@4;)
            end
            local.get 3
            local.set 2
          end
          local.get 4
          local.get 2
          i32.store offset=32
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              local.get 1
              i32.eq
              br_if 0 (;@5;)
              local.get 1
              i32.const 1
              i32.add
              local.set 9
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  local.get 1
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 2
                  i32.add
                  i32.load8_s
                  i32.const -64
                  i32.ge_s
                  br_if 2 (;@5;)
                end
                local.get 2
                i32.const -1
                i32.add
                local.set 8
                local.get 2
                i32.const 1
                i32.eq
                br_if 2 (;@4;)
                local.get 9
                local.get 2
                i32.eq
                local.set 6
                local.get 8
                local.set 2
                local.get 6
                i32.eqz
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
            end
            local.get 2
            local.set 8
          end
          local.get 8
          local.get 1
          i32.eq
          br_if 2 (;@1;)
          i32.const 1
          local.set 6
          i32.const 0
          local.set 5
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              local.get 8
              i32.add
              local.tee 9
              i32.load8_s
              local.tee 2
              i32.const 0
              i32.lt_s
              br_if 0 (;@5;)
              local.get 4
              local.get 2
              i32.const 255
              i32.and
              i32.store offset=36
              local.get 4
              i32.const 40
              i32.add
              local.set 2
              br 1 (;@4;)
            end
            local.get 0
            local.get 1
            i32.add
            local.tee 6
            local.set 1
            block  ;; label = @5
              local.get 9
              i32.const 1
              i32.add
              local.get 6
              i32.eq
              br_if 0 (;@5;)
              local.get 9
              i32.const 2
              i32.add
              local.set 1
              local.get 9
              i32.const 1
              i32.add
              i32.load8_u
              i32.const 63
              i32.and
              local.set 5
            end
            local.get 2
            i32.const 31
            i32.and
            local.set 9
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.const 255
                  i32.and
                  i32.const 224
                  i32.lt_u
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 0
                  local.get 6
                  local.set 7
                  block  ;; label = @8
                    local.get 1
                    local.get 6
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 1
                    i32.const 1
                    i32.add
                    local.set 7
                    local.get 1
                    i32.load8_u
                    i32.const 63
                    i32.and
                    local.set 0
                  end
                  local.get 0
                  local.get 5
                  i32.const 6
                  i32.shl
                  i32.or
                  local.set 1
                  local.get 2
                  i32.const 255
                  i32.and
                  i32.const 240
                  i32.lt_u
                  br_if 1 (;@6;)
                  i32.const 0
                  local.set 2
                  block  ;; label = @8
                    local.get 7
                    local.get 6
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 7
                    i32.load8_u
                    i32.const 63
                    i32.and
                    local.set 2
                  end
                  local.get 1
                  i32.const 6
                  i32.shl
                  local.get 9
                  i32.const 18
                  i32.shl
                  i32.const 1835008
                  i32.and
                  i32.or
                  local.get 2
                  i32.or
                  local.tee 1
                  i32.const 1114112
                  i32.eq
                  br_if 6 (;@1;)
                  br 2 (;@5;)
                end
                local.get 5
                local.get 9
                i32.const 6
                i32.shl
                i32.or
                local.set 1
                br 1 (;@5;)
              end
              local.get 1
              local.get 9
              i32.const 12
              i32.shl
              i32.or
              local.set 1
            end
            local.get 4
            local.get 1
            i32.store offset=36
            i32.const 1
            local.set 6
            local.get 4
            i32.const 40
            i32.add
            local.set 2
            local.get 1
            i32.const 128
            i32.lt_u
            br_if 0 (;@4;)
            i32.const 2
            local.set 6
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 0 (;@4;)
            i32.const 3
            i32.const 4
            local.get 1
            i32.const 65536
            i32.lt_u
            select
            local.set 6
          end
          local.get 4
          local.get 8
          i32.store offset=40
          local.get 4
          local.get 6
          local.get 8
          i32.add
          i32.store offset=44
          local.get 4
          i32.const 108
          i32.add
          i32.const 12
          i32.store
          local.get 4
          i32.const 100
          i32.add
          i32.const 12
          i32.store
          local.get 4
          i32.const 72
          i32.add
          i32.const 20
          i32.add
          i32.const 13
          i32.store
          local.get 4
          i32.const 84
          i32.add
          i32.const 14
          i32.store
          local.get 4
          i32.const 48
          i32.add
          i32.const 20
          i32.add
          i32.const 5
          i32.store
          local.get 4
          local.get 2
          i32.store offset=88
          local.get 4
          i32.const 3
          i32.store offset=76
          local.get 4
          i64.const 5
          i64.store offset=52 align=4
          local.get 4
          i32.const 38440
          i32.store offset=48
          local.get 4
          local.get 4
          i32.const 24
          i32.add
          i32.store offset=104
          local.get 4
          local.get 4
          i32.const 16
          i32.add
          i32.store offset=96
          local.get 4
          local.get 4
          i32.const 36
          i32.add
          i32.store offset=80
          local.get 4
          local.get 4
          i32.const 32
          i32.add
          i32.store offset=72
          local.get 4
          local.get 4
          i32.const 72
          i32.add
          i32.store offset=64
          local.get 4
          i32.const 48
          i32.add
          i32.const 38480
          call $core::panicking::panic_fmt::h8a97af3c4a58de81
          unreachable
        end
        local.get 4
        local.get 2
        local.get 3
        local.get 8
        select
        i32.store offset=40
        local.get 4
        i32.const 72
        i32.add
        i32.const 20
        i32.add
        i32.const 12
        i32.store
        local.get 4
        i32.const 84
        i32.add
        i32.const 12
        i32.store
        local.get 4
        i32.const 48
        i32.add
        i32.const 20
        i32.add
        i32.const 3
        i32.store
        local.get 4
        i32.const 3
        i32.store offset=76
        local.get 4
        i64.const 3
        i64.store offset=52 align=4
        local.get 4
        i32.const 38328
        i32.store offset=48
        local.get 4
        local.get 4
        i32.const 24
        i32.add
        i32.store offset=88
        local.get 4
        local.get 4
        i32.const 16
        i32.add
        i32.store offset=80
        local.get 4
        local.get 4
        i32.const 40
        i32.add
        i32.store offset=72
        local.get 4
        local.get 4
        i32.const 72
        i32.add
        i32.store offset=64
        local.get 4
        i32.const 48
        i32.add
        i32.const 38352
        call $core::panicking::panic_fmt::h8a97af3c4a58de81
        unreachable
      end
      local.get 4
      i32.const 100
      i32.add
      i32.const 12
      i32.store
      local.get 4
      i32.const 72
      i32.add
      i32.const 20
      i32.add
      i32.const 12
      i32.store
      local.get 4
      i32.const 84
      i32.add
      i32.const 3
      i32.store
      local.get 4
      i32.const 48
      i32.add
      i32.const 20
      i32.add
      i32.const 4
      i32.store
      local.get 4
      i32.const 3
      i32.store offset=76
      local.get 4
      i64.const 4
      i64.store offset=52 align=4
      local.get 4
      i32.const 38368
      i32.store offset=48
      local.get 4
      local.get 4
      i32.const 24
      i32.add
      i32.store offset=96
      local.get 4
      local.get 4
      i32.const 16
      i32.add
      i32.store offset=88
      local.get 4
      local.get 4
      i32.const 12
      i32.add
      i32.store offset=80
      local.get 4
      local.get 4
      i32.const 8
      i32.add
      i32.store offset=72
      local.get 4
      local.get 4
      i32.const 72
      i32.add
      i32.store offset=64
      local.get 4
      i32.const 48
      i32.add
      i32.const 38400
      call $core::panicking::panic_fmt::h8a97af3c4a58de81
      unreachable
    end
    i32.const 38416
    call $core::panicking::panic::hb7cb5b256fd27bcf
    unreachable)
  (func $<&T_as_core::fmt::Display>::fmt::h567657ec04d20899 (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $core::fmt::Formatter::pad::h30d888b7844d66df)
  (func $<core::ops::range::Range<Idx>_as_core::fmt::Debug>::fmt::h4841cbeb26bcf663 (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 20
    i32.add
    i32.const 15
    i32.store
    local.get 2
    i32.const 15
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 0
    i32.const 4
    i32.add
    i32.store offset=16
    local.get 1
    i32.const 28
    i32.add
    i32.load
    local.set 0
    local.get 1
    i32.load offset=24
    local.set 1
    local.get 2
    i32.const 44
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i64.const 2
    i64.store offset=28 align=4
    local.get 2
    i32.const 38496
    i32.store offset=24
    local.get 2
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=40
    local.get 1
    local.get 0
    local.get 2
    i32.const 24
    i32.add
    call $core::fmt::write::hf7a0d3bddcb07d0c
    local.set 1
    local.get 2
    i32.const 48
    i32.add
    global.set 0
    local.get 1)
  (func $<char_as_core::fmt::Debug>::fmt::h6748eefb8f80ef73 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i64 i32 i32)
    i32.const 1
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load offset=24
                i32.const 39
                local.get 1
                i32.const 28
                i32.add
                i32.load
                i32.load offset=16
                call_indirect (type 1)
                br_if 0 (;@6;)
                i32.const 2
                local.set 2
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 0
                                      i32.load
                                      local.tee 0
                                      i32.const -9
                                      i32.add
                                      local.tee 3
                                      i32.const 30
                                      i32.gt_u
                                      br_if 0 (;@17;)
                                      i32.const 116
                                      local.set 4
                                      block  ;; label = @18
                                        local.get 3
                                        br_table 11 (;@7;) 0 (;@18;) 2 (;@16;) 2 (;@16;) 3 (;@15;) 2 (;@16;) 2 (;@16;) 2 (;@16;) 2 (;@16;) 2 (;@16;) 2 (;@16;) 2 (;@16;) 2 (;@16;) 2 (;@16;) 2 (;@16;) 2 (;@16;) 2 (;@16;) 2 (;@16;) 2 (;@16;) 2 (;@16;) 2 (;@16;) 2 (;@16;) 2 (;@16;) 2 (;@16;) 2 (;@16;) 7 (;@11;) 2 (;@16;) 2 (;@16;) 2 (;@16;) 2 (;@16;) 7 (;@11;) 11 (;@7;)
                                      end
                                      i32.const 110
                                      local.set 4
                                      br 3 (;@14;)
                                    end
                                    local.get 0
                                    i32.const 92
                                    i32.eq
                                    br_if 5 (;@11;)
                                  end
                                  local.get 0
                                  i32.const 2048
                                  i32.ge_u
                                  br_if 2 (;@13;)
                                  local.get 0
                                  i32.const 3
                                  i32.shr_u
                                  i32.const 262136
                                  i32.and
                                  i32.const 38544
                                  i32.add
                                  local.set 2
                                  br 3 (;@12;)
                                end
                                i32.const 114
                                local.set 4
                              end
                              br 6 (;@7;)
                            end
                            block  ;; label = @13
                              local.get 0
                              i32.const 65536
                              i32.ge_u
                              br_if 0 (;@13;)
                              local.get 0
                              i32.const 6
                              i32.shr_u
                              i32.const -32
                              i32.add
                              local.tee 2
                              i32.const 992
                              i32.ge_u
                              br_if 8 (;@5;)
                              local.get 2
                              i32.const 38824
                              i32.add
                              i32.load8_u
                              local.tee 2
                              i32.const 73
                              i32.gt_u
                              br_if 9 (;@4;)
                              local.get 2
                              i32.const 3
                              i32.shl
                              i32.const 35952
                              i32.add
                              local.set 2
                              br 1 (;@12;)
                            end
                            local.get 0
                            i32.const 12
                            i32.shr_u
                            i32.const -16
                            i32.add
                            local.tee 2
                            i32.const 256
                            i32.ge_u
                            br_if 9 (;@3;)
                            local.get 2
                            i32.const 39816
                            i32.add
                            i32.load8_u
                            i32.const 6
                            i32.shl
                            local.get 0
                            i32.const 6
                            i32.shr_u
                            i32.const 63
                            i32.and
                            i32.or
                            local.tee 2
                            i32.const 511
                            i32.gt_u
                            br_if 10 (;@2;)
                            local.get 2
                            i32.const 36544
                            i32.add
                            i32.load8_u
                            local.tee 2
                            i32.const 54
                            i32.gt_u
                            br_if 11 (;@1;)
                            local.get 2
                            i32.const 3
                            i32.shl
                            i32.const 37056
                            i32.add
                            local.set 2
                          end
                          block  ;; label = @12
                            local.get 2
                            i64.load
                            i64.const 1
                            local.get 0
                            i32.const 63
                            i32.and
                            i64.extend_i32_u
                            i64.shl
                            i64.and
                            i64.eqz
                            br_if 0 (;@12;)
                            local.get 0
                            i32.const 1
                            i32.or
                            i32.clz
                            i32.const 2
                            i32.shr_u
                            i32.const 7
                            i32.xor
                            i64.extend_i32_u
                            i64.const 21474836480
                            i64.or
                            local.set 5
                            br 3 (;@9;)
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 0
                              i32.const 65535
                              i32.gt_u
                              br_if 0 (;@13;)
                              local.get 0
                              i32.const 34616
                              i32.const 40
                              i32.const 34696
                              i32.const 303
                              i32.const 34999
                              i32.const 316
                              call $core::unicode::printable::check::h8615c4bab564249b
                              i32.eqz
                              br_if 3 (;@10;)
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 0
                              i32.const 131071
                              i32.gt_u
                              br_if 0 (;@13;)
                              local.get 0
                              i32.const 35315
                              i32.const 33
                              i32.const 35381
                              i32.const 158
                              i32.const 35539
                              i32.const 381
                              call $core::unicode::printable::check::h8615c4bab564249b
                              br_if 1 (;@12;)
                              br 3 (;@10;)
                            end
                            local.get 0
                            i32.const 917999
                            i32.gt_u
                            br_if 2 (;@10;)
                            local.get 0
                            i32.const -195102
                            i32.add
                            i32.const 722658
                            i32.lt_u
                            br_if 2 (;@10;)
                            local.get 0
                            i32.const -191457
                            i32.add
                            i32.const 3103
                            i32.lt_u
                            br_if 2 (;@10;)
                            local.get 0
                            i32.const -183970
                            i32.add
                            i32.const 14
                            i32.lt_u
                            br_if 2 (;@10;)
                            local.get 0
                            i32.const 2097150
                            i32.and
                            i32.const 178206
                            i32.eq
                            br_if 2 (;@10;)
                            local.get 0
                            i32.const -173783
                            i32.add
                            i32.const 41
                            i32.lt_u
                            br_if 2 (;@10;)
                            local.get 0
                            i32.const -177973
                            i32.add
                            i32.const 10
                            i32.le_u
                            br_if 2 (;@10;)
                          end
                          i32.const 1
                          local.set 2
                        end
                        br 2 (;@8;)
                      end
                      local.get 0
                      i32.const 1
                      i32.or
                      i32.clz
                      i32.const 2
                      i32.shr_u
                      i32.const 7
                      i32.xor
                      i64.extend_i32_u
                      i64.const 21474836480
                      i64.or
                      local.set 5
                    end
                    i32.const 3
                    local.set 2
                  end
                  local.get 0
                  local.set 4
                end
                local.get 1
                i32.const 24
                i32.add
                local.set 3
                local.get 1
                i32.const 28
                i32.add
                local.set 6
                block  ;; label = @7
                  loop  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 2
                                  i32.const 1
                                  i32.eq
                                  br_if 0 (;@15;)
                                  i32.const 92
                                  local.set 0
                                  block  ;; label = @16
                                    local.get 2
                                    i32.const 2
                                    i32.eq
                                    br_if 0 (;@16;)
                                    local.get 2
                                    i32.const 3
                                    i32.ne
                                    br_if 9 (;@7;)
                                    local.get 5
                                    i64.const 32
                                    i64.shr_u
                                    i32.wrap_i64
                                    i32.const 255
                                    i32.and
                                    i32.const -1
                                    i32.add
                                    local.tee 2
                                    i32.const 4
                                    i32.gt_u
                                    br_if 9 (;@7;)
                                    block  ;; label = @17
                                      local.get 2
                                      br_table 0 (;@17;) 6 (;@11;) 4 (;@13;) 5 (;@12;) 3 (;@14;) 0 (;@17;)
                                    end
                                    local.get 5
                                    i64.const -1095216660481
                                    i64.and
                                    local.set 5
                                    i32.const 125
                                    local.set 0
                                    br 6 (;@10;)
                                  end
                                  i32.const 1
                                  local.set 2
                                  br 6 (;@9;)
                                end
                                i32.const 0
                                local.set 2
                                local.get 4
                                local.set 0
                                br 5 (;@9;)
                              end
                              local.get 5
                              i64.const -1095216660481
                              i64.and
                              i64.const 17179869184
                              i64.or
                              local.set 5
                              br 3 (;@10;)
                            end
                            local.get 5
                            i64.const -1095216660481
                            i64.and
                            i64.const 8589934592
                            i64.or
                            local.set 5
                            i32.const 123
                            local.set 0
                            br 2 (;@10;)
                          end
                          local.get 5
                          i64.const -1095216660481
                          i64.and
                          i64.const 12884901888
                          i64.or
                          local.set 5
                          i32.const 117
                          local.set 0
                          br 1 (;@10;)
                        end
                        local.get 4
                        local.get 5
                        i32.wrap_i64
                        local.tee 7
                        i32.const 2
                        i32.shl
                        i32.const 28
                        i32.and
                        i32.shr_u
                        i32.const 15
                        i32.and
                        local.tee 2
                        i32.const 48
                        i32.or
                        local.get 2
                        i32.const 87
                        i32.add
                        local.get 2
                        i32.const 10
                        i32.lt_u
                        select
                        local.set 0
                        block  ;; label = @11
                          local.get 7
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 5
                          i64.const -1
                          i64.add
                          i64.const 4294967295
                          i64.and
                          local.get 5
                          i64.const -4294967296
                          i64.and
                          i64.or
                          local.set 5
                          br 1 (;@10;)
                        end
                        local.get 5
                        i64.const -1095216660481
                        i64.and
                        i64.const 4294967296
                        i64.or
                        local.set 5
                      end
                      i32.const 3
                      local.set 2
                    end
                    local.get 3
                    i32.load
                    local.get 0
                    local.get 6
                    i32.load
                    i32.load offset=16
                    call_indirect (type 1)
                    i32.eqz
                    br_if 0 (;@8;)
                  end
                  i32.const 1
                  return
                end
                local.get 1
                i32.const 24
                i32.add
                i32.load
                i32.const 39
                local.get 1
                i32.const 28
                i32.add
                i32.load
                i32.load offset=16
                call_indirect (type 1)
                local.set 2
              end
              local.get 2
              return
            end
            i32.const 40072
            local.get 2
            i32.const 992
            call $core::panicking::panic_bounds_check::h8e3d7d625bb942bb
            unreachable
          end
          i32.const 40088
          local.get 2
          i32.const 74
          call $core::panicking::panic_bounds_check::h8e3d7d625bb942bb
          unreachable
        end
        i32.const 40104
        local.get 2
        i32.const 256
        call $core::panicking::panic_bounds_check::h8e3d7d625bb942bb
        unreachable
      end
      i32.const 40120
      local.get 2
      i32.const 512
      call $core::panicking::panic_bounds_check::h8e3d7d625bb942bb
      unreachable
    end
    i32.const 40136
    local.get 2
    i32.const 55
    call $core::panicking::panic_bounds_check::h8e3d7d625bb942bb
    unreachable)
  (func $core::unicode::printable::check::h8615c4bab564249b (type 18) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 1
    local.get 2
    i32.const 1
    i32.shl
    i32.add
    local.set 7
    local.get 0
    i32.const 65280
    i32.and
    i32.const 8
    i32.shr_u
    local.set 8
    i32.const 0
    local.set 9
    local.get 0
    i32.const 255
    i32.and
    local.set 10
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 1
                  i32.const 2
                  i32.add
                  local.set 11
                  local.get 9
                  local.get 1
                  i32.load8_u offset=1
                  local.tee 2
                  i32.add
                  local.set 12
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.load8_u
                      local.tee 1
                      local.get 8
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 12
                      local.get 9
                      i32.lt_u
                      br_if 6 (;@3;)
                      local.get 12
                      local.get 4
                      i32.gt_u
                      br_if 7 (;@2;)
                      local.get 3
                      local.get 9
                      i32.add
                      local.set 1
                      loop  ;; label = @10
                        local.get 2
                        i32.eqz
                        br_if 2 (;@8;)
                        local.get 2
                        i32.const -1
                        i32.add
                        local.set 2
                        local.get 1
                        i32.load8_u
                        local.set 9
                        local.get 1
                        i32.const 1
                        i32.add
                        local.set 1
                        local.get 9
                        local.get 10
                        i32.ne
                        br_if 0 (;@10;)
                        br 5 (;@5;)
                      end
                    end
                    local.get 1
                    local.get 8
                    i32.gt_u
                    br_if 2 (;@6;)
                    local.get 12
                    local.set 9
                    local.get 11
                    local.set 1
                    local.get 11
                    local.get 7
                    i32.ne
                    br_if 1 (;@7;)
                    br 2 (;@6;)
                  end
                  local.get 12
                  local.set 9
                  local.get 11
                  local.set 1
                  local.get 11
                  local.get 7
                  i32.ne
                  br_if 0 (;@7;)
                end
              end
              local.get 0
              i32.const 65535
              i32.and
              local.set 9
              local.get 5
              local.get 6
              i32.add
              local.set 12
              i32.const 1
              local.set 2
              loop  ;; label = @6
                local.get 5
                i32.const 1
                i32.add
                local.set 10
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 5
                    i32.load8_u
                    local.tee 1
                    i32.const 24
                    i32.shl
                    i32.const 24
                    i32.shr_s
                    local.tee 11
                    i32.const -1
                    i32.le_s
                    br_if 0 (;@8;)
                    local.get 10
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 10
                  local.get 12
                  i32.eq
                  br_if 6 (;@1;)
                  local.get 11
                  i32.const 127
                  i32.and
                  i32.const 8
                  i32.shl
                  local.get 5
                  i32.const 1
                  i32.add
                  i32.load8_u
                  i32.or
                  local.set 1
                  local.get 5
                  i32.const 2
                  i32.add
                  local.set 5
                end
                local.get 9
                local.get 1
                i32.sub
                local.tee 9
                i32.const 0
                i32.lt_s
                br_if 2 (;@4;)
                local.get 2
                i32.const 1
                i32.xor
                local.set 2
                local.get 5
                local.get 12
                i32.ne
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
            end
            i32.const 0
            local.set 2
          end
          local.get 2
          i32.const 1
          i32.and
          return
        end
        local.get 9
        local.get 12
        call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
        unreachable
      end
      local.get 12
      local.get 4
      call $core::slice::slice_index_len_fail::hb81ac75c4a989ce8
      unreachable
    end
    i32.const 38416
    call $core::panicking::panic::hb7cb5b256fd27bcf
    unreachable)
  (func $core::fmt::num::<impl_core::fmt::Debug_for_usize>::fmt::h7a876375242004e6 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 2
    global.set 0
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
            i32.const 34485
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
          i32.const 34485
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
  (func $core::fmt::ArgumentV1::show_usize::h12bd52c1ec043e4f (type 1) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    local.get 1
    call $core::fmt::num::imp::fmt_u64::h410eebb512c98a23)
  (func $core::slice::memchr::memchr::h03ff8eec60686a90 (type 2) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    i32.const 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 3
        i32.and
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        i32.const 4
        local.get 5
        i32.sub
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        local.get 5
        local.get 5
        local.get 3
        i32.gt_u
        select
        local.tee 4
        i32.add
        local.set 6
        i32.const 0
        local.set 5
        local.get 1
        i32.const 255
        i32.and
        local.set 7
        local.get 4
        local.set 8
        local.get 2
        local.set 9
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 6
              local.get 9
              i32.sub
              i32.const 3
              i32.le_u
              br_if 1 (;@4;)
              local.get 5
              local.get 9
              i32.load8_u
              local.tee 10
              local.get 7
              i32.ne
              i32.add
              local.set 5
              local.get 10
              local.get 7
              i32.eq
              br_if 2 (;@3;)
              local.get 5
              local.get 9
              i32.const 1
              i32.add
              i32.load8_u
              local.tee 10
              local.get 7
              i32.ne
              i32.add
              local.set 5
              local.get 10
              local.get 7
              i32.eq
              br_if 2 (;@3;)
              local.get 5
              local.get 9
              i32.const 2
              i32.add
              i32.load8_u
              local.tee 10
              local.get 7
              i32.ne
              i32.add
              local.set 5
              local.get 10
              local.get 7
              i32.eq
              br_if 2 (;@3;)
              local.get 5
              local.get 9
              i32.const 3
              i32.add
              i32.load8_u
              local.tee 10
              local.get 7
              i32.ne
              i32.add
              local.set 5
              local.get 8
              i32.const -4
              i32.add
              local.set 8
              local.get 9
              i32.const 4
              i32.add
              local.set 9
              local.get 10
              local.get 7
              i32.ne
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          i32.const 0
          local.set 7
          local.get 1
          i32.const 255
          i32.and
          local.set 6
          loop  ;; label = @4
            local.get 8
            i32.eqz
            br_if 2 (;@2;)
            local.get 9
            local.get 7
            i32.add
            local.set 10
            local.get 8
            i32.const -1
            i32.add
            local.set 8
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            local.get 10
            i32.load8_u
            local.tee 10
            local.get 6
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 10
          local.get 1
          i32.const 255
          i32.and
          i32.eq
          i32.const 1
          i32.add
          i32.const 1
          i32.and
          local.get 5
          i32.add
          local.get 7
          i32.add
          i32.const -1
          i32.add
          local.set 5
        end
        i32.const 1
        local.set 9
        br 1 (;@1;)
      end
      local.get 1
      i32.const 255
      i32.and
      local.set 7
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 8
          i32.lt_u
          br_if 0 (;@3;)
          local.get 4
          local.get 3
          i32.const -8
          i32.add
          local.tee 10
          i32.gt_u
          br_if 0 (;@3;)
          local.get 7
          i32.const 16843009
          i32.mul
          local.set 5
          block  ;; label = @4
            loop  ;; label = @5
              local.get 2
              local.get 4
              i32.add
              local.tee 9
              i32.const 4
              i32.add
              i32.load
              local.get 5
              i32.xor
              local.tee 8
              i32.const -1
              i32.xor
              local.get 8
              i32.const -16843009
              i32.add
              i32.and
              local.get 9
              i32.load
              local.get 5
              i32.xor
              local.tee 9
              i32.const -1
              i32.xor
              local.get 9
              i32.const -16843009
              i32.add
              i32.and
              i32.or
              i32.const -2139062144
              i32.and
              br_if 1 (;@4;)
              local.get 4
              i32.const 8
              i32.add
              local.tee 4
              local.get 10
              i32.le_u
              br_if 0 (;@5;)
            end
          end
          local.get 4
          local.get 3
          i32.gt_u
          br_if 1 (;@2;)
        end
        local.get 2
        local.get 4
        i32.add
        local.set 9
        local.get 2
        local.get 3
        i32.add
        local.set 2
        local.get 3
        local.get 4
        i32.sub
        local.set 8
        i32.const 0
        local.set 5
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              loop  ;; label = @6
                local.get 2
                local.get 9
                i32.sub
                i32.const 3
                i32.le_u
                br_if 1 (;@5;)
                local.get 5
                local.get 9
                i32.load8_u
                local.tee 10
                local.get 7
                i32.ne
                i32.add
                local.set 5
                local.get 10
                local.get 7
                i32.eq
                br_if 2 (;@4;)
                local.get 5
                local.get 9
                i32.const 1
                i32.add
                i32.load8_u
                local.tee 10
                local.get 7
                i32.ne
                i32.add
                local.set 5
                local.get 10
                local.get 7
                i32.eq
                br_if 2 (;@4;)
                local.get 5
                local.get 9
                i32.const 2
                i32.add
                i32.load8_u
                local.tee 10
                local.get 7
                i32.ne
                i32.add
                local.set 5
                local.get 10
                local.get 7
                i32.eq
                br_if 2 (;@4;)
                local.get 5
                local.get 9
                i32.const 3
                i32.add
                i32.load8_u
                local.tee 10
                local.get 7
                i32.ne
                i32.add
                local.set 5
                local.get 8
                i32.const -4
                i32.add
                local.set 8
                local.get 9
                i32.const 4
                i32.add
                local.set 9
                local.get 10
                local.get 7
                i32.ne
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
            end
            i32.const 0
            local.set 7
            local.get 1
            i32.const 255
            i32.and
            local.set 2
            loop  ;; label = @5
              local.get 8
              i32.eqz
              br_if 2 (;@3;)
              local.get 9
              local.get 7
              i32.add
              local.set 10
              local.get 8
              i32.const -1
              i32.add
              local.set 8
              local.get 7
              i32.const 1
              i32.add
              local.set 7
              local.get 10
              i32.load8_u
              local.tee 10
              local.get 2
              i32.ne
              br_if 0 (;@5;)
            end
            local.get 10
            local.get 1
            i32.const 255
            i32.and
            i32.eq
            i32.const 1
            i32.add
            i32.const 1
            i32.and
            local.get 5
            i32.add
            local.get 7
            i32.add
            i32.const -1
            i32.add
            local.set 5
          end
          i32.const 1
          local.set 9
          local.get 5
          local.get 4
          i32.add
          local.set 5
          br 2 (;@1;)
        end
        i32.const 0
        local.set 9
        local.get 5
        local.get 7
        i32.add
        local.get 4
        i32.add
        local.set 5
        br 1 (;@1;)
      end
      local.get 4
      local.get 3
      call $core::slice::slice_index_order_fail::h3d34e0ef769a011f
      unreachable
    end
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 0
    local.get 9
    i32.store)
  (func $core::ptr::real_drop_in_place::h6bf5c84267bbbfa9 (type 7) (param i32))
  (func $core::fmt::Write::write_char::h5f84744317deffad (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 127
        i32.gt_u
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        i32.store8 offset=12
        i32.const 1
        local.set 1
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.const 2047
        i32.gt_u
        br_if 0 (;@2;)
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
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.const 65535
        i32.gt_u
        br_if 0 (;@2;)
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
        br 1 (;@1;)
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
    local.get 1
    call $<core::fmt::builders::PadAdapter_as_core::fmt::Write>::write_str::hcb550781fcaa7ef9
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func $core::fmt::Write::write_fmt::h4b2e319ca9162695 (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
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
    i32.const 40224
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
  (func $core::ptr::real_drop_in_place::h03136f820a3c8ab3 (type 7) (param i32))
  (func $<&mut_W_as_core::fmt::Write>::write_str::h35c6b802e90652dd (type 0) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 2
    call $<core::fmt::builders::PadAdapter_as_core::fmt::Write>::write_str::hcb550781fcaa7ef9)
  (func $<&mut_W_as_core::fmt::Write>::write_char::h9e1f1ada0c6b4c0d (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $core::fmt::Write::write_char::h5f84744317deffad)
  (func $<&mut_W_as_core::fmt::Write>::write_fmt::h28627b57a6664220 (type 1) (param i32 i32) (result i32)
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
    i32.const 40224
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
  (func $<&T_as_core::fmt::Debug>::fmt::h9dcf97894ad69d3f (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 2
    global.set 0
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
              i32.load8_u
              local.set 4
              local.get 3
              i32.const 32
              i32.and
              br_if 1 (;@4;)
              local.get 4
              i64.extend_i32_u
              i64.const 255
              i64.and
              local.get 1
              call $core::fmt::num::imp::fmt_u64::h410eebb512c98a23
              local.set 0
              br 2 (;@3;)
            end
            local.get 0
            i32.load8_u
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
              i32.const 15
              i32.and
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
            i32.const 34485
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
            i32.const 15
            i32.and
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
          i32.const 34485
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
  (func $<&T_as_core::fmt::Debug>::fmt::hdcfdaf596e709467 (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $core::fmt::num::<impl_core::fmt::Debug_for_usize>::fmt::h7a876375242004e6)
  (func $<&T_as_core::fmt::Debug>::fmt::h62e85d276ce0df7a (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 2
    global.set 0
    i32.const 1
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load
            local.tee 0
            i32.load8_u
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            local.get 1
            i32.load offset=24
            i32.const 37641
            i32.const 4
            local.get 1
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 0)
            br_if 3 (;@1;)
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            local.get 1
            i32.load
            local.tee 3
            i32.const 4
            i32.and
            br_if 1 (;@3;)
            i32.const 1
            local.set 3
            local.get 1
            i32.const 24
            i32.add
            local.tee 4
            i32.load
            i32.const 37629
            i32.const 1
            local.get 1
            i32.const 28
            i32.add
            local.tee 5
            i32.load
            i32.load offset=12
            call_indirect (type 0)
            br_if 3 (;@1;)
            local.get 4
            i32.load
            i32.const 37700
            i32.const 0
            local.get 5
            i32.load
            i32.load offset=12
            call_indirect (type 0)
            br_if 3 (;@1;)
            local.get 0
            local.get 1
            call $<&T_as_core::fmt::Debug>::fmt::h9dcf97894ad69d3f
            br_if 3 (;@1;)
            br 2 (;@2;)
          end
          local.get 1
          i32.load offset=24
          i32.const 37637
          i32.const 4
          local.get 1
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type 0)
          local.set 3
          br 2 (;@1;)
        end
        local.get 2
        i32.const 52
        i32.add
        i32.const 40176
        i32.store
        local.get 2
        i32.const 0
        i32.store8 offset=16
        local.get 2
        local.get 3
        i32.store offset=24
        local.get 2
        local.get 1
        i32.const 24
        i32.add
        i64.load align=4
        i64.store offset=8
        local.get 2
        local.get 1
        i32.load8_u offset=48
        i32.store8 offset=72
        local.get 2
        local.get 1
        i32.load offset=4
        i32.store offset=28
        local.get 2
        local.get 1
        i64.load offset=8 align=4
        i64.store offset=32
        local.get 2
        local.get 1
        i64.load offset=40 align=4
        i64.store offset=64
        local.get 2
        local.get 1
        i64.load offset=32 align=4
        i64.store offset=56
        local.get 2
        local.get 1
        i64.load offset=16 align=4
        i64.store offset=40
        local.get 2
        local.get 2
        i32.const 8
        i32.add
        i32.store offset=48
        i32.const 1
        local.set 3
        local.get 2
        i32.const 8
        i32.add
        i32.const 37629
        i32.const 1
        call $<core::fmt::builders::PadAdapter_as_core::fmt::Write>::write_str::hcb550781fcaa7ef9
        br_if 1 (;@1;)
        local.get 2
        i32.const 8
        i32.add
        i32.const 37623
        i32.const 1
        call $<core::fmt::builders::PadAdapter_as_core::fmt::Write>::write_str::hcb550781fcaa7ef9
        br_if 1 (;@1;)
        i32.const 1
        local.set 3
        local.get 0
        local.get 2
        i32.const 24
        i32.add
        call $<&T_as_core::fmt::Debug>::fmt::h9dcf97894ad69d3f
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.load8_u
        i32.const 4
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 3
        local.get 1
        i32.const 24
        i32.add
        i32.load
        i32.const 37623
        i32.const 1
        local.get 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 0)
        br_if 1 (;@1;)
      end
      local.get 1
      i32.const 24
      i32.add
      i32.load
      i32.const 37630
      i32.const 1
      local.get 1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 0)
      local.set 3
    end
    local.get 2
    i32.const 80
    i32.add
    global.set 0
    local.get 3)
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
  (func $memmove (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 0
        i32.ge_u
        br_if 0 (;@2;)
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const -1
        i32.add
        local.set 1
        local.get 0
        i32.const -1
        i32.add
        local.set 3
        loop  ;; label = @3
          local.get 3
          local.get 2
          i32.add
          local.get 1
          local.get 2
          i32.add
          i32.load8_u
          i32.store8
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
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
        local.get 1
        i32.const 1
        i32.add
        local.set 1
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
  (table (;0;) 44 44 anyfunc)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 32768))
  (global (;1;) i32 (i32.const 41384))
  (global (;2;) i32 (i32.const 41384))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "call" (func $call))
  (export "deploy" (func $deploy))
  (elem (;0;) (i32.const 1) $<&T_as_core::fmt::Display>::fmt::h4c090b896d0cfc4c $core::fmt::ArgumentV1::show_usize::h12bd52c1ec043e4f $core::fmt::num::imp::<impl_core::fmt::Display_for_u32>::fmt::h54afc21076a8cd63 $<bxa_abi::bxa::Error_as_core::fmt::Debug>::fmt::he7aabda29985fbc5 $<&T_as_core::fmt::Display>::fmt::hdbfc78aabe66420f $<core::fmt::Error_as_core::fmt::Debug>::fmt::h40371bb409cc3d1e $<&T_as_core::fmt::Display>::fmt::hae9e5dcceb380088 $<alloc::string::FromUtf8Error_as_core::fmt::Debug>::fmt::hf907d625fcd35e79 $<core::fmt::Arguments_as_core::fmt::Display>::fmt::h5f719d68cf877a91 $<&T_as_core::fmt::Debug>::fmt::h6860a7bd4ad4c3ad $<&T_as_core::fmt::Debug>::fmt::hc979c2e565dbed48 $<&T_as_core::fmt::Display>::fmt::h567657ec04d20899 $<core::ops::range::Range<Idx>_as_core::fmt::Debug>::fmt::h4841cbeb26bcf663 $<char_as_core::fmt::Debug>::fmt::h6748eefb8f80ef73 $core::fmt::num::<impl_core::fmt::Debug_for_usize>::fmt::h7a876375242004e6 $core::ptr::real_drop_in_place::hd37471b2036f178a $<&mut_W_as_core::fmt::Write>::write_str::hc35dec1d0a390ac3 $<&mut_W_as_core::fmt::Write>::write_char::h33b264b739b2dbdb $<&mut_W_as_core::fmt::Write>::write_fmt::he2b90737b87437a9 $core::ptr::real_drop_in_place::h06e718275dc906bf $<&T_as_core::fmt::Debug>::fmt::hb13d666b523d25f8 $<&T_as_core::fmt::Debug>::fmt::h39db290c16e4075f $core::ptr::real_drop_in_place::hb362d9cbd0511fba $<wee_alloc::LargeAllocPolicy_as_wee_alloc::AllocPolicy>::new_cell_for_free_list::he8633747b3e68f20 $<wee_alloc::LargeAllocPolicy_as_wee_alloc::AllocPolicy>::min_cell_size::h36473a24a292ef1e $<wee_alloc::LargeAllocPolicy_as_wee_alloc::AllocPolicy>::should_merge_adjacent_free_cells::h9fb2f0c3765940e8 $core::ptr::real_drop_in_place::h7f1c6dba4d8a1f3e $<wee_alloc::size_classes::SizeClassAllocPolicy_as_wee_alloc::AllocPolicy>::new_cell_for_free_list::h7f322e3989781476 $<wee_alloc::size_classes::SizeClassAllocPolicy_as_wee_alloc::AllocPolicy>::min_cell_size::h449f13d5e04898a2 $<wee_alloc::size_classes::SizeClassAllocPolicy_as_wee_alloc::AllocPolicy>::should_merge_adjacent_free_cells::h51f2062887788390 $core::ptr::real_drop_in_place::hb362d9cbd0511fba.406 $core::ptr::real_drop_in_place::ha16765b235858e2e $<T_as_core::any::Any>::type_id::hfbb4b8d9c7d9a397 $core::ptr::real_drop_in_place::h6bf5c84267bbbfa9 $<core::fmt::builders::PadAdapter_as_core::fmt::Write>::write_str::hcb550781fcaa7ef9 $core::fmt::Write::write_char::h5f84744317deffad $core::fmt::Write::write_fmt::h4b2e319ca9162695 $core::ptr::real_drop_in_place::h03136f820a3c8ab3 $<&mut_W_as_core::fmt::Write>::write_str::h35c6b802e90652dd $<&mut_W_as_core::fmt::Write>::write_char::h9e1f1ada0c6b4c0d $<&mut_W_as_core::fmt::Write>::write_fmt::h28627b57a6664220 $<&T_as_core::fmt::Debug>::fmt::hdcfdaf596e709467 $<&T_as_core::fmt::Debug>::fmt::h62e85d276ce0df7a)
  (data (;0;) (i32.const 32768) "INNITIALIZEABCassertion failed: runtime::check_witness(&from)TransferInvalidBoolInvalidU32InvalidU64DataSizeOutOfRangeUnexpectedEofUnexpectedDataOthera Display implementation returned an error unexpectedly\01\00123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz\00\00\00\00\00\00\00bxa-std/src/base58.rs\00\00\00g\e6\09j\85\aeg\bbr\f3n<:\f5O\a5\7fR\0eQ\8ch\05\9b\ab\d9\83\1f\19\cd\e0[\00\00\00\00\00\00\00\00/Users/admin/.cargo/registry/src/mirrors.ustc.edu.cn-61ef6e0cd06fb9b8/block-buffer-0.7.3/src/lib.rsTried to shrink to a larger capacityassertion failed: mid <= len\00\00\00\00\00\00\00\00\00\00\00\00\00attempt to divide by zero\00\00\00\00\00\00\00/Users/admin/.cargo/registry/src/mirrors.ustc.edu.cn-61ef6e0cd06fb9b8/num-bigint-0.2.2/src/algorithms.rscarry overflow during multiplication!Cannot subtract b from a because b is larger than a./Users/admin/.cargo/registry/src/mirrors.ustc.edu.cn-61ef6e0cd06fb9b8/num-bigint-0.2.2/src/algorithms.rsexplicit panic\00\01\00\00\00\00\00\00\00/rustc/0576ac109b1ee40cc3201ac3c9ed58339487140e/src/libcore/slice/mod.rsassertion failed: `(left == right)`\0a  left: ``,\0a right: ``: destination and source slices have different lengthscapacity overflowsrc/liballoc/raw_vec.rsFromUtf8Errorbyteserror\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00index out of bounds: the len is  but the index is 00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899src/libcore/slice/mod.rsindex  out of range for slice of length slice index starts at  but ends at `0x[...]src/libcore/str/mod.rsbyte index  is not a char boundary; it is inside  (bytes ) of `\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00src/libcore/fmt/mod.rs..\00\01\03\05\05\06\06\03\07\06\08\08\09\11\0a\1c\0b\19\0c\14\0d\12\0e\16\0f\04\10\03\12\12\13\09\16\01\17\05\18\02\19\03\1a\07\1c\02\1d\01\1f\16 \03+\06,\02-\0b.\010\031\022\02\a9\02\aa\04\ab\08\fa\02\fb\05\fd\04\fe\03\ff\09\adxy\8b\8d\a20WX\8b\8c\90\1c\1d\dd\0e\0fKL\fb\fc./?\5c]_\b5\e2\84\8d\8e\91\92\a9\b1\ba\bb\c5\c6\c9\ca\de\e4\e5\ff\00\04\11\12)147:;=IJ]\84\8e\92\a9\b1\b4\ba\bb\c6\ca\ce\cf\e4\e5\00\04\0d\0e\11\12)14:;EFIJ^de\84\91\9b\9d\c9\ce\cf\0d\11)EIWde\8d\91\a9\b4\ba\bb\c5\c9\df\e4\e5\f0\04\0d\11EIde\80\81\84\b2\bc\be\bf\d5\d7\f0\f1\83\85\86\89\8b\8c\98\a0\a4\a6\a8\a9\ac\ba\be\bf\c5\c7\ce\cf\da\dbH\98\bd\cd\c6\ce\cfINOWY^_\89\8e\8f\b1\b6\b7\bf\c1\c6\c7\d7\11\16\17[\5c\f6\f7\fe\ff\80\0dmq\de\df\0e\0f\1fno\1c\1d_}~\ae\af\bb\bc\fa\16\17\1e\1fFGNOXZ\5c^~\7f\b5\c5\d4\d5\dc\f0\f1\f5rs\8ftu\96\97\c9\ff/_&./\a7\af\b7\bf\c7\cf\d7\df\9a@\97\980\8f\1f\ff\ce\ffNOZ[\07\08\0f\10'/\ee\efno7=?BE\90\91\fe\ffSgu\c8\c9\d0\d1\d8\d9\e7\fe\ff\00 _\22\82\df\04\82D\08\1b\04\06\11\81\ac\0e\80\ab5\1e\15\80\e0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0aP\0f\12\07U\08\02\04\1c\0a\09\03\08\03\07\03\02\03\03\03\0c\04\05\03\0b\06\01\0e\15\05:\03\11\07\06\05\10\08V\07\02\07\15\0dP\04C\03-\03\01\04\11\06\0f\0c:\04\1d%\0d\06L m\04j%\80\c8\05\82\b0\03\1a\06\82\fd\03Y\07\15\0b\17\09\14\0c\14\0cj\06\0a\06\1a\06Y\07+\05F\0a,\04\0c\04\01\031\0b,\04\1a\06\0b\03\80\ac\06\0a\06\1fAL\04-\03t\08<\03\0f\03<\078\08*\06\82\ff\11\18\08/\11-\03 \10!\0f\80\8c\04\82\97\19\0b\15\88\94\05/\05;\07\02\0e\18\09\80\af1t\0c\80\d6\1a\0c\05\80\ff\05\80\b6\05$\0c\9b\c6\0a\d20\10\84\8d\037\09\81\5c\14\80\b8\08\80\ba=5\04\0a\068\08F\08\0c\06t\0b\1e\03Z\04Y\09\80\83\18\1c\0a\16\09F\0a\80\8a\06\ab\a4\0c\17\041\a1\04\81\da&\07\0c\05\05\80\a5\11\81m\10x(*\06L\04\80\8d\04\80\be\03\1b\03\0f\0d\00\06\01\01\03\01\04\02\08\08\09\02\0a\05\0b\02\10\01\11\04\12\05\13\11\14\02\15\02\17\02\1a\02\1c\05\1d\08$\01j\03k\02\bc\02\d1\02\d4\0c\d5\09\d6\02\d7\02\da\01\e0\05\e8\02\ee \f0\04\f9\04\0c';>NO\8f\9e\9e\9f\06\07\096=>V\f3\d0\d1\04\14\1867VW\bd5\ce\cf\e0\12\87\89\8e\9e\04\0d\0e\11\12)14:EFIJNOdeZ\5c\b6\b7\1b\1c\84\85\097\90\91\a8\07\0a;>fi\8f\92o_\ee\efZb\9a\9b'(U\9d\a0\a1\a3\a4\a7\a8\ad\ba\bc\c4\06\0b\0c\15\1d:?EQ\a6\a7\cc\cd\a0\07\19\1a\22%\c5\c6\04 #%&(38:HJLPSUVXZ\5c^`cefksx}\7f\8a\a4\aa\af\b0\c0\d0?qr{^\22{\05\03\04-\03e\04\01/.\80\82\1d\031\0f\1c\04$\09\1e\05+\05D\04\0e*\80\aa\06$\04$\04(\084\0b\01\80\90\817\09\16\0a\08\80\989\03c\08\090\16\05!\03\1b\05\01@8\04K\05/\04\0a\07\09\07@ '\04\0c\096\03:\05\1a\07\04\0c\07PI73\0d3\07.\08\0a\81&\1f\80\81(\08*\80\a6N\04\1e\0fC\0e\19\07\0a\06G\09'\09u\0b?A*\06;\05\0a\06Q\06\01\05\10\03\05\80\8b_!H\08\0a\80\a6^\22E\0b\0a\06\0d\138\08\0a6,\04\10\80\c0<dS\0c\01\81\00H\08S\1d9\81\07F\0a\1d\03GI7\03\0e\08\0a\069\07\0a\816\19\81\07\83\9afu\0b\80\c4\8a\bc\84/\8f\d1\82G\a1\b9\829\07*\04\02`&\0aF\0a(\05\13\82\b0[eE\0b/\10\11@\02\1e\97\f2\0e\82\f3\a5\0d\81\1fQ\81\8c\89\04k\05\0d\03\09\07\10\93`\80\f6\0as\08n\17F\80\9a\14\0cW\09\19\80\87\81G\03\85B\0f\15\85P+\87\d5\80\d7)K\05\0a\04\02\83\11D\81K<\06\01\04U\05\1b4\02\81\0e,\04d\0cV\0a\0d\03\5c\04=9\1d\0d,\04\09\07\02\0e\06\80\9a\83\d5\0b\0d\03\0a\06t\0cY'\0c\048\08\0a\06(\08\1eR\0c\04g\03)\0d\0a\06\03\0d0`\0e\85\92src/libcore/unicode/bool_trie.rs\00\00\c0\fb\ef>\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f8\ff\fb\ff\ff\ff\07\00\00\00\00\00\00\14\fe!\fe\00\0c\00\00\00\02\00\00\00\00\00\00P\1e \80\00\0c\00\00@\06\00\00\00\00\00\00\10\869\02\00\00\00#\00\be!\00\00\0c\00\00\fc\02\00\00\00\00\00\00\d0\1e \c0\00\0c\00\00\00\04\00\00\00\00\00\00@\01 \80\00\00\00\00\00\11\00\00\00\00\00\00\c0\c1=`\00\0c\00\00\00\02\00\00\00\00\00\00\90D0`\00\0c\00\00\00\03\00\00\00\00\00\00X\1e \80\00\0c\00\00\00\00\84\5c\80\00\00\00\00\00\00\00\00\00\00\f2\07\80\7f\00\00\00\00\00\00\00\00\00\00\00\00\f2\1b\00?\00\00\00\00\00\00\00\00\00\03\00\00\a0\02\00\00\00\00\00\00\fe\7f\df\e0\ff\fe\ff\ff\ff\1f@\00\00\00\00\00\00\00\00\00\00\00\00\e0\fdf\00\00\00\c3\01\00\1e\00d \00 \00\00\00\00\00\00\00\e0\00\00\00\00\00\00\1c\00\00\00\1c\00\00\00\0c\00\00\00\0c\00\00\00\00\00\00\00\b0?@\fe\0f \00\00\00\00\008\00\00\00\00\00\00`\00\00\00\00\02\00\00\00\00\00\00\87\01\04\0e\00\00\80\09\00\00\00\00\00\00@\7f\e5\1f\f8\9f\00\00\00\00\00\00\ff\7f\0f\00\00\00\00\00\d0\17\04\00\00\00\00\f8\0f\00\03\00\00\00<;\00\00\00\00\00\00@\a3\03\00\00\00\00\00\00\f0\cf\00\00\00\f7\ff\fd!\10\03\ff\ff\ff\ff\ff\ff\ff\fb\00\10\00\00\00\00\00\00\00\00\ff\ff\ff\ff\01\00\00\00\00\00\00\80\03\00\00\00\00\00\00\00\00\80\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\fc\00\00\00\00\00\06\00\00\00\00\00\00\00\00\00\80\f7?\00\00\00\c0\00\00\00\00\00\00\00\00\00\00\03\00D\08\00\00`\00\00\000\00\00\00\ff\ff\03\80\00\00\00\00\c0?\00\00\80\ff\03\00\00\00\00\00\07\00\00\00\00\00\c8\13\00\00\00\00 \00\00\00\00\00\00\00\00~f\00\08\10\00\00\00\00\00\10\00\00\00\00\00\00\9d\c1\02\00\00\00\000@\00\00\00\00\00 !\00\00\00\00\00@\00\00\00\00\ff\ff\00\00\ff\ff\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\05\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\07\00\00\08\09\0a\00\0b\0c\0d\0e\0f\00\00\10\11\12\00\00\13\14\15\16\00\00\17\18\19\1a\1b\00\1c\00\00\00\1d\00\00\00\00\00\00\00\1e\1f \00\00\00\00\00!\00\22\00#$%\00\00\00\00&\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00'(\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00*\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00+,\00\00-\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00./0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\001\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\002\003\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0045\00\005556\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\01\00\00\00\00\00\00\00\00\00\c0\07n\f0\00\00\00\00\00\87\00\00\00\00`\00\00\00\00\00\00\00\f0\00\00\00\c0\ff\01\00\00\00\00\00\02\00\00\00\00\00\00\ff\7f\00\00\00\00\00\00\80\03\00\00\00\00\00x\06\07\00\00\00\80\ef\1f\00\00\00\00\00\00\00\08\00\03\00\00\00\00\00\c0\7f\00\1e\00\00\00\00\00\00\00\00\00\00\00\80\d3@\00\00\00\80\f8\07\00\00\03\00\00\00\00\00\00X\01\00\80\00\c0\1f\1f\00\00\00\00\00\00\00\00\ff\5c\00\00@\00\00\00\00\00\00\00\00\00\00\f9\a5\0d\00\00\00\00\00\00\00\00\00\00\00\00\80<\b0\01\00\000\00\00\00\00\00\00\00\00\00\00\f8\a7\01\00\00\00\00\00\00\00\00\00\00\00\00(\bf\00\00\00\00\e0\bc\0f\00\00\00\00\00\00\00\80\ff\06\fe\07\00\00\00\00\f8y\80\00~\0e\00\00\00\00\00\fc\7f\03\00\00\00\00\00\00\00\00\00\00\7f\bf\00\00\fc\ff\ff\fcm\00\00\00\00\00\00\00~\b4\bf\00\00\00\00\00\00\00\00\00\a3\00\00\00\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\1f\00\00\00\00\00\00\00\7f\00\00\80\07\00\00\00\00\00\00\00\00`\00\00\00\00\00\00\00\00\a0\c3\07\f8\e7\0f\00\00\00<\00\00\1c\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\7f\f8\ff\ff\ff\ff\ff\1f \00\10\00\00\f8\fe\ff\00\00\7f\ff\ff\f9\db\07\00\00\00\00\7f\00\00\00\00\00\f0\07\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00called `Option::unwrap()` on a `None` valuesrc/libcore/option.rsbegin <= end ( <= ) when slicing ` is out of bounds of `     {,\0a  }\0a}(),\0a, ][NoneSomeUtf8Errorvalid_up_toerror_lenErrorsrc/libcore/result.rs: initget_symbolget_total_supplytransferbalance_ofInvalid method nameexamples/token/src/lib.rscalled `Result::unwrap()` on an `Err` value")
  (data (;1;) (i32.const 37840) "\0e\80\00\00/\00\00\00\89\93\00\00\19\00\00\004\00\00\00\09\00\00\00\10\81\00\00\15\00\00\00$\00\00\00\14\00\00\00P\81\00\00c\00\00\00\85\00\00\00\09\00\00\00\b3\81\00\00$\00\00\00)\84\00\00\17\00\00\00@\02\00\00\09\00\00\00\10\00\00\00\04\00\00\00\04\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\d7\81\00\00\1c\00\00\00Q\86\00\00\18\00\00\00\e4\03\00\00\0d\00\00\00\00\82\00\00\19\00\00\00 \82\00\00h\00\00\00D\00\00\00\06\00\00\00\e1\82\00\00h\00\00\00\8b\00\00\00\05\00\00\00\e1\82\00\00h\00\00\00\ab\00\00\00\05\00\00\00\e1\82\00\00h\00\00\00\f1\01\00\00\09\00\00\00`\83\00\00H\00\00\00\eb\09\00\00\0a\00\00\00\a8\83\00\00-\00\00\00\d5\83\00\00\0c\00\00\00\e1\83\00\00\03\00\00\00\e4\83\00\004\00\00\00Q\86\00\00\18\00\00\00\b0\07\00\00\09\00\00\00\18\84\00\00\11\00\00\00)\84\00\00\17\00\00\00\ea\02\00\00\05\00\00\00\14\00\00\00\04\00\00\00\04\00\00\00\15\00\00\00\14\00\00\00\04\00\00\00\04\00\00\00\16\00\00\00\17\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00\19\00\00\00\1a\00\00\00\1b\00\00\00\04\00\00\00\04\00\00\00\1c\00\00\00\1d\00\00\00\1e\00\00\00\1f\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00\19\00\00\00\1a\00\00\00W\85\00\00 \00\00\00w\85\00\00\12\00\00\00 \00\00\00\00\00\00\00\01\00\00\00!\00\00\00i\86\00\00\06\00\00\00o\86\00\00\22\00\00\00Q\86\00\00\18\00\00\00m\09\00\00\05\00\00\00\91\86\00\00\16\00\00\00\a7\86\00\00\0d\00\00\00Q\86\00\00\18\00\00\00s\09\00\00\05\00\00\00\d2\86\00\00\0b\00\00\00\da\92\00\00\16\00\00\00\b4\86\00\00\01\00\00\00\bc\86\00\00\16\00\00\00\da\07\00\00\09\00\00\00\b8\92\00\00\0e\00\00\00\c6\92\00\00\04\00\00\00\ca\92\00\00\10\00\00\00\b4\86\00\00\01\00\00\00\bc\86\00\00\16\00\00\00\de\07\00\00\05\00\00\00x\92\00\00+\00\00\00\a3\92\00\00\15\00\00\00Y\01\00\00\15\00\00\00\d2\86\00\00\0b\00\00\00\dd\86\00\00&\00\00\00\03\87\00\00\08\00\00\00\0b\87\00\00\06\00\00\00\b4\86\00\00\01\00\00\00\bc\86\00\00\16\00\00\00\eb\07\00\00\05\00\00\00D\93\00\00\00\00\00\006\87\00\00\02\00\00\00 \87\00\00\16\00\00\00T\04\00\00\11\00\00\00 \87\00\00\16\00\00\00H\04\00\00(\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f8\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\fe\ff\ff\ff\ff\bf\b6\00\00\00\00\00\00\00\00\00\ff\07\00\00\00\00\00\f8\ff\ff\00\00\01\00\00\00\00\00\00\00\00\00\00\00\c0\9f\9f=\00\00\00\00\02\00\00\00\ff\ff\ff\07\00\00\00\00\00\00\00\00\00\00\c0\ff\01\00\00\00\00\00\00\f8\0f p\8c\00\00J\00\00\00\c0\8e\00\00\00\02\00\00\c0\90\00\007\00\00\00\00\01\02\03\04\05\06\07\08\09\08\0a\0b\0c\0d\0e\0f\10\11\12\13\14\02\15\16\17\18\19\1a\1b\1c\1d\1e\1f \02\02\02\02\02\02\02\02\02\02!\02\02\02\02\02\02\02\02\02\02\02\02\02\02\22#$%&\02'\02(\02\02\02)*+\02,-./0\02\021\02\02\022\02\02\02\02\02\02\02\023\02\024\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\025\026\027\02\02\02\02\02\02\02\028\029\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02:;<\02\02\02\02=\02\02>?@ABCDEF\02\02\02G\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02H\02\02\02\02\02\02\02\02\02\02\02I\02\02\02\02\02;\02\00\01\02\02\02\02\03\02\02\02\02\04\02\05\06\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\07\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02P\8c\00\00 \00\00\00'\00\00\00\19\00\00\00P\8c\00\00 \00\00\00(\00\00\00 \00\00\00P\8c\00\00 \00\00\00*\00\00\00\19\00\00\00P\8c\00\00 \00\00\00+\00\00\00\18\00\00\00P\8c\00\00 \00\00\00,\00\00\00 \00\00\00D\93\00\00\00\00\00\00\a3\92\00\00\15\00\00\00\0a\04\00\00\05\00\00\00\22\00\00\00\0c\00\00\00\04\00\00\00#\00\00\00$\00\00\00%\00\00\00D\93\00\00\00\00\00\00\f8\92\00\00\01\00\00\00D\93\00\00\02\00\00\00&\00\00\00\04\00\00\00\04\00\00\00'\00\00\00(\00\00\00)\00\00\00\04\93\00\00\01\00\00\00&\00\00\00\04\00\00\00\04\00\00\00*\00\00\00&\00\00\00\04\00\00\00\04\00\00\00+\00\00\00D\93\00\00\00\00\00\00D\93\00\00\02\00\00\00/\93\00\00\15\00\00\00\e5\03\00\00\05\00\00\00v\93\00\00\13\00\00\00\89\93\00\00\19\00\00\00\15\00\00\00\01\00\00\00")
  (data (;2;) (i32.const 40344) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
