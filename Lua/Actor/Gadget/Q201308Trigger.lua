require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q201308Trigger = class("Q201308Trigger", GadgetActorProxy)
Q201308Trigger.defaultAlias = "Q201308Trigger"
local Q2013ClientConfig = require("Quest/Client/Q2013ClientConfig")

local mainID = Q2013ClientConfig.MainID
local actorAlias = Q2013ClientConfig.ActorAlias
local subIDs = Q2013ClientConfig.SubIDs
local npcs = Q2013ClientConfig.Npcs
local datas = Q2013ClientConfig.Datas

function Q201308Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q201308Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q201308Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc3016Data.alias)
    self:DestroySelf()
end

function Q201308Trigger:TriggerOut()
    print("TriggerOut")
end

return Q201308Trigger
