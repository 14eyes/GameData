require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3000Trigger = class("Q3000Trigger", GadgetActorProxy)
Q3000Trigger.defaultAlias = "Q3000Trigger"
local Q3000ClientConfig = require("Quest/Client/Q3000ClientConfig")

local subIDs = Q3000ClientConfig.SubIDs
local npcs = Q3000ClientConfig.Npcs
local datas = Q3000ClientConfig.Datas

function Q3000Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3000Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3000Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3000"):RequestInteraction(npcs.Npc1051Data.alias)
    self:DestroySelf()
end

function Q3000Trigger:TriggerOut()
    print("TriggerOut")
end

return Q3000Trigger
