require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200607Trigger = class("Q200607Trigger", GadgetActorProxy)
Q200607Trigger.defaultAlias = "Q200607Trigger"
local Q2006ClientConfig = require("Quest/Client/Q2006ClientConfig")

local mainID = Q2006ClientConfig.MainID
local actorAlias = Q2006ClientConfig.ActorAlias
local subIDs = Q2006ClientConfig.SubIDs
local npcs = Q2006ClientConfig.Npcs
local datas = Q2006ClientConfig.Datas

function Q200607Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200607Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200607Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:CreateQuestNpcById(200607, npcs.Npc1034Data.id, 0)
    actor:RequestInteraction(npcs.Npc1034Data.alias)
    self:DestroySelf()
end

function Q200607Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200607Trigger
