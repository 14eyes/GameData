require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77669Trigger = class("Q77669Trigger", GadgetActorProxy)
Q77669Trigger.defaultAlias = "Q77669Trigger"
local Q77669ClientConfig = require("Quest/Client/Q77669ClientConfig")

local this
local subIDs = Q77669ClientConfig.SubIDs
local datas = Q77669ClientConfig.Datas
local npcs = Q77669ClientConfig.Npcs
local points = Q77669ClientConfig.Points

function Q77669Trigger:OnPostDataPrepare()
    print("Q77669Trigger - OnPostDataPrepare")
    this = self
end

function Q77669Trigger:OnPostComponentPrepare()
    print("Q77669Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77669)
end

function Q77669Trigger:TriggerIn()
    print("Q77669Trigger - TriggerIn")
end

function Q77669Trigger:PreTriggerIn()
    print("Q77669Trigger - PreTriggerIn")
end

function Q77669Trigger:LightUpTriggerIn()
    print("Q77669Trigger - LightUpTriggerIn")
end

function Q77669Trigger:TriggerOut()
    print("Q77669Trigger - TriggerOut")
    actorMgr:GetActor("77669"):CancelStoryByQuest(147766900)
    actorMgr:GetActor("77669"):DestroyQuestNpcActor(npcs.Npc1339.alias, 1162)
    actorMgr:GetActor("77669"):DestroyQuestNpcActor(npcs.Npc1339_1.alias, 1162)
    this:DestroySelf()
end

return Q77669Trigger
