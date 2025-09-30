:: delet reg key passed as input param

@echo off
echo Deleting: %1
reg delete %1 /f
