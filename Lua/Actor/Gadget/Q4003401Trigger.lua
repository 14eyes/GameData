require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4003401Trigger = class("Q4003401Trigger", GadgetActorProxy)
Q4003401Trigger.defaultAlias = "Q4003401Trigger"
local Q40034ClientConfig = require("Quest/Client/Q40034ClientConfig")

local subIDs = Q40034ClientConfig.SubIDs
local npcs = Q40034ClientConfig.Npcs
local datas = Q40034ClientConfig.Datas

function Q4003401Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4003401Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4003401Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40034"):NarratorOnlyTask(datas.NarratorTable4003401, nil, "")
    self:DestroySelf()
end

function Q4003401Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4003401Trigger
