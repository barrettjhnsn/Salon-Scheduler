#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n~~~~~ MY SALON ~~~~~\n"
echo -e "Welcome to My Salon, how can I help you?\n"

CUSTOMER_NAME=""
CUSTOMER_PHONE=""

CREATE_APPOINTMENT(){
  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
  CUSTOM_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  CUSTOM_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  SERVICE_NAME_FORMATTED=$(echo $SERVICE_NAME | sed 's/ //g')
  CUSTOM_NAME_FORMATTED=$(echo $CUSTOM_NAME | sed 's/ //g')
  echo -e "\nWhat time would you like your $SERVICE_NAME_FORMATTED, $CUSTOM_NAME_FORMATTED?"
  read SERVICE_TIME
  INSERTED=$($PSQL "INSERT INTO appointments (customer_id, service_id, time) VALUES ('$CUSTOM_ID', '$SERVICE_ID_SELECTED', '$SERVICE_TIME') RETURNING appointments.time")
  echo -e "\nI have put you down for a $SERVICE_NAME_FORMATTED at $SERVICE_TIME, $CUSTOM_NAME_FORMATTED."
}

MENU(){
SERVICES=$($PSQL "SELECT service_id, name FROM services;")
  if [[ $1 ]]
  then
  echo -e "\n$1"
  fi
echo "$SERVICES" | while read SERVICE_ID BAR NAME
do
   echo "$SERVICE_ID) $NAME"
done
read SERVICE_ID_SELECTED
# if input is not numerical
  if [[ ! $SERVICE_ID_SELECTED =~ ^[0-9]+$ ]]
  then
    MENU "I could not find that service. What would you like today?"
  else
    HAS_SERVICE=$($PSQL "SELECT service_id, name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
    if [[ -z $HAS_SERVICE ]]
      then
        MENU "I could not find that service. What would you like today?"
      else
        LIST_DETAILS
    fi
  fi
}
LIST_DETAILS(){
echo -e "\nWhat's your phone number?"
read CUSTOMER_PHONE

HAS_CUST=$($PSQL "SELECT customer_id, name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  if [[ -z $HAS_CUST ]]
    then
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME
    INSERTED=$($PSQL "INSERT INTO customers (name, phone) VALUES ('$CUSTOMER_NAME', '$CUSTOMER_PHONE') RETURNING name")

      CREATE_APPOINTMENT
    else
      CREATE_APPOINTMENT
  fi

}
MENU