require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600417Trigger = class("Q1600417Trigger", GadgetActorProxy)
Q1600417Trigger.defaultAlias = "Q1600417Trigger"
local Q16004ClientConfig = require("Quest/Client/Q16004ClientConfig")

local this
local subIDs = Q16004ClientConfig.SubIDs
local datas = Q16004ClientConfig.Datas
local npcs = Q16004ClientConfig.Npcs
local points = Q16004ClientConfig.Points

function Q1600417Trigger:OnPostDataPrepare()
    print("Q1600417Trigger - OnPostDataPrepare")
    this = self
end

function Q1600417Trigger:OnPostComponentPrepare()
    print("Q1600417Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16004)
end

function Q1600417Trigger:TriggerIn()
    print("Q1600417Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1600417)
    this:DestroySelf()
end

function Q1600417Trigger:PreTriggerIn()
    print("Q1600417Trigger - PreTriggerIn")
end

function Q1600417Trigger:LightUpTriggerIn()
    print("Q1600417Trigger - LightUpTriggerIn")
end

function Q1600417Trigger:TriggerOut()
    print("Q1600417Trigger - TriggerOut")
end

return Q1600417Trigger
