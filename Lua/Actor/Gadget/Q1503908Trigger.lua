require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503908Trigger = class("Q1503908Trigger", GadgetActorProxy)
Q1503908Trigger.defaultAlias = "Q1503908Trigger"
local Q15039ClientConfig = require("Quest/Client/Q15039ClientConfig")

local this
local subIDs = Q15039ClientConfig.SubIDs
local datas = Q15039ClientConfig.Datas
local npcs = Q15039ClientConfig.Npcs
local points = Q15039ClientConfig.Points

function Q1503908Trigger:OnPostDataPrepare()
    print("Q1503908Trigger - OnPostDataPrepare")
    this = self
end

function Q1503908Trigger:OnPostComponentPrepare()
    print("Q1503908Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(18.82156, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15039)
end

function Q1503908Trigger:TriggerIn()
    print("Q1503908Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1503908)
    this:DestroySelf()
end

function Q1503908Trigger:PreTriggerIn()
    print("Q1503908Trigger - PreTriggerIn")
end

function Q1503908Trigger:LightUpTriggerIn()
    print("Q1503908Trigger - LightUpTriggerIn")
end

function Q1503908Trigger:TriggerOut()
    print("Q1503908Trigger - TriggerOut")
end

return Q1503908Trigger
