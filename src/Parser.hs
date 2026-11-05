{-# OPTIONS_GHC -w #-}
module Parser where

import AST
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,177) ([256,0,0,2,0,0,512,0,0,0,0,0,1024,64,0,0,14354,0,512,0,0,0,16384,0,33592,32,28672,16646,0,0,128,0,0,1,16384,0,0,4199,4,16384,0,0,16796,16,1792,8184,0,1648,65,0,0,0,0,0,0,0,0,0,0,0,8398,8,39936,4161,8192,63494,31,33056,3,0,0,1024,0,0,0,0,0,4736,56,0,52736,2080,0,16796,16,14336,8323,0,1648,65,57344,33292,0,6592,260,32768,2099,2,26368,1040,0,8398,8,39936,4161,0,33592,32,28672,16646,0,57368,383,0,0,0,0,0,4736,56,0,384,6142,0,0,32,1536,8184,0,0,0,0,0,0,0,0,0,0,0,14354,0,0,0,0,0,480,0,49152,3,0,1920,0,0,0,0,0,0,0,48,0,24576,0,0,240,0,57344,1,0,960,0,61444,63,0,32736,0,0,0,2368,28,0,1,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Program","StatementList","Body","Statement","Expression","program","begin","end","if","then","else","while","do","and","or","not","true","false","write","read","id","int","':='","'<>'","'<='","'>='","'+'","'-'","'*'","'/'","'='","'<'","'>'","'('","')'","';'","'.'","%eof"]
        bit_start = st Prelude.* 41
        bit_end = (st Prelude.+ 1) Prelude.* 41
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..40]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (9) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (9) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (24) = happyShift action_4
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (41) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (39) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (10) = happyShift action_6
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (12) = happyShift action_9
action_6 (15) = happyShift action_10
action_6 (22) = happyShift action_11
action_6 (23) = happyShift action_12
action_6 (24) = happyShift action_13
action_6 (5) = happyGoto action_7
action_6 (7) = happyGoto action_8
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (11) = happyShift action_27
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (39) = happyShift action_26
action_8 _ = happyReduce_2

action_9 (19) = happyShift action_18
action_9 (20) = happyShift action_19
action_9 (21) = happyShift action_20
action_9 (24) = happyShift action_21
action_9 (25) = happyShift action_22
action_9 (31) = happyShift action_23
action_9 (37) = happyShift action_24
action_9 (8) = happyGoto action_25
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (19) = happyShift action_18
action_10 (20) = happyShift action_19
action_10 (21) = happyShift action_20
action_10 (24) = happyShift action_21
action_10 (25) = happyShift action_22
action_10 (31) = happyShift action_23
action_10 (37) = happyShift action_24
action_10 (8) = happyGoto action_17
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (37) = happyShift action_16
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (37) = happyShift action_15
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (26) = happyShift action_14
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (19) = happyShift action_18
action_14 (20) = happyShift action_19
action_14 (21) = happyShift action_20
action_14 (24) = happyShift action_21
action_14 (25) = happyShift action_22
action_14 (31) = happyShift action_23
action_14 (37) = happyShift action_24
action_14 (8) = happyGoto action_49
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (24) = happyShift action_48
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (19) = happyShift action_18
action_16 (20) = happyShift action_19
action_16 (21) = happyShift action_20
action_16 (24) = happyShift action_21
action_16 (25) = happyShift action_22
action_16 (31) = happyShift action_23
action_16 (37) = happyShift action_24
action_16 (8) = happyGoto action_47
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (16) = happyShift action_46
action_17 (17) = happyShift action_31
action_17 (18) = happyShift action_32
action_17 (27) = happyShift action_33
action_17 (28) = happyShift action_34
action_17 (29) = happyShift action_35
action_17 (30) = happyShift action_36
action_17 (31) = happyShift action_37
action_17 (32) = happyShift action_38
action_17 (33) = happyShift action_39
action_17 (34) = happyShift action_40
action_17 (35) = happyShift action_41
action_17 (36) = happyShift action_42
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (19) = happyShift action_18
action_18 (20) = happyShift action_19
action_18 (21) = happyShift action_20
action_18 (24) = happyShift action_21
action_18 (25) = happyShift action_22
action_18 (31) = happyShift action_23
action_18 (37) = happyShift action_24
action_18 (8) = happyGoto action_45
action_18 _ = happyFail (happyExpListPerState 18)

action_19 _ = happyReduce_15

action_20 _ = happyReduce_16

action_21 _ = happyReduce_13

action_22 _ = happyReduce_14

action_23 (19) = happyShift action_18
action_23 (20) = happyShift action_19
action_23 (21) = happyShift action_20
action_23 (24) = happyShift action_21
action_23 (25) = happyShift action_22
action_23 (31) = happyShift action_23
action_23 (37) = happyShift action_24
action_23 (8) = happyGoto action_44
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (19) = happyShift action_18
action_24 (20) = happyShift action_19
action_24 (21) = happyShift action_20
action_24 (24) = happyShift action_21
action_24 (25) = happyShift action_22
action_24 (31) = happyShift action_23
action_24 (37) = happyShift action_24
action_24 (8) = happyGoto action_43
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (13) = happyShift action_30
action_25 (17) = happyShift action_31
action_25 (18) = happyShift action_32
action_25 (27) = happyShift action_33
action_25 (28) = happyShift action_34
action_25 (29) = happyShift action_35
action_25 (30) = happyShift action_36
action_25 (31) = happyShift action_37
action_25 (32) = happyShift action_38
action_25 (33) = happyShift action_39
action_25 (34) = happyShift action_40
action_25 (35) = happyShift action_41
action_25 (36) = happyShift action_42
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (12) = happyShift action_9
action_26 (15) = happyShift action_10
action_26 (22) = happyShift action_11
action_26 (23) = happyShift action_12
action_26 (24) = happyShift action_13
action_26 (5) = happyGoto action_29
action_26 (7) = happyGoto action_8
action_26 _ = happyReduce_3

action_27 (40) = happyShift action_28
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_1

action_29 _ = happyReduce_4

action_30 (10) = happyShift action_54
action_30 (12) = happyShift action_9
action_30 (15) = happyShift action_10
action_30 (22) = happyShift action_11
action_30 (23) = happyShift action_12
action_30 (24) = happyShift action_13
action_30 (6) = happyGoto action_68
action_30 (7) = happyGoto action_53
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (19) = happyShift action_18
action_31 (20) = happyShift action_19
action_31 (21) = happyShift action_20
action_31 (24) = happyShift action_21
action_31 (25) = happyShift action_22
action_31 (31) = happyShift action_23
action_31 (37) = happyShift action_24
action_31 (8) = happyGoto action_67
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (19) = happyShift action_18
action_32 (20) = happyShift action_19
action_32 (21) = happyShift action_20
action_32 (24) = happyShift action_21
action_32 (25) = happyShift action_22
action_32 (31) = happyShift action_23
action_32 (37) = happyShift action_24
action_32 (8) = happyGoto action_66
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (19) = happyShift action_18
action_33 (20) = happyShift action_19
action_33 (21) = happyShift action_20
action_33 (24) = happyShift action_21
action_33 (25) = happyShift action_22
action_33 (31) = happyShift action_23
action_33 (37) = happyShift action_24
action_33 (8) = happyGoto action_65
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (19) = happyShift action_18
action_34 (20) = happyShift action_19
action_34 (21) = happyShift action_20
action_34 (24) = happyShift action_21
action_34 (25) = happyShift action_22
action_34 (31) = happyShift action_23
action_34 (37) = happyShift action_24
action_34 (8) = happyGoto action_64
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (19) = happyShift action_18
action_35 (20) = happyShift action_19
action_35 (21) = happyShift action_20
action_35 (24) = happyShift action_21
action_35 (25) = happyShift action_22
action_35 (31) = happyShift action_23
action_35 (37) = happyShift action_24
action_35 (8) = happyGoto action_63
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (19) = happyShift action_18
action_36 (20) = happyShift action_19
action_36 (21) = happyShift action_20
action_36 (24) = happyShift action_21
action_36 (25) = happyShift action_22
action_36 (31) = happyShift action_23
action_36 (37) = happyShift action_24
action_36 (8) = happyGoto action_62
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (19) = happyShift action_18
action_37 (20) = happyShift action_19
action_37 (21) = happyShift action_20
action_37 (24) = happyShift action_21
action_37 (25) = happyShift action_22
action_37 (31) = happyShift action_23
action_37 (37) = happyShift action_24
action_37 (8) = happyGoto action_61
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (19) = happyShift action_18
action_38 (20) = happyShift action_19
action_38 (21) = happyShift action_20
action_38 (24) = happyShift action_21
action_38 (25) = happyShift action_22
action_38 (31) = happyShift action_23
action_38 (37) = happyShift action_24
action_38 (8) = happyGoto action_60
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (19) = happyShift action_18
action_39 (20) = happyShift action_19
action_39 (21) = happyShift action_20
action_39 (24) = happyShift action_21
action_39 (25) = happyShift action_22
action_39 (31) = happyShift action_23
action_39 (37) = happyShift action_24
action_39 (8) = happyGoto action_59
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (19) = happyShift action_18
action_40 (20) = happyShift action_19
action_40 (21) = happyShift action_20
action_40 (24) = happyShift action_21
action_40 (25) = happyShift action_22
action_40 (31) = happyShift action_23
action_40 (37) = happyShift action_24
action_40 (8) = happyGoto action_58
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (19) = happyShift action_18
action_41 (20) = happyShift action_19
action_41 (21) = happyShift action_20
action_41 (24) = happyShift action_21
action_41 (25) = happyShift action_22
action_41 (31) = happyShift action_23
action_41 (37) = happyShift action_24
action_41 (8) = happyGoto action_57
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (19) = happyShift action_18
action_42 (20) = happyShift action_19
action_42 (21) = happyShift action_20
action_42 (24) = happyShift action_21
action_42 (25) = happyShift action_22
action_42 (31) = happyShift action_23
action_42 (37) = happyShift action_24
action_42 (8) = happyGoto action_56
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (17) = happyShift action_31
action_43 (18) = happyShift action_32
action_43 (27) = happyShift action_33
action_43 (28) = happyShift action_34
action_43 (29) = happyShift action_35
action_43 (30) = happyShift action_36
action_43 (31) = happyShift action_37
action_43 (32) = happyShift action_38
action_43 (33) = happyShift action_39
action_43 (34) = happyShift action_40
action_43 (35) = happyShift action_41
action_43 (36) = happyShift action_42
action_43 (38) = happyShift action_55
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_30

action_45 _ = happyReduce_29

action_46 (10) = happyShift action_54
action_46 (12) = happyShift action_9
action_46 (15) = happyShift action_10
action_46 (22) = happyShift action_11
action_46 (23) = happyShift action_12
action_46 (24) = happyShift action_13
action_46 (6) = happyGoto action_52
action_46 (7) = happyGoto action_53
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (17) = happyShift action_31
action_47 (18) = happyShift action_32
action_47 (27) = happyShift action_33
action_47 (28) = happyShift action_34
action_47 (29) = happyShift action_35
action_47 (30) = happyShift action_36
action_47 (31) = happyShift action_37
action_47 (32) = happyShift action_38
action_47 (33) = happyShift action_39
action_47 (34) = happyShift action_40
action_47 (35) = happyShift action_41
action_47 (36) = happyShift action_42
action_47 (38) = happyShift action_51
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (38) = happyShift action_50
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (17) = happyShift action_31
action_49 (18) = happyShift action_32
action_49 (27) = happyShift action_33
action_49 (28) = happyShift action_34
action_49 (29) = happyShift action_35
action_49 (30) = happyShift action_36
action_49 (31) = happyShift action_37
action_49 (32) = happyShift action_38
action_49 (33) = happyShift action_39
action_49 (34) = happyShift action_40
action_49 (35) = happyShift action_41
action_49 (36) = happyShift action_42
action_49 _ = happyReduce_7

action_50 _ = happyReduce_12

action_51 _ = happyReduce_11

action_52 _ = happyReduce_10

action_53 _ = happyReduce_5

action_54 (12) = happyShift action_9
action_54 (15) = happyShift action_10
action_54 (22) = happyShift action_11
action_54 (23) = happyShift action_12
action_54 (24) = happyShift action_13
action_54 (5) = happyGoto action_70
action_54 (7) = happyGoto action_8
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_31

action_56 (27) = happyFail []
action_56 (28) = happyFail []
action_56 (29) = happyFail []
action_56 (30) = happyShift action_36
action_56 (31) = happyShift action_37
action_56 (32) = happyShift action_38
action_56 (33) = happyShift action_39
action_56 (34) = happyFail []
action_56 (35) = happyFail []
action_56 (36) = happyFail []
action_56 _ = happyReduce_25

action_57 (27) = happyFail []
action_57 (28) = happyFail []
action_57 (29) = happyFail []
action_57 (30) = happyShift action_36
action_57 (31) = happyShift action_37
action_57 (32) = happyShift action_38
action_57 (33) = happyShift action_39
action_57 (34) = happyFail []
action_57 (35) = happyFail []
action_57 (36) = happyFail []
action_57 _ = happyReduce_23

action_58 (27) = happyFail []
action_58 (28) = happyFail []
action_58 (29) = happyFail []
action_58 (30) = happyShift action_36
action_58 (31) = happyShift action_37
action_58 (32) = happyShift action_38
action_58 (33) = happyShift action_39
action_58 (34) = happyFail []
action_58 (35) = happyFail []
action_58 (36) = happyFail []
action_58 _ = happyReduce_21

action_59 _ = happyReduce_20

action_60 _ = happyReduce_19

action_61 (32) = happyShift action_38
action_61 (33) = happyShift action_39
action_61 _ = happyReduce_18

action_62 (32) = happyShift action_38
action_62 (33) = happyShift action_39
action_62 _ = happyReduce_17

action_63 (27) = happyFail []
action_63 (28) = happyFail []
action_63 (29) = happyFail []
action_63 (30) = happyShift action_36
action_63 (31) = happyShift action_37
action_63 (32) = happyShift action_38
action_63 (33) = happyShift action_39
action_63 (34) = happyFail []
action_63 (35) = happyFail []
action_63 (36) = happyFail []
action_63 _ = happyReduce_26

action_64 (27) = happyFail []
action_64 (28) = happyFail []
action_64 (29) = happyFail []
action_64 (30) = happyShift action_36
action_64 (31) = happyShift action_37
action_64 (32) = happyShift action_38
action_64 (33) = happyShift action_39
action_64 (34) = happyFail []
action_64 (35) = happyFail []
action_64 (36) = happyFail []
action_64 _ = happyReduce_24

action_65 (27) = happyFail []
action_65 (28) = happyFail []
action_65 (29) = happyFail []
action_65 (30) = happyShift action_36
action_65 (31) = happyShift action_37
action_65 (32) = happyShift action_38
action_65 (33) = happyShift action_39
action_65 (34) = happyFail []
action_65 (35) = happyFail []
action_65 (36) = happyFail []
action_65 _ = happyReduce_22

action_66 (17) = happyShift action_31
action_66 (27) = happyShift action_33
action_66 (28) = happyShift action_34
action_66 (29) = happyShift action_35
action_66 (30) = happyShift action_36
action_66 (31) = happyShift action_37
action_66 (32) = happyShift action_38
action_66 (33) = happyShift action_39
action_66 (34) = happyShift action_40
action_66 (35) = happyShift action_41
action_66 (36) = happyShift action_42
action_66 _ = happyReduce_28

action_67 (27) = happyShift action_33
action_67 (28) = happyShift action_34
action_67 (29) = happyShift action_35
action_67 (30) = happyShift action_36
action_67 (31) = happyShift action_37
action_67 (32) = happyShift action_38
action_67 (33) = happyShift action_39
action_67 (34) = happyShift action_40
action_67 (35) = happyShift action_41
action_67 (36) = happyShift action_42
action_67 _ = happyReduce_27

action_68 (14) = happyShift action_69
action_68 _ = happyReduce_8

action_69 (10) = happyShift action_54
action_69 (12) = happyShift action_9
action_69 (15) = happyShift action_10
action_69 (22) = happyShift action_11
action_69 (23) = happyShift action_12
action_69 (24) = happyShift action_13
action_69 (6) = happyGoto action_72
action_69 (7) = happyGoto action_53
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (11) = happyShift action_71
action_70 _ = happyFail (happyExpListPerState 70)

action_71 _ = happyReduce_6

action_72 _ = happyReduce_9

happyReduce_1 = happyReduce 7 4 happyReduction_1
happyReduction_1 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenId happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Program happy_var_2 happy_var_5
	) `HappyStk` happyRest

