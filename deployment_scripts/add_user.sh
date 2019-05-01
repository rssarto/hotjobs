until mongo --host mongodb://admin:admin@localhost:27017 --eval "print(\"waiting for connections on port 27017\")"
do
    echo "waiting..."
    sleep 1
done

echo "Adding user to MongoDB..."
mongo --host mongodb://admin:admin@localhost:27017 --eval "db.createUser({'user':'post','db':'post','credentials':{'SCRAM-SHA-1':{'iterationCount':10000,'salt':'OZ6Y/KEuZ93gN0YsKChMvw==','storedKey':'LsKCbi7QpCPxSVrpaTUAkWZAxtU=','serverKey':'9FjSM6evY+0sWiKXVI4lfzC37Kg='},'SCRAM-SHA-256':{'iterationCount':15000,'salt':'YGsOorCxMy54WOqIMDATwXBc2A6qxxlwpVgwcA==','storedKey':'TYTjIjsxzs4ZO0Geo3AIWhyJ+obp0yHTiBucD9n69Oc=','serverKey':'ONyECLwerYSBul5tSmKaPyLiTrLPDDeiFi/Q8hL7Tu4='}},'roles':[{'role':'readWrite','db':'post'},{'role':'owner','db':'post'}]});"
echo "User added."