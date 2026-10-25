require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200004Trigger = class("Q200004Trigger", GadgetActorProxy)
Q200004Trigger.defaultAlias = "Q200004Trigger"
local Q2000ClientConfig = require("Quest/Client/Q2000ClientConfig")

local mainID = Q2000ClientConfig.MainID
local actorAlias = Q2000ClientConfig.ActorAlias
local subIDs = Q2000ClientConfig.SubIDs
local npcs = Q2000ClientConfig.Npcs
local datas = Q2000ClientConfig.Datas

function Q200004Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200004Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200004Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc1031Data.alias)
    self:DestroySelf()
end

function Q200004Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200004Trigger
