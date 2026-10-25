require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609012Trigger_1 = class("Q7609012Trigger_1", GadgetActorProxy)
Q7609012Trigger_1.defaultAlias = "Q7609012Trigger_1"
local Q76090ClientConfig = require("Quest/Client/Q76090ClientConfig")

local this
local subIDs = Q76090ClientConfig.SubIDs
local npcs = Q76090ClientConfig.Npcs
local points = Q76090ClientConfig.Points

function Q7609012Trigger_1:OnPostDataPrepare()
    print("Q7609012Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7609012Trigger_1:OnPostComponentPrepare()
    print("Q7609012Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76090)
end

function Q7609012Trigger_1:TriggerIn()
    print("Q7609012Trigger_1 - TriggerIn")
end

function Q7609012Trigger_1:PreTriggerIn()
    print("Q7609012Trigger_1 - PreTriggerIn")
end

function Q7609012Trigger_1:LightUpTriggerIn()
    print("Q7609012Trigger_1 - LightUpTriggerIn")
end

function Q7609012Trigger_1:TriggerOut()
    print("Q7609012Trigger_1 - TriggerOut")
    actorMgr:GetActor("76090"):DestroyQuestNpcActor(npcs.Npc22264.alias, 3)
    actorMgr:GetActor("76090"):DestroyQuestNpcActor(npcs.Npc22265.alias, 3)
    this:DestroySelf()
end

return Q7609012Trigger_1
