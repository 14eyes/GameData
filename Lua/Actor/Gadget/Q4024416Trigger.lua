require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4024416Trigger = class("Q4024416Trigger", GadgetActorProxy)
Q4024416Trigger.defaultAlias = "Q4024416Trigger"
local Q40244ClientConfig = require("Quest/Client/Q40244ClientConfig")

local this
local subIDs = Q40244ClientConfig.SubIDs
local datas = Q40244ClientConfig.Datas
local npcs = Q40244ClientConfig.Npcs
local points = Q40244ClientConfig.Points

function Q4024416Trigger:OnPostDataPrepare()
    print("Q4024416Trigger - OnPostDataPrepare")
    this = self
end

function Q4024416Trigger:OnPostComponentPrepare()
    print("Q4024416Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40244)
end

function Q4024416Trigger:TriggerIn()
    print("Q4024416Trigger - TriggerIn")
end

function Q4024416Trigger:PreTriggerIn()
    print("Q4024416Trigger - PreTriggerIn")
end

function Q4024416Trigger:LightUpTriggerIn()
    print("Q4024416Trigger - LightUpTriggerIn")
end

function Q4024416Trigger:TriggerOut()
    print("Q4024416Trigger - TriggerOut")
    actorMgr:GetActor("40244"):SafeDestroyQuestNpc(npcs.Npc1073.alias, 3)
    actorMgr:GetActor("40244"):SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:DestroySelf()
end

return Q4024416Trigger
