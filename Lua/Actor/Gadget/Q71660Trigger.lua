require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71660Trigger = class("Q71660Trigger", GadgetActorProxy)
Q71660Trigger.defaultAlias = "Q71660Trigger"
local Q71660ClientConfig = require("Quest/Client/Q71660ClientConfig")

local subIDs = Q71660ClientConfig.SubIDs
local npcs = Q71660ClientConfig.Npcs
local datas = Q71660ClientConfig.Datas

function Q71660Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q71660Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q71660Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("71660"):RequestInteraction(npcs.Npc1587Data.alias)
    self:DestroySelf()
end

function Q71660Trigger:TriggerOut()
    print("TriggerOut")
end

return Q71660Trigger
