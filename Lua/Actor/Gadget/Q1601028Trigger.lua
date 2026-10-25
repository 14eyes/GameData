require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601028Trigger = class("Q1601028Trigger", GadgetActorProxy)
Q1601028Trigger.defaultAlias = "Q1601028Trigger"
local Q16010ClientConfig = require("Quest/Client/Q16010ClientConfig")

local this
local subIDs = Q16010ClientConfig.SubIDs
local datas = Q16010ClientConfig.Datas
local npcs = Q16010ClientConfig.Npcs
local points = Q16010ClientConfig.Points

function Q1601028Trigger:OnPostDataPrepare()
    print("Q1601028Trigger - OnPostDataPrepare")
    this = self
end

function Q1601028Trigger:OnPostComponentPrepare()
    print("Q1601028Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16010)
end

function Q1601028Trigger:TriggerIn()
    print("Q1601028Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {1601028})
    this:DestroySelf()
end

function Q1601028Trigger:PreTriggerIn()
    print("Q1601028Trigger - PreTriggerIn")
end

function Q1601028Trigger:LightUpTriggerIn()
    print("Q1601028Trigger - LightUpTriggerIn")
end

function Q1601028Trigger:TriggerOut()
    print("Q1601028Trigger - TriggerOut")
end

return Q1601028Trigger
