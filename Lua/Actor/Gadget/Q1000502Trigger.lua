require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000502Trigger = class("Q1000502Trigger", GadgetActorProxy)
Q1000502Trigger.defaultAlias = "Q1000502Trigger"
local Q10005ClientConfig = require("Quest/Client/Q10005ClientConfig")

local this
local subIDs = Q10005ClientConfig.SubIDs
local datas = Q10005ClientConfig.Datas
local npcs = Q10005ClientConfig.Npcs
local points = Q10005ClientConfig.Points

function Q1000502Trigger:OnPostDataPrepare()
    print("Q1000502Trigger - OnPostDataPrepare")
    this = self
end

function Q1000502Trigger:OnPostComponentPrepare()
    print("Q1000502Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(120, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10005)
end

function Q1000502Trigger:TriggerIn()
    print("Q1000502Trigger - TriggerIn")
end

function Q1000502Trigger:PreTriggerIn()
    print("Q1000502Trigger - PreTriggerIn")
end

function Q1000502Trigger:LightUpTriggerIn()
    print("Q1000502Trigger - LightUpTriggerIn")
end

function Q1000502Trigger:TriggerOut()
    print("Q1000502Trigger - TriggerOut")
    actorMgr:GetActor("10005"):DestroyQuestNpcActor(npcs.Npc1018.alias, 3)
    this:DestroySelf()
end

return Q1000502Trigger
