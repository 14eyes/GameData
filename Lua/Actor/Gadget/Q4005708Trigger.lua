require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005708Trigger = class("Q4005708Trigger", GadgetActorProxy)
Q4005708Trigger.defaultAlias = "Q4005708Trigger"
local Q40057ClientConfig = require("Quest/Client/Q40057ClientConfig")

local subIDs = Q40057ClientConfig.SubIDs
local npcs = Q40057ClientConfig.Npcs
local datas = Q40057ClientConfig.Datas

function Q4005708Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005708Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005708Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(npcs.Npc1013Data.alias):ShowSelf()
    actorMgr:GetActor("40057"):RequestInteraction(npcs.Npc1013Data.alias)
    self:DestroySelf()
end

function Q4005708Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005708Trigger
