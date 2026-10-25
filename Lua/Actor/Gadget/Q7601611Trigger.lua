require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601611Trigger = class("Q7601611Trigger", GadgetActorProxy)
Q7601611Trigger.defaultAlias = "Q7601611Trigger"
local Q76016ClientConfig = require("Quest/Client/Q76016ClientConfig")

local this
local subIDs = Q76016ClientConfig.SubIDs
local datas = Q76016ClientConfig.Datas
local npcs = Q76016ClientConfig.Npcs
local points = Q76016ClientConfig.Points

function Q7601611Trigger:OnPostDataPrepare()
    print("Q7601611Trigger - OnPostDataPrepare")
    this = self
end

function Q7601611Trigger:OnPostComponentPrepare()
    print("Q7601611Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76016)
end

function Q7601611Trigger:TriggerIn()
    print("Q7601611Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7601611)
    this:DestroySelf()
end

function Q7601611Trigger:PreTriggerIn()
    print("Q7601611Trigger - PreTriggerIn")
end

function Q7601611Trigger:LightUpTriggerIn()
    print("Q7601611Trigger - LightUpTriggerIn")
end

function Q7601611Trigger:TriggerOut()
    print("Q7601611Trigger - TriggerOut")
end

return Q7601611Trigger
