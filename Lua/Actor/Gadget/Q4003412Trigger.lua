require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4003412Trigger = class("Q4003412Trigger", GadgetActorProxy)
Q4003412Trigger.defaultAlias = "Q4003412Trigger"
local Q40034ClientConfig = require("Quest/Client/Q40034ClientConfig")

local subIDs = Q40034ClientConfig.SubIDs
local npcs = Q40034ClientConfig.Npcs
local datas = Q40034ClientConfig.Datas

function Q4003412Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4003412Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4003412Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40034"):NarratorOnlyTask(datas.NarratorTable4003412, nil, "")
    self:DestroySelf()
end

function Q4003412Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4003412Trigger
