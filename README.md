# audits

Resource metadata level audits for DU Special Collections and Archives

## Level 1 Audit

The only metadata level currently implemented, it consists of the following audit checks:

* Title exists
* Local call number exists
* A proper, DACS-compliant date is present in the date expression
  * Throws a warning if "Date Not Yet Determined" is found
* A non-zero extent is present
* An abstract note is present
* At least one agent link is present
* At least two subject links of any type are present

This is the minimum amount of bibliographic metadata we require for a collection record before we import its MARCXML representation to our ILS.

### Not Yet implemented

Container/item-level audit checks: Each item attached to a collection must contain the following:

* Barcode
* Unique item-level local call number
* Container profile
