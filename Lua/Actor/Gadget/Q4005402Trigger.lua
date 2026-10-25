require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005402Trigger = class("Q4005402Trigger", GadgetActorProxy)
Q4005402Trigger.defaultAlias = "Q4005402Trigger"
local Q40054ClientConfig = require("Quest/Client/Q40054ClientConfig")

local subIDs = Q40054ClientConfig.SubIDs
local npcs = Q40054ClientConfig.Npcs
local datas = Q40054ClientConfig.Datas

function Q4005402Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005402Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005402Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40054"):RequestInteraction(npcs.Npc1034Data.alias)
    self:DestroySelf()
end

function Q4005402Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005402Trigger
