require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40037Trigger4 = class("Q40037Trigger4", GadgetActorProxy)
Q40037Trigger4.defaultAlias = "Q40037Trigger4"
local Q40037ClientConfig = require("Quest/Client/Q40037ClientConfig")

local subIDs = Q40037ClientConfig.SubIDs
local npcs = Q40037ClientConfig.Npcs
local gadgets = Q40037ClientConfig.Gadgets
local datas = Q40037ClientConfig.Datas

function Q40037Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40037Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(200, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40037Trigger4:TriggerIn()
    print("TriggerIn")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
end

function Q40037Trigger4:TriggerOut()
    print("TriggerOut")
    globalActor:LeaveWeather()
end

return Q40037Trigger4
