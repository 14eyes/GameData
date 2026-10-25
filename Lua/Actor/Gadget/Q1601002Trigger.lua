require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1601002Trigger = class("Q1601002Trigger", GadgetActorProxy)
Q1601002Trigger.defaultAlias = "Q1601002Trigger"
local Q16010ClientConfig = require("Quest/Client/Q16010ClientConfig")

local this
local subIDs = Q16010ClientConfig.SubIDs
local datas = Q16010ClientConfig.Datas
local npcs = Q16010ClientConfig.Npcs
local points = Q16010ClientConfig.Points

function Q1601002Trigger:OnPostDataPrepare()
    print("Q1601002Trigger - OnPostDataPrepare")
    this = self
end

function Q1601002Trigger:OnPostComponentPrepare()
    print("Q1601002Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16010)
end

function Q1601002Trigger:TriggerIn()
    print("Q1601002Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1601002)
    this:DestroySelf()
end

function Q1601002Trigger:PreTriggerIn()
    print("Q1601002Trigger - PreTriggerIn")
end

function Q1601002Trigger:LightUpTriggerIn()
    print("Q1601002Trigger - LightUpTriggerIn")
end

function Q1601002Trigger:TriggerOut()
    print("Q1601002Trigger - TriggerOut")
end

return Q1601002Trigger
