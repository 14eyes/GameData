require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71101Trigger = class("Q71101Trigger", GadgetActorProxy)
Q71101Trigger.defaultAlias = "Q71101Trigger"
local Q71101ClientConfig = require("Quest/Client/Q71101ClientConfig")

local subIDs = Q71101ClientConfig.SubIDs
local npcs = Q71101ClientConfig.Npcs
local datas = Q71101ClientConfig.Datas

function Q71101Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q71101Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q71101Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("71101"):RequestInteraction(npcs.Npc10232Data.alias)
    self:DestroySelf()
end

function Q71101Trigger:TriggerOut()
    print("TriggerOut")
end

return Q71101Trigger
