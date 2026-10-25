require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300010Trigger = class("Q300010Trigger", GadgetActorProxy)
Q300010Trigger.defaultAlias = "Q300010Trigger"
local Q3000ClientConfig = require("Quest/Client/Q3000ClientConfig")

local subIDs = Q3000ClientConfig.SubIDs
local npcs = Q3000ClientConfig.Npcs
local datas = Q3000ClientConfig.Datas

function Q300010Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300010Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300010Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3000"):RequestInteraction(npcs.Npc1051Data.alias)
    self:DestroySelf()
end

function Q300010Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300010Trigger