happyReduce_2 = happySpecReduce_1  5 happyReduction_2
happyReduction_2 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_2  5 happyReduction_3
happyReduction_3 _
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  5 happyReduction_4
happyReduction_4 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  6 happyReduction_5
happyReduction_5 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 ([happy_var_1]
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  6 happyReduction_6
happyReduction_6 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  7 happyReduction_7
happyReduction_7 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenId happy_var_1))
	 =  HappyAbsSyn7
		 (Assignment happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happyReduce 4 7 happyReduction_8
happyReduction_8 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (If happy_var_2 happy_var_4 Nothing
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 6 7 happyReduction_9
happyReduction_9 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (If happy_var_2 happy_var_4 (Just happy_var_6)
	) `HappyStk` happyRest

happyReduce_10 = happyReduce 4 7 happyReduction_10
happyReduction_10 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_11 = happyReduce 4 7 happyReduction_11
happyReduction_11 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Write happy_var_3
	) `HappyStk` happyRest

happyReduce_12 = happyReduce 4 7 happyReduction_12
happyReduction_12 (_ `HappyStk`
	(HappyTerminal (TokenId happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Read happy_var_3
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_1  8 happyReduction_13
happyReduction_13 (HappyTerminal (TokenId happy_var_1))
	 =  HappyAbsSyn8
		 (Var happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  8 happyReduction_14
happyReduction_14 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn8
		 (IntLit happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  8 happyReduction_15
happyReduction_15 _
	 =  HappyAbsSyn8
		 (BoolLit True
	)

happyReduce_16 = happySpecReduce_1  8 happyReduction_16
happyReduction_16 _
	 =  HappyAbsSyn8
		 (BoolLit False
	)

happyReduce_17 = happySpecReduce_3  8 happyReduction_17
happyReduction_17 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (BinOp Add happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  8 happyReduction_18
happyReduction_18 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (BinOp Sub happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  8 happyReduction_19
happyReduction_19 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (BinOp Mul happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  8 happyReduction_20
happyReduction_20 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (BinOp Div happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  8 happyReduction_21
happyReduction_21 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (BinOp Equal happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  8 happyReduction_22
happyReduction_22 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (BinOp NotEqual happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  8 happyReduction_23
happyReduction_23 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (BinOp Lt happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  8 happyReduction_24
happyReduction_24 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (BinOp Leq happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  8 happyReduction_25
happyReduction_25 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (BinOp Gt happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  8 happyReduction_26
happyReduction_26 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (BinOp Geq happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  8 happyReduction_27
happyReduction_27 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (BinOp And happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  8 happyReduction_28
happyReduction_28 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (BinOp Or happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_2  8 happyReduction_29
happyReduction_29 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (UnOp Not happy_var_2
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_2  8 happyReduction_30
happyReduction_30 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (UnOp Neg happy_var_2
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  8 happyReduction_31
happyReduction_31 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 41 41 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenProgram -> cont 9;
	TokenBegin -> cont 10;
	TokenEnd -> cont 11;
	TokenIf -> cont 12;
	TokenThen -> cont 13;
	TokenElse -> cont 14;
	TokenWhile -> cont 15;
	TokenDo -> cont 16;
	TokenAnd -> cont 17;
	TokenOr -> cont 18;
	TokenNot -> cont 19;
	TokenTrue -> cont 20;
	TokenFalse -> cont 21;
	TokenWrite -> cont 22;
	TokenRead -> cont 23;
	TokenId happy_dollar_dollar -> cont 24;
	TokenInt happy_dollar_dollar -> cont 25;
	TokenAssign -> cont 26;
	TokenNeq -> cont 27;
	TokenLeq -> cont 28;
	TokenGeq -> cont 29;
	TokenPlus -> cont 30;
	TokenMinus -> cont 31;
	TokenTimes -> cont 32;
	TokenDiv -> cont 33;
	TokenEq -> cont 34;
	TokenLt -> cont 35;
	TokenGt -> cont 36;
	TokenLParen -> cont 37;
	TokenRParen -> cont 38;
	TokenSemicolon -> cont 39;
	TokenDot -> cont 40;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 41 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parse tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError tokens = error ("Erro sintático perto de: " ++ show (take 10 tokens))
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
