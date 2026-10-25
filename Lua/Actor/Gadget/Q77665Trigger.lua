require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77665Trigger = class("Q77665Trigger", GadgetActorProxy)
Q77665Trigger.defaultAlias = "Q77665Trigger"
local Q77665ClientConfig = require("Quest/Client/Q77665ClientConfig")

local this
local subIDs = Q77665ClientConfig.SubIDs
local datas = Q77665ClientConfig.Datas
local npcs = Q77665ClientConfig.Npcs
local points = Q77665ClientConfig.Points

function Q77665Trigger:OnPostDataPrepare()
    print("Q77665Trigger - OnPostDataPrepare")
    this = self
end

function Q77665Trigger:OnPostComponentPrepare()
    print("Q77665Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77665)
end

function Q77665Trigger:TriggerIn()
    print("Q77665Trigger - TriggerIn")
end

function Q77665Trigger:PreTriggerIn()
    print("Q77665Trigger - PreTriggerIn")
end

function Q77665Trigger:LightUpTriggerIn()
    print("Q77665Trigger - LightUpTriggerIn")
end

function Q77665Trigger:TriggerOut()
    print("Q77665Trigger - TriggerOut")
    actorMgr:GetActor("77665"):CancelStoryByQuest(147766500)
    actorMgr:GetActor("77665"):DestroyQuestNpcActor(npcs.Npc1339.alias, 1162)
    actorMgr:GetActor("77665"):DestroyQuestNpcActor(npcs.Npc1339_1.alias, 1162)
    actorMgr:GetActor("77665"):DestroyQuestNpcActor(npcs.Npc7808.alias, 1162)
    this:DestroySelf()
end

return Q77665Trigger
