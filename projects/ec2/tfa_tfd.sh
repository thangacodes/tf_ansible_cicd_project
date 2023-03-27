#!/bin/sh
echo -e "\e[1;34m Script execution at:" $(date '+%Y.%m.%d %H:%M:%S')
## Setting up variables
TFINIT='terraform init'
TFFMT='terraform fmt'
TFPLAN='terraform plan'
TFREFRESH='terraform refresh'
TFVALIDATE='terraform validate'
TFAPPLY='terraform apply --auto-approve'
TFOUTPUT='terraform output'
TFD='terraform destroy --auto-approve'
#########################################################
read -p "Enter the command that you wanted to perform:" ENTER
echo -e "\e[1;35m You've entered terraform command is:" $ENTER
sleep 5
if [ "$ENTER" = "$TFINIT" ]; then
    $TFINIT
elif [ "$ENTER" = "$TFFMT" ]; then
    $TFFMT
elif [ "$ENTER" = "$TFVALIDATE" ]; then
    $TFVALIDATE
elif [ "$ENTER" = "$TFREFRESH" ]; then
    $TFREFRESH
elif [ "$ENTER" = "$TFPLAN" ]; then
    $TFPLAN
elif [ "$ENTER" = "$TFAPPLY" ]; then
    $TFAPPLY
elif [ "$ENTER" = "$TFOUTPUT" ]; then
    $TFOUTPUT
elif [ "$ENTER" = "$TFD" ]; then
    $TFD
else
   echo "You entered command is not the right one. Please retry...."
fi
