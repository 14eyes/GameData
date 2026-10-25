require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77667Trigger = class("Q77667Trigger", GadgetActorProxy)
Q77667Trigger.defaultAlias = "Q77667Trigger"
local Q77667ClientConfig = require("Quest/Client/Q77667ClientConfig")

local this
local subIDs = Q77667ClientConfig.SubIDs
local datas = Q77667ClientConfig.Datas
local npcs = Q77667ClientConfig.Npcs
local points = Q77667ClientConfig.Points

function Q77667Trigger:OnPostDataPrepare()
    print("Q77667Trigger - OnPostDataPrepare")
    this = self
end

function Q77667Trigger:OnPostComponentPrepare()
    print("Q77667Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(150, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77667)
end

function Q77667Trigger:TriggerIn()
    print("Q77667Trigger - TriggerIn")
end

function Q77667Trigger:PreTriggerIn()
    print("Q77667Trigger - PreTriggerIn")
end

function Q77667Trigger:LightUpTriggerIn()
    print("Q77667Trigger - LightUpTriggerIn")
end

function Q77667Trigger:TriggerOut()
    print("Q77667Trigger - TriggerOut")
    actorMgr:GetActor("77667"):DestroyQuestNpcActor(npcs.Npc1339.alias, 1162)
    actorMgr:GetActor("77667"):DestroyQuestNpcActor(npcs.Npc1339_1.alias, 1162)
    this:DestroySelf()
end

return Q77667Trigger
