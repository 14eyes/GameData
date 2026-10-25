require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12006Trigger = class("Q12006Trigger", GadgetActorProxy)
Q12006Trigger.defaultAlias = "Q12006Trigger"
local Q12006ClientConfig = require("Quest/Client/Q12006ClientConfig")

local mainID = Q12006ClientConfig.MainID
local actorAlias = Q12006ClientConfig.ActorAlias
local subIDs = Q12006ClientConfig.SubIDs
local npcs = Q12006ClientConfig.Npcs
local datas = Q12006ClientConfig.Datas

function Q12006Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12006Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(14, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12006Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc3044Data.alias)
    self:DestroySelf()
end

function Q12006Trigger:TriggerOut()
    print("TriggerOut")
end

return Q12006Trigger
