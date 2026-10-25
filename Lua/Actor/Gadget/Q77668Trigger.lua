require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77668Trigger = class("Q77668Trigger", GadgetActorProxy)
Q77668Trigger.defaultAlias = "Q77668Trigger"
local Q77668ClientConfig = require("Quest/Client/Q77668ClientConfig")

local this
local subIDs = Q77668ClientConfig.SubIDs
local datas = Q77668ClientConfig.Datas
local npcs = Q77668ClientConfig.Npcs
local points = Q77668ClientConfig.Points

function Q77668Trigger:OnPostDataPrepare()
    print("Q77668Trigger - OnPostDataPrepare")
    this = self
end

function Q77668Trigger:OnPostComponentPrepare()
    print("Q77668Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77668)
end

function Q77668Trigger:TriggerIn()
    print("Q77668Trigger - TriggerIn")
end

function Q77668Trigger:PreTriggerIn()
    print("Q77668Trigger - PreTriggerIn")
end

function Q77668Trigger:LightUpTriggerIn()
    print("Q77668Trigger - LightUpTriggerIn")
end

function Q77668Trigger:TriggerOut()
    print("Q77668Trigger - TriggerOut")
    actorMgr:GetActor("77668"):CancelStoryByQuest(147766800)
    actorMgr:GetActor("77668"):DestroyQuestNpcActor(npcs.Npc1339.alias, 1162)
    actorMgr:GetActor("77668"):DestroyQuestNpcActor(npcs.Npc1339_1.alias, 1162)
    actorMgr:GetActor("77668"):DestroyQuestNpcActor(npcs.Npc1341.alias, 1162)
    actorMgr:GetActor("77668"):DestroyQuestNpcActor(npcs.Npc1080.alias, 1162)
    actorMgr:GetActor("77668"):DestroyQuestNpcActor(npcs.Npc1336_1.alias, 1162)
    actorMgr:GetActor("77668"):DestroyQuestNpcActor(npcs.Npc1332.alias, 1162)
    actorMgr:GetActor("77668"):DestroyQuestNpcActor(npcs.Npc1335.alias, 1162)
    actorMgr:GetActor("77668"):DestroyQuestNpcActor(npcs.Npc1318.alias, 1162)
    actorMgr:GetActor("77668"):DestroyQuestNpcActor(npcs.Npc1338.alias, 1162)
    this:DestroySelf()
end

return Q77668Trigger
