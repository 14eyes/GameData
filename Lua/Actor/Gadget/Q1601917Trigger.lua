require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601917Trigger = class("Q1601917Trigger", GadgetActorProxy)
Q1601917Trigger.defaultAlias = "Q1601917Trigger"
local Q16019ClientConfig = require("Quest/Client/Q16019ClientConfig")

local this
local subIDs = Q16019ClientConfig.SubIDs
local datas = Q16019ClientConfig.Datas
local npcs = Q16019ClientConfig.Npcs
local points = Q16019ClientConfig.Points

function Q1601917Trigger:OnPostDataPrepare()
    print("Q1601917Trigger - OnPostDataPrepare")
    this = self
end

function Q1601917Trigger:OnPostComponentPrepare()
    print("Q1601917Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16019)
end

function Q1601917Trigger:TriggerIn()
    print("Q1601917Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {1601917})
    this:DestroySelf()
end

function Q1601917Trigger:PreTriggerIn()
    print("Q1601917Trigger - PreTriggerIn")
end

function Q1601917Trigger:LightUpTriggerIn()
    print("Q1601917Trigger - LightUpTriggerIn")
end

function Q1601917Trigger:TriggerOut()
    print("Q1601917Trigger - TriggerOut")
end

return Q1601917Trigger
