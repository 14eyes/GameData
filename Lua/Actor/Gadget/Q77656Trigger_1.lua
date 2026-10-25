require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77656Trigger_1 = class("Q77656Trigger_1", GadgetActorProxy)
Q77656Trigger_1.defaultAlias = "Q77656Trigger_1"
local Q77656ClientConfig = require("Quest/Client/Q77656ClientConfig")

local this
local subIDs = Q77656ClientConfig.SubIDs
local datas = Q77656ClientConfig.Datas
local npcs = Q77656ClientConfig.Npcs
local points = Q77656ClientConfig.Points

function Q77656Trigger_1:OnPostDataPrepare()
    print("Q77656Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q77656Trigger_1:OnPostComponentPrepare()
    print("Q77656Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77656)
end

function Q77656Trigger_1:TriggerIn()
    print("Q77656Trigger_1 - TriggerIn")
end

function Q77656Trigger_1:PreTriggerIn()
    print("Q77656Trigger_1 - PreTriggerIn")
end

function Q77656Trigger_1:LightUpTriggerIn()
    print("Q77656Trigger_1 - LightUpTriggerIn")
end

function Q77656Trigger_1:TriggerOut()
    print("Q77656Trigger_1 - TriggerOut")
    actorMgr:GetActor("77656"):DestroyQuestNpcActor(npcs.Npc1333.alias, 3)
    actorMgr:GetActor("77656"):DestroyQuestNpcActor(npcs.Npc1331_1.alias, 3)
    actorMgr:GetActor("77656"):DestroyQuestNpcActor(npcs.Npc1332_1.alias, 3)
    actorMgr:GetActor("77656"):DestroyQuestNpcActor(npcs.Npc1335_1.alias, 3)
    this:DestroySelf()
end

return Q77656Trigger_1
