(module
  (type (;0;) (func (param i32 i32 i32 i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func))
  (type (;7;) (func (param i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (import "env" "panic" (func (;0;) (type 3)))
  (import "env" "input_length" (func (;1;) (type 4)))
  (import "env" "fetch_input" (func (;2;) (type 5)))
  (import "env" "storage_read2" (func (;3;) (type 3)))
  (import "env" "ret" (func (;4;) (type 3)))
  (import "env" "memory" (memory (;0;) 1 16))
  (func (;5;) (type 3) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=8
          local.tee 2
          i32.const 4
          i32.add
          local.tee 3
          local.get 1
          i32.load offset=4
          i32.le_u
          br_if 0 (;@3;)
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
        local.get 3
        i32.store
        local.get 2
        i32.const -5
        i32.gt_u
        br_if 1 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        local.get 1
        i32.load
        local.get 2
        i32.add
        i32.load align=1
        i32.store
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
    call 6
    unreachable)
  (func (;6;) (type 3) (param i32 i32)
    call 41
    unreachable)
  (func (;7;) (type 3) (param i32 i32)
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
          i32.const 3
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
    call 6
    unreachable)
  (func (;8;) (type 3) (param i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          call 9
          local.tee 2
          br_if 1 (;@2;)
          local.get 1
          i32.const 1
          call 10
          unreachable
        end
        i32.const 1
        local.set 2
      end
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 0
      local.get 2
      i32.store
      return
    end
    call 11
    unreachable)
  (func (;9;) (type 2) (param i32) (result i32)
    local.get 0
    call 24)
  (func (;10;) (type 3) (param i32 i32)
    unreachable
    unreachable)
  (func (;11;) (type 6)
    call 12
    unreachable)
  (func (;12;) (type 6)
    i32.const 33172
    call 23
    unreachable)
  (func (;13;) (type 7) (param i32 i32 i32)
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
              call 14
              local.tee 2
              i32.eqz
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            local.get 1
            call 9
            local.tee 2
            br_if 2 (;@2;)
          end
          local.get 1
          i32.const 1
          call 10
          unreachable
        end
        call 12
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
  (func (;14;) (type 8) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call 28)
  (func (;15;) (type 7) (param i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call 8
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
    i32.const 0
    local.get 2
    call 13
    local.get 3
    local.get 3
    i32.load offset=24
    local.tee 4
    local.get 2
    i32.add
    i32.store offset=24
    local.get 4
    local.get 3
    i32.load offset=16
    i32.add
    local.get 1
    local.get 2
    call 46
    drop
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
  (func (;16;) (type 3) (param i32 i32)
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
      call 13
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
  (func (;17;) (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 8
    i32.add
    local.tee 3
    local.get 1
    i32.const 8
    i32.add
    i32.load
    local.tee 4
    i32.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store
    local.get 1
    i32.const 16
    i32.add
    i32.load
    local.set 5
    local.get 1
    i32.load offset=12
    local.set 6
    local.get 2
    local.get 4
    local.get 1
    i32.const 20
    i32.add
    i32.load
    local.tee 1
    call 13
    local.get 3
    local.get 1
    local.get 3
    i32.load
    local.tee 4
    i32.add
    i32.store
    local.get 4
    local.get 2
    i32.load
    i32.add
    local.get 6
    local.get 1
    call 46
    drop
    local.get 0
    i32.const 8
    i32.add
    local.get 3
    i32.load
    i32.store
    local.get 0
    local.get 2
    i64.load
    i64.store align=4
    block  ;; label = @1
      local.get 5
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      local.get 5
      call 18
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;18;) (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call 26)
  (func (;19;) (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    i32.const 3
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
                      i32.const 3
                      local.set 3
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
                local.tee 6
                local.get 3
                i32.eq
                br_if 1 (;@5;)
                local.get 6
                local.get 3
                i32.ne
                i32.const 2
                i32.shl
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
                                            i32.const 32883
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
                call 15
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
                i32.const 769
                i32.store16
                local.get 2
                i32.load offset=4
                local.tee 3
                i32.eqz
                br_if 5 (;@1;)
                local.get 2
                i32.load
                local.get 3
                call 18
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
          call 6
          unreachable
        end
        local.get 4
        local.get 3
        call 6
        unreachable
      end
      local.get 3
      local.get 5
      call 20
      unreachable
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;20;) (type 3) (param i32 i32)
    call 41
    unreachable)
  (func (;21;) (type 6)
    call 12
    unreachable)
  (func (;22;) (type 6)
    i32.const 0
    i32.const 0
    call 0
    unreachable)
  (func (;23;) (type 5) (param i32)
    call 41
    unreachable)
  (func (;24;) (type 2) (param i32) (result i32)
    local.get 0
    call 25)
  (func (;25;) (type 2) (param i32) (result i32)
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
          i32.const 33272
          i32.add
          local.tee 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          i32.const 33268
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
          i32.const 33220
          call 30
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
      i32.load offset=33268
      i32.store offset=8
      local.get 0
      i32.const 1
      local.get 1
      i32.const 8
      i32.add
      i32.const 33140
      i32.const 33244
      call 30
      local.set 0
      i32.const 0
      local.get 1
      i32.load offset=8
      i32.store offset=33268
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;26;) (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call 27)
  (func (;27;) (type 3) (param i32 i32)
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
        i32.const 33272
        i32.add
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 33268
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
        i32.const 33220
        call 40
        local.get 0
        local.get 2
        i32.load offset=12
        i32.store
        br 1 (;@1;)
      end
      local.get 2
      i32.const 0
      i32.load offset=33268
      i32.store offset=12
      local.get 2
      i32.const 4
      i32.add
      local.get 2
      i32.const 12
      i32.add
      i32.const 33140
      i32.const 33244
      call 40
      i32.const 0
      local.get 2
      i32.load offset=12
      i32.store offset=33268
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;28;) (type 8) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      call 25
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
      call 46
      drop
      local.get 0
      local.get 1
      call 27
    end
    local.get 3)
  (func (;29;) (type 0) (param i32 i32 i32 i32)
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
    i32.const 33140
    i32.const 33196
    call 30
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
  (func (;30;) (type 9) (param i32 i32 i32 i32 i32) (result i32)
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
      call 37
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
      call 37
      local.set 6
    end
    local.get 5
    i32.const 16
    i32.add
    global.set 0
    local.get 6)
  (func (;31;) (type 5) (param i32))
  (func (;32;) (type 1) (param i32 i32) (result i32)
    local.get 1)
  (func (;33;) (type 2) (param i32) (result i32)
    i32.const 0)
  (func (;34;) (type 0) (param i32 i32 i32 i32)
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
  (func (;35;) (type 1) (param i32 i32) (result i32)
    i32.const 512)
  (func (;36;) (type 2) (param i32) (result i32)
    i32.const 1)
  (func (;37;) (type 9) (param i32 i32 i32 i32 i32) (result i32)
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
  (func (;38;) (type 5) (param i32))
  (func (;39;) (type 5) (param i32))
  (func (;40;) (type 0) (param i32 i32 i32 i32)
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
  (func (;41;) (type 6)
    call 22
    unreachable)
  (func (;42;) (type 5) (param i32)
    call 41
    unreachable)
  (func (;43;) (type 3) (param i32 i32)
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
          i32.const 3
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
    call 6
    unreachable)
  (func (;44;) (type 3) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=8
          local.tee 2
          i32.const 4
          i32.add
          local.tee 3
          local.get 1
          i32.load offset=4
          i32.le_u
          br_if 0 (;@3;)
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
        local.get 3
        i32.store
        local.get 2
        i32.const -5
        i32.gt_u
        br_if 1 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        local.get 1
        i32.load
        local.get 2
        i32.add
        i32.load align=1
        i32.store
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
    call 6
    unreachable)
  (func (;45;) (type 6)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 0
    global.set 0
    i32.const 1
    local.set 1
    i32.const 0
    local.set 2
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
                                            call 1
                                            local.tee 3
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            local.get 3
                                            i32.const -1
                                            i32.le_s
                                            br_if 1 (;@19;)
                                            local.get 3
                                            call 9
                                            local.tee 1
                                            i32.eqz
                                            br_if 2 (;@18;)
                                            local.get 1
                                            call 2
                                            local.get 3
                                            local.set 2
                                          end
                                          local.get 0
                                          i32.const 0
                                          i32.store offset=24
                                          local.get 0
                                          local.get 3
                                          i32.store offset=20
                                          local.get 0
                                          local.get 1
                                          i32.store offset=16
                                          local.get 0
                                          i32.const 64
                                          i32.add
                                          local.get 0
                                          i32.const 16
                                          i32.add
                                          call 19
                                          block  ;; label = @20
                                            local.get 0
                                            i32.load8_u offset=64
                                            i32.const 1
                                            i32.eq
                                            br_if 0 (;@20;)
                                            block  ;; label = @21
                                              local.get 0
                                              i32.const 76
                                              i32.add
                                              i32.load
                                              i32.const -1
                                              i32.add
                                              local.tee 4
                                              i32.const 6
                                              i32.gt_u
                                              br_if 0 (;@21;)
                                              local.get 0
                                              i32.const 72
                                              i32.add
                                              i32.load
                                              local.set 5
                                              local.get 0
                                              i32.load offset=68
                                              local.set 3
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    local.get 4
                                                                    br_table 0 (;@32;) 11 (;@21;) 2 (;@30;) 11 (;@21;) 11 (;@21;) 3 (;@29;) 1 (;@31;) 0 (;@32;)
                                                                  end
                                                                  block  ;; label = @32
                                                                    local.get 3
                                                                    i32.const 32780
                                                                    i32.eq
                                                                    br_if 0 (;@32;)
                                                                    local.get 3
                                                                    i32.load8_u
                                                                    i32.const 115
                                                                    i32.ne
                                                                    br_if 11 (;@21;)
                                                                  end
                                                                  local.get 0
                                                                  i32.const 64
                                                                  i32.add
                                                                  i32.const 33140
                                                                  i32.const 6
                                                                  call 15
                                                                  block  ;; label = @32
                                                                    local.get 0
                                                                    i32.load offset=72
                                                                    local.tee 4
                                                                    local.get 0
                                                                    i32.load offset=68
                                                                    local.tee 6
                                                                    i32.ne
                                                                    br_if 0 (;@32;)
                                                                    local.get 0
                                                                    i32.const 64
                                                                    i32.add
                                                                    local.get 4
                                                                    i32.const 1
                                                                    call 13
                                                                    local.get 0
                                                                    i32.const 72
                                                                    i32.add
                                                                    i32.load
                                                                    local.set 4
                                                                    local.get 0
                                                                    i32.load offset=68
                                                                    local.set 6
                                                                  end
                                                                  local.get 0
                                                                  i32.load offset=64
                                                                  local.tee 7
                                                                  local.get 4
                                                                  i32.add
                                                                  i32.const 32
                                                                  i32.store8
                                                                  i32.const 32
                                                                  call 9
                                                                  local.tee 8
                                                                  i32.eqz
                                                                  br_if 14 (;@17;)
                                                                  local.get 0
                                                                  i32.const 52
                                                                  i32.add
                                                                  i32.const 0
                                                                  i32.store
                                                                  local.get 0
                                                                  i64.const 1
                                                                  i64.store offset=44 align=4
                                                                  local.get 0
                                                                  i64.const 32
                                                                  i64.store offset=36 align=4
                                                                  local.get 0
                                                                  local.get 8
                                                                  i32.store offset=32
                                                                  local.get 4
                                                                  i32.const 1
                                                                  i32.add
                                                                  local.tee 4
                                                                  i32.const 253
                                                                  i32.gt_u
                                                                  br_if 6 (;@25;)
                                                                  local.get 0
                                                                  i32.const 32
                                                                  i32.add
                                                                  local.get 4
                                                                  call 16
                                                                  local.get 0
                                                                  i32.const 40
                                                                  i32.add
                                                                  i32.load
                                                                  local.set 8
                                                                  local.get 0
                                                                  i32.const 32
                                                                  i32.add
                                                                  local.set 9
                                                                  br 7 (;@24;)
                                                                end
                                                                local.get 3
                                                                i32.const 32787
                                                                i32.eq
                                                                br_if 2 (;@28;)
                                                                local.get 3
                                                                i32.const 32787
                                                                i32.const 7
                                                                call 47
                                                                i32.eqz
                                                                br_if 2 (;@28;)
                                                                block  ;; label = @31
                                                                  local.get 3
                                                                  i32.const 32794
                                                                  i32.eq
                                                                  br_if 0 (;@31;)
                                                                  local.get 3
                                                                  i32.const 32794
                                                                  i32.const 7
                                                                  call 47
                                                                  br_if 10 (;@21;)
                                                                end
                                                                local.get 0
                                                                i32.const 64
                                                                i32.add
                                                                local.get 0
                                                                i32.const 16
                                                                i32.add
                                                                call 43
                                                                local.get 0
                                                                i32.load8_u offset=64
                                                                i32.const 1
                                                                i32.eq
                                                                br_if 23 (;@7;)
                                                                local.get 0
                                                                i32.const 72
                                                                i32.add
                                                                local.tee 4
                                                                i64.load
                                                                local.set 10
                                                                local.get 0
                                                                i32.const 64
                                                                i32.add
                                                                local.get 0
                                                                i32.const 16
                                                                i32.add
                                                                call 43
                                                                local.get 0
                                                                i32.load8_u offset=64
                                                                i32.const 1
                                                                i32.eq
                                                                br_if 24 (;@6;)
                                                                local.get 4
                                                                i64.load
                                                                local.set 11
                                                                i32.const 32
                                                                call 9
                                                                local.tee 4
                                                                i32.eqz
                                                                br_if 25 (;@5;)
                                                                local.get 0
                                                                i32.const 52
                                                                i32.add
                                                                i32.const 0
                                                                i32.store
                                                                local.get 0
                                                                i64.const 1
                                                                i64.store offset=44 align=4
                                                                local.get 0
                                                                i64.const 32
                                                                i64.store offset=36 align=4
                                                                local.get 0
                                                                local.get 4
                                                                i32.store offset=32
                                                                local.get 0
                                                                i32.const 32
                                                                i32.add
                                                                i32.const 0
                                                                i32.const 8
                                                                call 13
                                                                local.get 0
                                                                i32.load offset=32
                                                                local.get 0
                                                                i32.load offset=40
                                                                local.tee 4
                                                                i32.add
                                                                local.get 11
                                                                local.get 10
                                                                i64.add
                                                                i64.store align=1
                                                                local.get 0
                                                                local.get 4
                                                                i32.const 8
                                                                i32.add
                                                                i32.store offset=40
                                                                local.get 0
                                                                i32.const 64
                                                                i32.add
                                                                i32.const 16
                                                                i32.add
                                                                local.get 0
                                                                i32.const 32
                                                                i32.add
                                                                i32.const 16
                                                                i32.add
                                                                i64.load
                                                                i64.store
                                                                local.get 0
                                                                i32.const 64
                                                                i32.add
                                                                i32.const 8
                                                                i32.add
                                                                local.get 0
                                                                i64.load offset=40
                                                                i64.store
                                                                local.get 0
                                                                local.get 0
                                                                i64.load offset=32
                                                                i64.store offset=64
                                                                local.get 0
                                                                local.get 0
                                                                i32.const 64
                                                                i32.add
                                                                call 17
                                                                local.get 5
                                                                br_if 7 (;@23;)
                                                                br 8 (;@22;)
                                                              end
                                                              local.get 3
                                                              i32.const 32768
                                                              i32.eq
                                                              br_if 2 (;@27;)
                                                              local.get 3
                                                              i32.const 32768
                                                              i32.const 3
                                                              call 47
                                                              i32.eqz
                                                              br_if 2 (;@27;)
                                                              block  ;; label = @30
                                                                local.get 3
                                                                i32.const 32771
                                                                i32.eq
                                                                br_if 0 (;@30;)
                                                                local.get 3
                                                                i32.const 32771
                                                                i32.const 3
                                                                call 47
                                                                br_if 9 (;@21;)
                                                              end
                                                              local.get 0
                                                              i32.const 64
                                                              i32.add
                                                              local.get 0
                                                              i32.const 16
                                                              i32.add
                                                              call 5
                                                              local.get 0
                                                              i32.load8_u offset=64
                                                              i32.const 1
                                                              i32.eq
                                                              br_if 25 (;@4;)
                                                              local.get 0
                                                              i32.load offset=68
                                                              local.set 4
                                                              local.get 0
                                                              i32.const 64
                                                              i32.add
                                                              local.get 0
                                                              i32.const 16
                                                              i32.add
                                                              call 5
                                                              local.get 0
                                                              i32.load8_u offset=64
                                                              i32.const 1
                                                              i32.eq
                                                              br_if 26 (;@3;)
                                                              local.get 0
                                                              i32.load offset=68
                                                              local.set 6
                                                              local.get 0
                                                              i32.const 64
                                                              i32.add
                                                              i32.const 24
                                                              i32.add
                                                              i64.const 0
                                                              i64.store align=1
                                                              local.get 0
                                                              i32.const 81
                                                              i32.add
                                                              i64.const 0
                                                              i64.store align=1
                                                              local.get 0
                                                              i32.const 73
                                                              i32.add
                                                              i64.const 0
                                                              i64.store align=1
                                                              local.get 0
                                                              i64.const 0
                                                              i64.store offset=65 align=1
                                                              local.get 0
                                                              i32.const 2
                                                              i32.store8 offset=64
                                                              local.get 0
                                                              i32.const 32
                                                              i32.add
                                                              i32.const 24
                                                              i32.add
                                                              i64.const 0
                                                              i64.store
                                                              local.get 0
                                                              i32.const 32
                                                              i32.add
                                                              i32.const 16
                                                              i32.add
                                                              local.tee 8
                                                              i64.const 0
                                                              i64.store
                                                              local.get 0
                                                              i32.const 32
                                                              i32.add
                                                              i32.const 8
                                                              i32.add
                                                              i64.const 0
                                                              i64.store
                                                              local.get 0
                                                              i64.const 0
                                                              i64.store offset=32
                                                              local.get 0
                                                              i32.const 64
                                                              i32.add
                                                              local.get 0
                                                              i32.const 32
                                                              i32.add
                                                              call 3
                                                              i32.const 32
                                                              call 9
                                                              local.tee 7
                                                              i32.eqz
                                                              br_if 27 (;@2;)
                                                              local.get 0
                                                              i32.const 52
                                                              i32.add
                                                              i32.const 0
                                                              i32.store
                                                              local.get 0
                                                              i64.const 1
                                                              i64.store offset=44 align=4
                                                              local.get 0
                                                              i64.const 32
                                                              i64.store offset=36 align=4
                                                              local.get 0
                                                              local.get 7
                                                              i32.store offset=32
                                                              local.get 0
                                                              i32.const 32
                                                              i32.add
                                                              i32.const 0
                                                              i32.const 4
                                                              call 13
                                                              local.get 0
                                                              i32.load offset=32
                                                              local.get 0
                                                              i32.load offset=40
                                                              local.tee 7
                                                              i32.add
                                                              local.get 6
                                                              local.get 4
                                                              i32.add
                                                              i32.store align=1
                                                              local.get 0
                                                              local.get 7
                                                              i32.const 4
                                                              i32.add
                                                              i32.store offset=40
                                                              local.get 0
                                                              i32.const 64
                                                              i32.add
                                                              i32.const 16
                                                              i32.add
                                                              local.get 8
                                                              i64.load
                                                              i64.store
                                                              local.get 0
                                                              i32.const 64
                                                              i32.add
                                                              i32.const 8
                                                              i32.add
                                                              local.get 0
                                                              i64.load offset=40
                                                              i64.store
                                                              local.get 0
                                                              local.get 0
                                                              i64.load offset=32
                                                              i64.store offset=64
                                                              local.get 0
                                                              local.get 0
                                                              i32.const 64
                                                              i32.add
                                                              call 17
                                                              local.get 5
                                                              br_if 6 (;@23;)
                                                              br 7 (;@22;)
                                                            end
                                                            local.get 3
                                                            i32.const 32774
                                                            i32.eq
                                                            br_if 2 (;@26;)
                                                            local.get 3
                                                            i32.const 32774
                                                            i32.const 6
                                                            call 47
                                                            i32.eqz
                                                            br_if 2 (;@26;)
                                                            block  ;; label = @29
                                                              local.get 3
                                                              i32.const 32781
                                                              i32.eq
                                                              br_if 0 (;@29;)
                                                              local.get 3
                                                              i32.const 32781
                                                              i32.const 6
                                                              call 47
                                                              br_if 8 (;@21;)
                                                            end
                                                            local.get 0
                                                            i32.const 24
                                                            i32.add
                                                            i32.load
                                                            local.tee 4
                                                            local.get 0
                                                            i32.load offset=20
                                                            local.tee 6
                                                            i32.ge_u
                                                            br_if 12 (;@16;)
                                                            local.get 4
                                                            i32.const 1
                                                            i32.add
                                                            local.tee 8
                                                            local.get 6
                                                            i32.gt_u
                                                            br_if 12 (;@16;)
                                                            local.get 0
                                                            i32.const 24
                                                            i32.add
                                                            local.get 8
                                                            i32.store
                                                            local.get 8
                                                            local.get 6
                                                            i32.ge_u
                                                            br_if 13 (;@15;)
                                                            local.get 4
                                                            i32.const 2
                                                            i32.add
                                                            local.tee 7
                                                            local.get 6
                                                            i32.gt_u
                                                            br_if 13 (;@15;)
                                                            local.get 0
                                                            i32.load offset=16
                                                            local.tee 6
                                                            local.get 4
                                                            i32.add
                                                            i32.load8_u
                                                            local.set 4
                                                            local.get 0
                                                            i32.const 16
                                                            i32.add
                                                            i32.const 8
                                                            i32.add
                                                            local.get 7
                                                            i32.store
                                                            local.get 6
                                                            local.get 8
                                                            i32.add
                                                            i32.load8_u
                                                            local.set 6
                                                            i32.const 32
                                                            call 9
                                                            local.tee 8
                                                            i32.eqz
                                                            br_if 27 (;@1;)
                                                            local.get 0
                                                            i32.const 52
                                                            i32.add
                                                            i32.const 0
                                                            i32.store
                                                            local.get 0
                                                            i64.const 1
                                                            i64.store offset=44 align=4
                                                            local.get 0
                                                            i64.const 32
                                                            i64.store offset=36 align=4
                                                            local.get 0
                                                            local.get 8
                                                            i32.store offset=32
                                                            local.get 0
                                                            i32.const 32
                                                            i32.add
                                                            local.get 6
                                                            local.get 4
                                                            i32.add
                                                            call 16
                                                            local.get 0
                                                            i32.const 64
                                                            i32.add
                                                            i32.const 16
                                                            i32.add
                                                            local.get 0
                                                            i32.const 32
                                                            i32.add
                                                            i32.const 16
                                                            i32.add
                                                            i64.load
                                                            i64.store
                                                            local.get 0
                                                            i32.const 64
                                                            i32.add
                                                            i32.const 8
                                                            i32.add
                                                            local.get 0
                                                            i64.load offset=40
                                                            i64.store
                                                            local.get 0
                                                            local.get 0
                                                            i64.load offset=32
                                                            i64.store offset=64
                                                            local.get 0
                                                            local.get 0
                                                            i32.const 64
                                                            i32.add
                                                            call 17
                                                            local.get 5
                                                            br_if 5 (;@23;)
                                                            br 6 (;@22;)
                                                          end
                                                          local.get 0
                                                          i32.const 64
                                                          i32.add
                                                          local.get 0
                                                          i32.const 16
                                                          i32.add
                                                          call 44
                                                          local.get 0
                                                          i32.load8_u offset=64
                                                          i32.const 1
                                                          i32.eq
                                                          br_if 13 (;@14;)
                                                          local.get 0
                                                          i32.load offset=68
                                                          local.set 4
                                                          local.get 0
                                                          i32.const 64
                                                          i32.add
                                                          local.get 0
                                                          i32.const 16
                                                          i32.add
                                                          call 44
                                                          local.get 0
                                                          i32.load8_u offset=64
                                                          i32.const 1
                                                          i32.eq
                                                          br_if 14 (;@13;)
                                                          local.get 0
                                                          i32.load offset=68
                                                          local.set 6
                                                          i32.const 32
                                                          call 9
                                                          local.tee 8
                                                          i32.eqz
                                                          br_if 15 (;@12;)
                                                          local.get 0
                                                          i32.const 52
                                                          i32.add
                                                          i32.const 0
                                                          i32.store
                                                          local.get 0
                                                          i64.const 1
                                                          i64.store offset=44 align=4
                                                          local.get 0
                                                          i64.const 32
                                                          i64.store offset=36 align=4
                                                          local.get 0
                                                          local.get 8
                                                          i32.store offset=32
                                                          local.get 0
                                                          i32.const 32
                                                          i32.add
                                                          i32.const 0
                                                          i32.const 4
                                                          call 13
                                                          local.get 0
                                                          i32.load offset=32
                                                          local.get 0
                                                          i32.load offset=40
                                                          local.tee 8
                                                          i32.add
                                                          local.get 6
                                                          local.get 4
                                                          i32.add
                                                          i32.store align=1
                                                          local.get 0
                                                          local.get 8
                                                          i32.const 4
                                                          i32.add
                                                          i32.store offset=40
                                                          local.get 0
                                                          i32.const 64
                                                          i32.add
                                                          i32.const 16
                                                          i32.add
                                                          local.get 0
                                                          i32.const 32
                                                          i32.add
                                                          i32.const 16
                                                          i32.add
                                                          i64.load
                                                          i64.store
                                                          local.get 0
                                                          i32.const 72
                                                          i32.add
                                                          local.get 0
                                                          i64.load offset=40
                                                          i64.store
                                                          local.get 0
                                                          local.get 0
                                                          i64.load offset=32
                                                          i64.store offset=64
                                                          local.get 0
                                                          local.get 0
                                                          i32.const 64
                                                          i32.add
                                                          call 17
                                                          local.get 5
                                                          br_if 4 (;@23;)
                                                          br 5 (;@22;)
                                                        end
                                                        local.get 0
                                                        i32.const 64
                                                        i32.add
                                                        i32.const 24
                                                        i32.add
                                                        i64.const 0
                                                        i64.store align=1
                                                        local.get 0
                                                        i32.const 81
                                                        i32.add
                                                        i64.const 0
                                                        i64.store align=1
                                                        local.get 0
                                                        i32.const 73
                                                        i32.add
                                                        i64.const 0
                                                        i64.store align=1
                                                        local.get 0
                                                        i64.const 0
                                                        i64.store offset=65 align=1
                                                        local.get 0
                                                        i32.const 2
                                                        i32.store8 offset=64
                                                        local.get 0
                                                        i32.const 32
                                                        i32.add
                                                        i32.const 24
                                                        i32.add
                                                        i64.const 0
                                                        i64.store
                                                        local.get 0
                                                        i32.const 32
                                                        i32.add
                                                        i32.const 16
                                                        i32.add
                                                        local.tee 4
                                                        i64.const 0
                                                        i64.store
                                                        local.get 0
                                                        i32.const 32
                                                        i32.add
                                                        i32.const 8
                                                        i32.add
                                                        i64.const 0
                                                        i64.store
                                                        local.get 0
                                                        i64.const 0
                                                        i64.store offset=32
                                                        local.get 0
                                                        i32.const 64
                                                        i32.add
                                                        local.get 0
                                                        i32.const 32
                                                        i32.add
                                                        call 3
                                                        i32.const 32
                                                        call 9
                                                        local.tee 6
                                                        i32.eqz
                                                        br_if 15 (;@11;)
                                                        local.get 0
                                                        i32.const 52
                                                        i32.add
                                                        i32.const 0
                                                        i32.store
                                                        local.get 0
                                                        i64.const 1
                                                        i64.store offset=44 align=4
                                                        local.get 0
                                                        i64.const 32
                                                        i64.store offset=36 align=4
                                                        local.get 0
                                                        local.get 6
                                                        i32.store offset=32
                                                        local.get 0
                                                        i32.const 32
                                                        i32.add
                                                        i32.const 0
                                                        i32.const 4
                                                        call 13
                                                        local.get 0
                                                        i32.load offset=32
                                                        local.get 0
                                                        i32.load offset=40
                                                        local.tee 6
                                                        i32.add
                                                        i32.const 10
                                                        i32.store align=1
                                                        local.get 0
                                                        local.get 6
                                                        i32.const 4
                                                        i32.add
                                                        i32.store offset=40
                                                        local.get 0
                                                        i32.const 64
                                                        i32.add
                                                        i32.const 16
                                                        i32.add
                                                        local.get 4
                                                        i64.load
                                                        i64.store
                                                        local.get 0
                                                        i32.const 64
                                                        i32.add
                                                        i32.const 8
                                                        i32.add
                                                        local.get 0
                                                        i64.load offset=40
                                                        i64.store
                                                        local.get 0
                                                        local.get 0
                                                        i64.load offset=32
                                                        i64.store offset=64
                                                        local.get 0
                                                        local.get 0
                                                        i32.const 64
                                                        i32.add
                                                        call 17
                                                        local.get 5
                                                        br_if 3 (;@23;)
                                                        br 4 (;@22;)
                                                      end
                                                      local.get 0
                                                      i32.const 64
                                                      i32.add
                                                      local.get 0
                                                      i32.const 16
                                                      i32.add
                                                      call 7
                                                      local.get 0
                                                      i32.load8_u offset=64
                                                      i32.const 1
                                                      i32.eq
                                                      br_if 15 (;@10;)
                                                      local.get 0
                                                      i32.const 64
                                                      i32.add
                                                      i32.const 8
                                                      i32.add
                                                      local.tee 4
                                                      i64.load
                                                      local.set 10
                                                      local.get 0
                                                      i32.const 64
                                                      i32.add
                                                      local.get 0
                                                      i32.const 16
                                                      i32.add
                                                      call 7
                                                      local.get 0
                                                      i32.load8_u offset=64
                                                      i32.const 1
                                                      i32.eq
                                                      br_if 16 (;@9;)
                                                      local.get 4
                                                      i64.load
                                                      local.set 11
                                                      local.get 0
                                                      i32.const 64
                                                      i32.add
                                                      i32.const 24
                                                      i32.add
                                                      i64.const 0
                                                      i64.store align=1
                                                      local.get 0
                                                      i32.const 81
                                                      i32.add
                                                      i64.const 0
                                                      i64.store align=1
                                                      local.get 0
                                                      i32.const 73
                                                      i32.add
                                                      i64.const 0
                                                      i64.store align=1
                                                      local.get 0
                                                      i64.const 0
                                                      i64.store offset=65 align=1
                                                      local.get 0
                                                      i32.const 2
                                                      i32.store8 offset=64
                                                      local.get 0
                                                      i32.const 32
                                                      i32.add
                                                      i32.const 24
                                                      i32.add
                                                      i64.const 0
                                                      i64.store
                                                      local.get 0
                                                      i32.const 32
                                                      i32.add
                                                      i32.const 16
                                                      i32.add
                                                      local.tee 4
                                                      i64.const 0
                                                      i64.store
                                                      local.get 0
                                                      i32.const 32
                                                      i32.add
                                                      i32.const 8
                                                      i32.add
                                                      i64.const 0
                                                      i64.store
                                                      local.get 0
                                                      i64.const 0
                                                      i64.store offset=32
                                                      local.get 0
                                                      i32.const 64
                                                      i32.add
                                                      local.get 0
                                                      i32.const 32
                                                      i32.add
                                                      call 3
                                                      i32.const 32
                                                      call 9
                                                      local.tee 6
                                                      i32.eqz
                                                      br_if 17 (;@8;)
                                                      local.get 0
                                                      i32.const 52
                                                      i32.add
                                                      i32.const 0
                                                      i32.store
                                                      local.get 0
                                                      i64.const 1
                                                      i64.store offset=44 align=4
                                                      local.get 0
                                                      i64.const 32
                                                      i64.store offset=36 align=4
                                                      local.get 0
                                                      local.get 6
                                                      i32.store offset=32
                                                      local.get 0
                                                      i32.const 32
                                                      i32.add
                                                      i32.const 0
                                                      i32.const 8
                                                      call 13
                                                      local.get 0
                                                      i32.load offset=32
                                                      local.get 0
                                                      i32.load offset=40
                                                      local.tee 6
                                                      i32.add
                                                      local.get 11
                                                      local.get 10
                                                      i64.add
                                                      i64.store align=1
                                                      local.get 0
                                                      local.get 6
                                                      i32.const 8
                                                      i32.add
                                                      i32.store offset=40
                                                      local.get 0
                                                      i32.const 64
                                                      i32.add
                                                      i32.const 16
                                                      i32.add
                                                      local.get 4
                                                      i64.load
                                                      i64.store
                                                      local.get 0
                                                      i32.const 64
                                                      i32.add
                                                      i32.const 8
                                                      i32.add
                                                      local.get 0
                                                      i64.load offset=40
                                                      i64.store
                                                      local.get 0
                                                      local.get 0
                                                      i64.load offset=32
                                                      i64.store offset=64
                                                      local.get 0
                                                      local.get 0
                                                      i32.const 64
                                                      i32.add
                                                      call 17
                                                      local.get 5
                                                      br_if 2 (;@23;)
                                                      br 3 (;@22;)
                                                    end
                                                    block  ;; label = @25
                                                      local.get 4
                                                      i32.const 65534
                                                      i32.gt_u
                                                      br_if 0 (;@25;)
                                                      local.get 0
                                                      i32.const 32
                                                      i32.add
                                                      i32.const 254
                                                      call 16
                                                      local.get 0
                                                      i32.const 32
                                                      i32.add
                                                      local.get 0
                                                      i32.const 40
                                                      i32.add
                                                      local.tee 9
                                                      i32.load
                                                      i32.const 2
                                                      call 13
                                                      local.get 9
                                                      local.get 9
                                                      i32.load
                                                      local.tee 12
                                                      i32.const 2
                                                      i32.add
                                                      local.tee 8
                                                      i32.store
                                                      local.get 12
                                                      local.get 0
                                                      i32.load offset=32
                                                      i32.add
                                                      local.get 4
                                                      i32.store16 align=1
                                                      local.get 0
                                                      i32.const 32
                                                      i32.add
                                                      local.set 9
                                                      br 1 (;@24;)
                                                    end
                                                    local.get 0
                                                    i32.const 32
                                                    i32.add
                                                    i32.const 255
                                                    call 16
                                                    local.get 0
                                                    i32.const 32
                                                    i32.add
                                                    local.get 0
                                                    i32.const 40
                                                    i32.add
                                                    local.tee 9
                                                    i32.load
                                                    i32.const 4
                                                    call 13
                                                    local.get 9
                                                    local.get 9
                                                    i32.load
                                                    local.tee 12
                                                    i32.const 4
                                                    i32.add
                                                    local.tee 8
                                                    i32.store
                                                    local.get 12
                                                    local.get 0
                                                    i32.load offset=32
                                                    i32.add
                                                    local.get 4
                                                    i32.store align=1
                                                    local.get 0
                                                    i32.const 32
                                                    i32.add
                                                    local.set 9
                                                  end
                                                  local.get 9
                                                  local.get 8
                                                  local.get 4
                                                  call 13
                                                  local.get 0
                                                  i32.const 32
                                                  i32.add
                                                  i32.const 8
                                                  i32.add
                                                  local.tee 8
                                                  local.get 8
                                                  i32.load
                                                  local.tee 9
                                                  local.get 4
                                                  i32.add
                                                  i32.store
                                                  local.get 9
                                                  local.get 0
                                                  i32.load offset=32
                                                  i32.add
                                                  local.get 7
                                                  local.get 4
                                                  call 46
                                                  drop
                                                  block  ;; label = @24
                                                    local.get 6
                                                    i32.eqz
                                                    br_if 0 (;@24;)
                                                    local.get 7
                                                    local.get 6
                                                    call 18
                                                  end
                                                  local.get 0
                                                  i32.const 64
                                                  i32.add
                                                  i32.const 16
                                                  i32.add
                                                  local.get 0
                                                  i32.const 32
                                                  i32.add
                                                  i32.const 16
                                                  i32.add
                                                  i64.load
                                                  i64.store
                                                  local.get 0
                                                  i32.const 64
                                                  i32.add
                                                  i32.const 8
                                                  i32.add
                                                  local.get 8
                                                  i64.load
                                                  i64.store
                                                  local.get 0
                                                  local.get 0
                                                  i64.load offset=32
                                                  i64.store offset=64
                                                  local.get 0
                                                  local.get 0
                                                  i32.const 64
                                                  i32.add
                                                  call 17
                                                  local.get 5
                                                  i32.eqz
                                                  br_if 1 (;@22;)
                                                end
                                                local.get 3
                                                local.get 5
                                                call 18
                                              end
                                              local.get 0
                                              i32.load
                                              local.tee 3
                                              local.get 0
                                              i32.load offset=8
                                              call 4
                                              block  ;; label = @22
                                                local.get 0
                                                i32.load offset=4
                                                local.tee 5
                                                i32.eqz
                                                br_if 0 (;@22;)
                                                local.get 3
                                                local.get 5
                                                call 18
                                              end
                                              block  ;; label = @22
                                                local.get 2
                                                i32.eqz
                                                br_if 0 (;@22;)
                                                local.get 1
                                                local.get 2
                                                call 18
                                              end
                                              local.get 0
                                              i32.const 96
                                              i32.add
                                              global.set 0
                                              return
                                            end
                                            i32.const 33148
                                            call 23
                                            unreachable
                                          end
                                          local.get 0
                                          i32.load8_u offset=65
                                          call 42
                                          unreachable
                                        end
                                        call 21
                                        unreachable
                                      end
                                      local.get 3
                                      i32.const 1
                                      call 10
                                      unreachable
                                    end
                                    i32.const 32
                                    i32.const 1
                                    call 10
                                    unreachable
                                  end
                                  i32.const 3
                                  call 42
                                  unreachable
                                end
                                i32.const 3
                                call 42
                                unreachable
                              end
                              local.get 0
                              i32.load8_u offset=65
                              call 42
                              unreachable
                            end
                            local.get 0
                            i32.load8_u offset=65
                            call 42
                            unreachable
                          end
                          i32.const 32
                          i32.const 1
                          call 10
                          unreachable
                        end
                        i32.const 32
                        i32.const 1
                        call 10
                        unreachable
                      end
                      local.get 0
                      i32.load8_u offset=65
                      call 42
                      unreachable
                    end
                    local.get 0
                    i32.load8_u offset=65
                    call 42
                    unreachable
                  end
                  i32.const 32
                  i32.const 1
                  call 10
                  unreachable
                end
                local.get 0
                i32.load8_u offset=65
                call 42
                unreachable
              end
              local.get 0
              i32.load8_u offset=65
              call 42
              unreachable
            end
            i32.const 32
            i32.const 1
            call 10
            unreachable
          end
          local.get 0
          i32.load8_u offset=65
          call 42
          unreachable
        end
        local.get 0
        i32.load8_u offset=65
        call 42
        unreachable
      end
      i32.const 32
      i32.const 1
      call 10
      unreachable
    end
    i32.const 32
    i32.const 1
    call 10
    unreachable)
  (func (;46;) (type 8) (param i32 i32 i32) (result i32)
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
  (func (;47;) (type 8) (param i32 i32 i32) (result i32)
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
  (global (;0;) (mut i32) (i32.const 32768))
  (export "call" (func 45))
  (elem (;0;) (i32.const 1) 31 34 35 36 39 29 32 33 38)
  (data (;0;) (i32.const 32768) "booaddaddu64sadd_u8add_i32add_i64Invalid method nameexamples/bxa/src/lib.rscapacity overflowsrc/liballoc/raw_vec.rs\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00\00Hello,")
  (data (;1;) (i32.const 33148) "!\80\00\00\13\00\00\004\80\00\00\17\00\00\00\0d\00\00\00\01\00\00\00K\80\00\00\11\00\00\00\5c\80\00\00\17\00\00\00\ea\02\00\00\05\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\04\00\00\00\04\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00")
  (data (;2;) (i32.const 33268) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
