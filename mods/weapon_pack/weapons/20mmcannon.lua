
FireEffect = path .. "/effects/fire_quadcannon.lua"
ReloadTime = 25
RoundPeriod = 0.15
IncendiaryRadius = 60
IncendiaryRadiusHeated = 80
FireStdDev = 0.015
FireStdDevAuto = 0.015
MinFireSpeed = 8000.0
MaxFireSpeed = 8000.1

dofile("ui/uihelper.lua")

if dlc2_Ammunition == nil then
	dlc2_Ammunition =
	{
		{}, -- use default values
	}
end
