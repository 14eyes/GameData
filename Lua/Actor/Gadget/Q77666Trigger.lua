require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77666Trigger = class("Q77666Trigger", GadgetActorProxy)
Q77666Trigger.defaultAlias = "Q77666Trigger"
local Q77666ClientConfig = require("Quest/Client/Q77666ClientConfig")

local this
local subIDs = Q77666ClientConfig.SubIDs
local datas = Q77666ClientConfig.Datas
local npcs = Q77666ClientConfig.Npcs
local points = Q77666ClientConfig.Points

function Q77666Trigger:OnPostDataPrepare()
    print("Q77666Trigger - OnPostDataPrepare")
    this = self
end

function Q77666Trigger:OnPostComponentPrepare()
    print("Q77666Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77666)
end

function Q77666Trigger:TriggerIn()
    print("Q77666Trigger - TriggerIn")
end

function Q77666Trigger:PreTriggerIn()
    print("Q77666Trigger - PreTriggerIn")
end

function Q77666Trigger:LightUpTriggerIn()
    print("Q77666Trigger - LightUpTriggerIn")
end

function Q77666Trigger:TriggerOut()
    print("Q77666Trigger - TriggerOut")
    actorMgr:GetActor("77666"):DestroyQuestNpcActor(npcs.Npc1339.alias, 1162)
    actorMgr:GetActor("77666"):DestroyQuestNpcActor(npcs.Npc1341.alias, 1162)
    actorMgr:GetActor("77666"):DestroyQuestNpcActor(npcs.Npc1338.alias, 1162)
    this:DestroySelf()
end

return Q77666Trigger
