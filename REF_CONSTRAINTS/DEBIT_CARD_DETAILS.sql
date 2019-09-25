--------------------------------------------------------
--  Ref Constraints for Table DEBIT_CARD_DETAILS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."DEBIT_CARD_DETAILS" ADD CONSTRAINT "FK_BANK_ACCOUNTS" FOREIGN KEY ("ACC_NO")
	  REFERENCES "SYSTEM"."BANK_ACCOUNTS" ("ACC_NO") ENABLE;
