--------------------------------------------------------
--  Ref Constraints for Table TRANSACTIONS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TRANSACTIONS" ADD CONSTRAINT "FK_TRAN_BANK_ACCOUNTS" FOREIGN KEY ("ACC_NO")
	  REFERENCES "SYSTEM"."BANK_ACCOUNTS" ("ACC_NO") ENABLE;
