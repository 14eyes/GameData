require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77664Trigger = class("Q77664Trigger", GadgetActorProxy)
Q77664Trigger.defaultAlias = "Q77664Trigger"
local Q77664ClientConfig = require("Quest/Client/Q77664ClientConfig")

local this
local subIDs = Q77664ClientConfig.SubIDs
local datas = Q77664ClientConfig.Datas
local npcs = Q77664ClientConfig.Npcs
local points = Q77664ClientConfig.Points

function Q77664Trigger:OnPostDataPrepare()
    print("Q77664Trigger - OnPostDataPrepare")
    this = self
end

function Q77664Trigger:OnPostComponentPrepare()
    print("Q77664Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77664)
end

function Q77664Trigger:TriggerIn()
    print("Q77664Trigger - TriggerIn")
end

function Q77664Trigger:PreTriggerIn()
    print("Q77664Trigger - PreTriggerIn")
end

function Q77664Trigger:LightUpTriggerIn()
    print("Q77664Trigger - LightUpTriggerIn")
end

function Q77664Trigger:TriggerOut()
    print("Q77664Trigger - TriggerOut")
    actorMgr:GetActor("77664"):DestroyQuestNpcActor(npcs.Npc1339.alias, 1162)
    actorMgr:GetActor("77664"):DestroyQuestNpcActor(npcs.Npc1339_1.alias, 1162)
    actorMgr:GetActor("77664"):DestroyQuestNpcActor(npcs.Npc1341.alias, 1162)
    actorMgr:GetActor("77664"):DestroyQuestNpcActor(npcs.Npc1338.alias, 1162)
    actorMgr:GetActor("77664"):DestroyQuestNpcActor(npcs.Npc7808.alias, 1162)
    this:DestroySelf()
end

return Q77664Trigger
