/*
 * Code for class APPLICATION
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F866_7012(EIF_REFERENCE);
extern EIF_TYPED_VALUE F866_7013(EIF_REFERENCE);
extern EIF_TYPED_VALUE F866_7014(EIF_REFERENCE);
extern EIF_TYPED_VALUE F866_7015(EIF_REFERENCE);
extern EIF_TYPED_VALUE F866_7016(EIF_REFERENCE);
extern EIF_TYPED_VALUE F866_7017(EIF_REFERENCE);
extern EIF_TYPED_VALUE F866_7026(EIF_REFERENCE);
extern void EIF_Minit866(void);

#ifdef __cplusplus
}
#endif

#include "eif_out.h"

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {APPLICATION}.make */
void F866_7012 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc7 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc8 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc9 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc10 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc11 = (EIF_REFERENCE) 0;
	RTS_SD;
	RTS_SDC;
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {{0}, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ur3x = {{0}, SK_REF};
#define ur3 ur3x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {{0}, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(17);
	RTLR(0,loc4);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLR(3,loc6);
	RTLR(4,loc2);
	RTLR(5,loc7);
	RTLR(6,tr2);
	RTLR(7,ur1);
	RTLR(8,loc3);
	RTLR(9,loc8);
	RTLR(10,loc5);
	RTLR(11,ur2);
	RTLR(12,ur3);
	RTLR(13,loc9);
	RTLR(14,loc1);
	RTLR(15,loc10);
	RTLR(16,loc11);
	RTLIU(17);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_REF, &loc6);
	RTLU(SK_REF, &loc7);
	RTLU(SK_REF, &loc8);
	RTLU(SK_REF, &loc9);
	RTLU(SK_REF, &loc10);
	RTLU(SK_REF, &loc11);
	
	RTEAA(l_feature_name, 865, Current, 11, 0, 12693);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(865, Current, 12693);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 4, 0xF800035E, 0, 0); /* loc4 */
	tr1 = RTLN(eif_new_type(862, 0x05).id);
	RTS_PA (tr1);
	RTS_AC (0, tr1);
	RTS_CALL (4920, SK_VOID);
	RTNHOOK(1,1);
	loc4 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 6, 0xF800035C, 0, 0); /* loc6 */
	tr1 = RTLN(eif_new_type(860, 0x05).id);
	RTS_PA (tr1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4945, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	RTS_AC (1, tr1);
	RTS_AA (ui4_1x, it_i4, SK_INT32, 1);
	RTS_CALL (4897, SK_VOID);
	RTNHOOK(2,1);
	loc6 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAL(Current, 2, 0xF8000125, 0, 0); /* loc2 */
	{
		static EIF_TYPE_INDEX typarr0[] = {0xFF05,293,0xFF05,863,0xFFFF};
		EIF_TYPE typres0;
		static EIF_TYPE typcache0 = {INVALID_DTYPE, 0};
		
		typres0 = (typcache0.id != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), typarr0)));
		tr1 = RTLN(typres0.id);
	}
	RTS_PA (tr1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4943, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	RTS_AC (1, tr1);
	RTS_AA (ui4_1x, it_i4, SK_INT32, 1);
	RTS_CALL (3422, SK_VOID);
	RTNHOOK(3,1);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	RTDBGAL(Current, 1, 0xF80001B6, 0, 0); /* loc7 */
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4943, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	tr1 = RTLN(eif_new_type(206, 0x00).id);
	*(EIF_INTEGER_32 *)tr1 = ((EIF_INTEGER_32) 1L);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4134, "interval", tr1))(tr1, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2318, "new_cursor", (tr2)))((tr2))), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc7 = (EIF_REFERENCE) RTCCL(tr1);
	for (;;) {
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1691, "after", loc7))(loc7)).it_b);
		if (tb1) break;
		RTHOOK(5);
		tr1 = RTMS_EX_H("Creating barber ",16,1879424288);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1690, "item", loc7))(loc7)).it_i4);
		RTNHOOK(5,1);
		tr2 = c_outi(ti4_1);
		ur1 = RTCCL(tr2);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4421, "plus", tr1))(tr1, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tr1 = RTMS_EX_H("\012",1,10);
		ur1 = tr1;
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4421, "plus", tr2))(tr2, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(30, dtype))(Current, ur1x);
		RTHOOK(6);
		RTDBGAL(Current, 3, 0xF800035F, 0, 0); /* loc3 */
		tr1 = RTLN(eif_new_type(863, 0x05).id);
		RTS_PA (tr1);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1690, "item", loc7))(loc7)).it_i4);
		ui4_1 = ti4_1;
		RTS_AC (1, tr1);
		RTS_AA (ui4_1x, it_i4, SK_INT32, 1);
		RTS_CALL (4924, SK_VOID);
		RTNHOOK(6,1);
		loc3 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(7);
		RTDBGAL(Current, 2, 0xF8000125, 0, 0); /* loc8 */
		loc8 = (EIF_REFERENCE) RTCCL(loc2);
		{
			int uarg;
			int uarg1 = RTS_OU (loc8);
			RTS_SD;
			uarg = uarg1;
			if (uarg) {
				RTS_RC;
				if (uarg1) RTS_RS (loc8);
				RTS_RW;
			}
			RTHOOK(8);
			ur1 = RTCCL(loc3);
			if (RTS_CI (EIF_FALSE, loc8)) {
				RTS_BI (loc8);
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1711, "extend", loc8))(loc8, ur1x);
				RTS_EI;
			} else {
				RTS_AC (1, loc8);
				RTS_AA (ur1x, it_r, SK_REF, 1);
				RTS_CALL (1711, SK_VOID);
			}
			if (uarg) RTS_RD;
		}
		RTHOOK(9);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1692, "forth", loc7))(loc7);
	}
	RTHOOK(10);
	RTDBGAL(Current, 5, 0xF800035D, 0, 0); /* loc5 */
	tr1 = RTLN(eif_new_type(861, 0x05).id);
	RTS_PA (tr1);
	ur1 = RTCCL(loc2);
	ur2 = RTCCL(loc6);
	ur3 = RTCCL(loc4);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4946, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4955, dtype))(Current)).it_i4);
	ui4_2 = ti4_2;
	RTS_AC (5, tr1);
	RTS_AA (ui4_2x, it_i4, SK_INT32, 5);
	RTS_AA (ui4_1x, it_i4, SK_INT32, 4);
	RTS_AA (ur3x, it_r, SK_REF, 3);
	RTS_AA (ur2x, it_r, SK_REF, 2);
	RTS_AA (ur1x, it_r, SK_REF, 1);
	RTS_CALL (4903, SK_VOID);
	RTNHOOK(10,1);
	loc5 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(11);
	RTDBGAL(Current, 3, 0xF80001B6, 0, 0); /* loc9 */
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4942, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	tr1 = RTLN(eif_new_type(206, 0x00).id);
	*(EIF_INTEGER_32 *)tr1 = ((EIF_INTEGER_32) 1L);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4134, "interval", tr1))(tr1, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2318, "new_cursor", (tr2)))((tr2))), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc9 = (EIF_REFERENCE) RTCCL(tr1);
	for (;;) {
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1691, "after", loc9))(loc9)).it_b);
		if (tb2) break;
		RTHOOK(12);
		tr1 = RTMS_EX_H("Creating customer ",18,1768788768);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1690, "item", loc9))(loc9)).it_i4);
		RTNHOOK(12,1);
		tr2 = c_outi(ti4_1);
		ur1 = RTCCL(tr2);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4421, "plus", tr1))(tr1, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tr1 = RTMS_EX_H("\012",1,10);
		ur1 = tr1;
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4421, "plus", tr2))(tr2, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(30, dtype))(Current, ur1x);
		RTHOOK(13);
		RTDBGAL(Current, 1, 0xF8000360, 0, 0); /* loc1 */
		tr1 = RTLN(eif_new_type(864, 0x05).id);
		RTS_PA (tr1);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1690, "item", loc9))(loc9)).it_i4);
		ui4_1 = ti4_1;
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4944, dtype))(Current)).it_i4);
		ui4_2 = ti4_2;
		ur1 = RTCCL(loc5);
		RTS_AC (3, tr1);
		RTS_AA (ur1x, it_r, SK_REF, 3);
		RTS_AA (ui4_2x, it_i4, SK_INT32, 2);
		RTS_AA (ui4_1x, it_i4, SK_INT32, 1);
		RTS_CALL (4932, SK_VOID);
		RTNHOOK(13,1);
		loc1 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(14);
		RTDBGAL(Current, 4, 0xF8000360, 0, 0); /* loc10 */
		loc10 = (EIF_REFERENCE) RTCCL(loc1);
		{
			int uarg;
			int uarg1 = RTS_OU (loc10);
			RTS_SD;
			uarg = uarg1;
			if (uarg) {
				RTS_RC;
				if (uarg1) RTS_RS (loc10);
				RTS_RW;
			}
			RTHOOK(15);
			if (RTS_CI (EIF_FALSE, loc10)) {
				RTS_BI (loc10);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(4938, "live", loc10))(loc10);
				RTS_EI;
			} else {
				RTS_AC (0, loc10);
				RTS_CALL (4938, SK_VOID);
			}
			if (uarg) RTS_RD;
		}
		RTHOOK(16);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1692, "forth", loc9))(loc9);
	}
	RTHOOK(17);
	RTDBGAL(Current, 5, 0xF800035D, 0, 0); /* loc11 */
	loc11 = (EIF_REFERENCE) RTCCL(loc5);
	{
		int uarg;
		int uarg1 = RTS_OU (loc11);
		RTS_SD;
		uarg = uarg1;
		if (uarg) {
			RTS_RC;
			if (uarg1) RTS_RS (loc11);
			RTS_RW;
		}
		RTHOOK(18);
		if (RTS_CI (EIF_FALSE, loc11)) {
			RTS_BI (loc11);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(4910, "open_shop", loc11))(loc11);
			RTS_EI;
		} else {
			RTS_AC (0, loc11);
			RTS_CALL (4910, SK_VOID);
		}
		if (uarg) RTS_RD;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(19);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(13);
	RTEE;
#undef up1
#undef ur1
#undef ur2
#undef ur3
#undef ui4_1
#undef ui4_2
}

/* {APPLICATION}.customer_num */
EIF_TYPED_VALUE F866_7013 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 5L);
	return r;
}

/* {APPLICATION}.barbers_num */
EIF_TYPED_VALUE F866_7014 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 2L);
	return r;
}

/* {APPLICATION}.customer_attempts */
EIF_TYPED_VALUE F866_7015 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	return r;
}

/* {APPLICATION}.sofa_size */
EIF_TYPED_VALUE F866_7016 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 3L);
	return r;
}

/* {APPLICATION}.standing_room_size */
EIF_TYPED_VALUE F866_7017 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 5L);
	return r;
}

/* {APPLICATION}.max_shop_size */
EIF_TYPED_VALUE F866_7026 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 8L);
	return r;
}

void EIF_Minit866 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
