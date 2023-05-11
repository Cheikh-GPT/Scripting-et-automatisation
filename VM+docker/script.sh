vmname="Cheikh-VM"
username="cheikh"
az vm create \
    --resource-group Cheikh_F \
    --name $vmname \
    --location "westeurope" \
    --image UbuntuLTS \
    --public-ip-sku Standard \
    --admin-username $username \
    --custom-data /Users/cheikhfall/Desktop/Script/installdocker.sh \
    --generate-ssh-keys