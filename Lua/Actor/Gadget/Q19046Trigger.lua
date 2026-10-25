require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19046Trigger = class("Q19046Trigger", GadgetActorProxy)
Q19046Trigger.defaultAlias = "Q19046Trigger"
local Q19046ClientConfig = require("Quest/Client/Q19046ClientConfig")

local mainID = Q19046ClientConfig.MainID
local actorAlias = Q19046ClientConfig.ActorAlias
local subIDs = Q19046ClientConfig.SubIDs
local datas = Q19046ClientConfig.Datas

function Q19046Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19046Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19046Trigger:TriggerIn()
    print("TriggerIn")
end

function Q19046Trigger:TriggerOut()
    print("TriggerOut")
    globalActor:LeaveWeather()
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1904601)
end

return Q19046Trigger
