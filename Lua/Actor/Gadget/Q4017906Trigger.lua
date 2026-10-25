require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4017906Trigger = class("Q4017906Trigger", GadgetActorProxy)
Q4017906Trigger.defaultAlias = "Q4017906Trigger"
local Q40179ClientConfig = require("Quest/Client/Q40179ClientConfig")

local this
local subIDs = Q40179ClientConfig.SubIDs
local datas = Q40179ClientConfig.Datas
local npcs = Q40179ClientConfig.Npcs
local points = Q40179ClientConfig.Points

function Q4017906Trigger:OnPostDataPrepare()
    print("Q4017906Trigger - OnPostDataPrepare")
    this = self
end

function Q4017906Trigger:OnPostComponentPrepare()
    print("Q4017906Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40179)
end

function Q4017906Trigger:TriggerIn()
    print("Q4017906Trigger - TriggerIn")
end

function Q4017906Trigger:PreTriggerIn()
    print("Q4017906Trigger - PreTriggerIn")
end

function Q4017906Trigger:LightUpTriggerIn()
    print("Q4017906Trigger - LightUpTriggerIn")
end

function Q4017906Trigger:TriggerOut()
    print("Q4017906Trigger - TriggerOut")
    actorMgr:GetActor("40179"):SafeDestroyQuestNpc(npcs.Npc1307.alias, 3)
    actorMgr:GetActor("40179"):SafeDestroyQuestNpc(npcs.Npc14977.alias, 3)
    this:DestroySelf()
end

return Q4017906Trigger
