require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77246Trigger = class("Q77246Trigger", GadgetActorProxy)
Q77246Trigger.defaultAlias = "Q77246Trigger"
local Q77246ClientConfig = require("Quest/Client/Q77246ClientConfig")

local this
local subIDs = Q77246ClientConfig.SubIDs
local npcs = Q77246ClientConfig.Npcs

function Q77246Trigger:NpcDestroyImmediately(arg1, arg2)
    actorMgr:GetActor("77246"):DestroyQuestNpcActor(arg2, arg1)
end

function Q77246Trigger:OnPostDataPrepare()
    print("Q77246Trigger - OnPostDataPrepare")
    this = self
end

function Q77246Trigger:OnPostComponentPrepare()
    print("Q77246Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77246)
end

function Q77246Trigger:TriggerIn()
    print("Q77246Trigger - TriggerIn")
    actorMgr:GetActor("77246"):CreateQuestNpc(quest, npcs.Npc17113_1.id, 0, false, 0)
end

function Q77246Trigger:PreTriggerIn()
    print("Q77246Trigger - PreTriggerIn")
end

function Q77246Trigger:LightUpTriggerIn()
    print("Q77246Trigger - LightUpTriggerIn")
end

function Q77246Trigger:TriggerOut()
    print("Q77246Trigger - TriggerOut")
    this:NpcDestroyImmediately(3, npcs.Npc17113_1.alias)
end

return Q77246Trigger
