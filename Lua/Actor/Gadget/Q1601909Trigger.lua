require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601909Trigger = class("Q1601909Trigger", GadgetActorProxy)
Q1601909Trigger.defaultAlias = "Q1601909Trigger"
local Q16019ClientConfig = require("Quest/Client/Q16019ClientConfig")

local this
local subIDs = Q16019ClientConfig.SubIDs
local datas = Q16019ClientConfig.Datas
local npcs = Q16019ClientConfig.Npcs
local points = Q16019ClientConfig.Points

function Q1601909Trigger:OnPostDataPrepare()
    print("Q1601909Trigger - OnPostDataPrepare")
    this = self
end

function Q1601909Trigger:OnPostComponentPrepare()
    print("Q1601909Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16019)
end

function Q1601909Trigger:TriggerIn()
    print("Q1601909Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1601909)
    this:DestroySelf()
end

function Q1601909Trigger:PreTriggerIn()
    print("Q1601909Trigger - PreTriggerIn")
end

function Q1601909Trigger:LightUpTriggerIn()
    print("Q1601909Trigger - LightUpTriggerIn")
end

function Q1601909Trigger:TriggerOut()
    print("Q1601909Trigger - TriggerOut")
end

return Q1601909Trigger
