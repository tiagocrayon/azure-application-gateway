@echo on
REM Instructions to Run the Script
REM Replace placeholder values below with your actual subscription ID, resource group name, and Application Gateway name.

REM Define the subscription ID, resource group name, and Application Gateway name
set SUBSCRIPTION_ID=5aadc750-a849-47ed-b3b8-0c41a5f3f9f9
set RESOURCE_GROUP_NAME=TiagoIsabelinho
set APP_GATEWAY_NAME=360imprimir-beta-agw
set TENANT_ID=39d93467-64d3-4e3b-aab5-f3fdf5bc949e

REM Stop the Application Gateway
az network application-gateway stop -g %RESOURCE_GROUP_NAME% -n %APP_GATEWAY_NAME%



REM Confirm successful completion
echo Application Gateway %APP_GATEWAY_NAME% has been stopped successfully.
pause
