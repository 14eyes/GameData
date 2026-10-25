require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008305Trigger = class("Q4008305Trigger", GadgetActorProxy)
Q4008305Trigger.defaultAlias = "Q4008305Trigger"
local Q40083ClientConfig = require("Quest/Client/Q40083ClientConfig")

local subIDs = Q40083ClientConfig.SubIDs
local npcs = Q40083ClientConfig.Npcs
local datas = Q40083ClientConfig.Datas

function Q4008305Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008305Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008305Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40083"):RequestInteraction(npcs.Npc1063Data.alias)
    self:DestroySelf()
end

function Q4008305Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008305Trigger
