require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7215804Trigger = class("Q7215804Trigger", GadgetActorProxy)
Q7215804Trigger.defaultAlias = "Q7215804Trigger"
local Q72158ClientConfig = require("Quest/Client/Q72158ClientConfig")

local subIDs = Q72158ClientConfig.SubIDs
local npcs = Q72158ClientConfig.Npcs
local datas = Q72158ClientConfig.Datas

function Q7215804Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7215804Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7215804Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72158"):NarratorOnlyTask(datas.Paimon04, nil, "")
    self:DestroySelf()
end

function Q7215804Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7215804Trigger
