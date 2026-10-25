require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600438Trigger = class("Q1600438Trigger", GadgetActorProxy)
Q1600438Trigger.defaultAlias = "Q1600438Trigger"
local Q16004ClientConfig = require("Quest/Client/Q16004ClientConfig")

local this
local subIDs = Q16004ClientConfig.SubIDs
local datas = Q16004ClientConfig.Datas
local npcs = Q16004ClientConfig.Npcs
local points = Q16004ClientConfig.Points

function Q1600438Trigger:OnPostDataPrepare()
    print("Q1600438Trigger - OnPostDataPrepare")
    this = self
end

function Q1600438Trigger:OnPostComponentPrepare()
    print("Q1600438Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16004)
end

function Q1600438Trigger:TriggerIn()
    print("Q1600438Trigger - TriggerIn")
end

function Q1600438Trigger:PreTriggerIn()
    print("Q1600438Trigger - PreTriggerIn")
end

function Q1600438Trigger:LightUpTriggerIn()
    print("Q1600438Trigger - LightUpTriggerIn")
end

function Q1600438Trigger:TriggerOut()
    print("Q1600438Trigger - TriggerOut")
    actorMgr:GetActor("16004"):SafeDestroyQuestNpc(npcs.Npc1321.alias, 3)
    actorMgr:GetActor("16004"):SafeDestroyQuestNpc(npcs.Wendy.alias, 3)
    this:DestroySelf()
end

return Q1600438Trigger
