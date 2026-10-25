require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503916Trigger = class("Q1503916Trigger", GadgetActorProxy)
Q1503916Trigger.defaultAlias = "Q1503916Trigger"
local Q15039ClientConfig = require("Quest/Client/Q15039ClientConfig")

local this
local subIDs = Q15039ClientConfig.SubIDs
local datas = Q15039ClientConfig.Datas
local npcs = Q15039ClientConfig.Npcs
local points = Q15039ClientConfig.Points

function Q1503916Trigger:OnPostDataPrepare()
    print("Q1503916Trigger - OnPostDataPrepare")
    this = self
end

function Q1503916Trigger:OnPostComponentPrepare()
    print("Q1503916Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(38, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15039)
end

function Q1503916Trigger:TriggerIn()
    print("Q1503916Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1503916)
    this:DestroySelf()
end

function Q1503916Trigger:PreTriggerIn()
    print("Q1503916Trigger - PreTriggerIn")
end

function Q1503916Trigger:LightUpTriggerIn()
    print("Q1503916Trigger - LightUpTriggerIn")
end

function Q1503916Trigger:TriggerOut()
    print("Q1503916Trigger - TriggerOut")
end

return Q1503916Trigger
