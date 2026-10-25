require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008212Trigger = class("Q4008212Trigger", GadgetActorProxy)
Q4008212Trigger.defaultAlias = "Q4008212Trigger"
local Q40082ClientConfig = require("Quest/Client/Q40082ClientConfig")

local subIDs = Q40082ClientConfig.SubIDs
local npcs = Q40082ClientConfig.Npcs
local datas = Q40082ClientConfig.Datas

function Q4008212Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008212Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008212Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40082"):RequestInteraction(npcs.Npc1063Data.alias)
    self:DestroySelf()
end

function Q4008212Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008212Trigger
