require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000905Trigger = class("Q1000905Trigger", GadgetActorProxy)
Q1000905Trigger.defaultAlias = "Q1000905Trigger"
local Q10009ClientConfig = require("Quest/Client/Q10009ClientConfig")

local this
local subIDs = Q10009ClientConfig.SubIDs
local datas = Q10009ClientConfig.Datas
local npcs = Q10009ClientConfig.Npcs
local points = Q10009ClientConfig.Points

function Q1000905Trigger:OnPostDataPrepare()
    print("Q1000905Trigger - OnPostDataPrepare")
    this = self
end

function Q1000905Trigger:OnPostComponentPrepare()
    print("Q1000905Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10009)
end

function Q1000905Trigger:TriggerIn()
    print("Q1000905Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000905)
    this:DestroySelf()
end

function Q1000905Trigger:PreTriggerIn()
    print("Q1000905Trigger - PreTriggerIn")
end

function Q1000905Trigger:LightUpTriggerIn()
    print("Q1000905Trigger - LightUpTriggerIn")
end

function Q1000905Trigger:TriggerOut()
    print("Q1000905Trigger - TriggerOut")
end

return Q1000905Trigger
