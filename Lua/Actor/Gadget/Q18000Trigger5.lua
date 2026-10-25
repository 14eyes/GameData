require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q18000Trigger5 = class("Q18000Trigger5", GadgetActorProxy)
Q18000Trigger5.defaultAlias = "Q18000Trigger5"
local Q18000ClientConfig = require("Quest/Client/Q18000ClientConfig")

local mainID = Q18000ClientConfig.MainID
local actorAlias = Q18000ClientConfig.ActorAlias
local subIDs = Q18000ClientConfig.SubIDs
local npcs = Q18000ClientConfig.Npcs
local gadgets = Q18000ClientConfig.Gadgets
local datas = Q18000ClientConfig.Datas

function Q18000Trigger5:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q18000Trigger5:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(200, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q18000Trigger5:TriggerIn()
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
end

function Q18000Trigger5:TriggerOut()
    globalActor:LeaveWeather()
end

return Q18000Trigger5
