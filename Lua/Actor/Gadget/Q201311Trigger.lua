require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q201311Trigger = class("Q201311Trigger", GadgetActorProxy)
Q201311Trigger.defaultAlias = "Q201311Trigger"
local Q2013ClientConfig = require("Quest/Client/Q2013ClientConfig")

local mainID = Q2013ClientConfig.MainID
local actorAlias = Q2013ClientConfig.ActorAlias
local subIDs = Q2013ClientConfig.SubIDs
local npcs = Q2013ClientConfig.Npcs
local datas = Q2013ClientConfig.Datas

function Q201311Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q201311Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q201311Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction("Npc3093")
    self:DestroySelf()
end

function Q201311Trigger:TriggerOut()
    print("TriggerOut")
end

return Q201311Trigger
