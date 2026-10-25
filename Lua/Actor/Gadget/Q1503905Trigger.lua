require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503905Trigger = class("Q1503905Trigger", GadgetActorProxy)
Q1503905Trigger.defaultAlias = "Q1503905Trigger"
local Q15039ClientConfig = require("Quest/Client/Q15039ClientConfig")

local this
local subIDs = Q15039ClientConfig.SubIDs
local datas = Q15039ClientConfig.Datas
local npcs = Q15039ClientConfig.Npcs
local points = Q15039ClientConfig.Points

function Q1503905Trigger:OnPostDataPrepare()
    print("Q1503905Trigger - OnPostDataPrepare")
    this = self
end

function Q1503905Trigger:OnPostComponentPrepare()
    print("Q1503905Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(26, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15039)
end

function Q1503905Trigger:TriggerIn()
    print("Q1503905Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1503905)
    this:DestroySelf()
end

function Q1503905Trigger:PreTriggerIn()
    print("Q1503905Trigger - PreTriggerIn")
end

function Q1503905Trigger:LightUpTriggerIn()
    print("Q1503905Trigger - LightUpTriggerIn")
end

function Q1503905Trigger:TriggerOut()
    print("Q1503905Trigger - TriggerOut")
end

return Q1503905Trigger
