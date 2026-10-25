require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41313Trigger5 = class("Q41313Trigger5", GadgetActorProxy)
Q41313Trigger5.defaultAlias = "Q41313Trigger5"
local Q41313ClientConfig = require("Quest/Client/Q41313ClientConfig")

local mainID = Q41313ClientConfig.MainID
local actorAlias = Q41313ClientConfig.ActorAlias
local subIDs = Q41313ClientConfig.SubIDs
local npcs = Q41313ClientConfig.Npcs
local gadgets = Q41313ClientConfig.Gadgets
local datas = Q41313ClientConfig.Datas

function Q41313Trigger5:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41313Trigger5:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(200, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41313Trigger5:TriggerIn()
    print("TriggerIn Weather Lock ClearSky")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
end

function Q41313Trigger5:TriggerOut()
    print("TriggerOut Weather UnLock")
    globalActor:LeaveWeather()
end

return Q41313Trigger5
