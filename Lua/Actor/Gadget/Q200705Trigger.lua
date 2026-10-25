require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200705Trigger = class("Q200705Trigger", GadgetActorProxy)
Q200705Trigger.defaultAlias = "Q200705Trigger"
local Q2007ClientConfig = require("Quest/Client/Q2007ClientConfig")

local mainID = Q2007ClientConfig.MainID
local actorAlias = Q2007ClientConfig.ActorAlias
local subIDs = Q2007ClientConfig.SubIDs
local npcs = Q2007ClientConfig.Npcs
local datas = Q2007ClientConfig.Datas

function Q200705Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200705Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200705Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction("Npc12012")
    self:DestroySelf()
end

function Q200705Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200705Trigger
