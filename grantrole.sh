ACCT_ID=$(yc iam service-account get $SVC_ACCT | grep ^id | awk '{print $2}')
