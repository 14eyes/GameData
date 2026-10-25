require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503903Trigger = class("Q1503903Trigger", GadgetActorProxy)
Q1503903Trigger.defaultAlias = "Q1503903Trigger"
local Q15039ClientConfig = require("Quest/Client/Q15039ClientConfig")

local this
local subIDs = Q15039ClientConfig.SubIDs
local datas = Q15039ClientConfig.Datas
local npcs = Q15039ClientConfig.Npcs
local points = Q15039ClientConfig.Points

function Q1503903Trigger:OnPostDataPrepare()
    print("Q1503903Trigger - OnPostDataPrepare")
    this = self
end

function Q1503903Trigger:OnPostComponentPrepare()
    print("Q1503903Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(2.5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15039)
end

function Q1503903Trigger:TriggerIn()
    print("Q1503903Trigger - TriggerIn")
end

function Q1503903Trigger:PreTriggerIn()
    print("Q1503903Trigger - PreTriggerIn")
end

function Q1503903Trigger:LightUpTriggerIn()
    print("Q1503903Trigger - LightUpTriggerIn")
    actorUtils.FinishQuestID(false, 1503903)
    this:DestroySelf()
end

function Q1503903Trigger:TriggerOut()
    print("Q1503903Trigger - TriggerOut")
end

return Q1503903Trigger
