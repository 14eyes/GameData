require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7521005Trigger = class("Q7521005Trigger", GadgetActorProxy)
Q7521005Trigger.defaultAlias = "Q7521005Trigger"
local Q75210ClientConfig = require("Quest/Client/Q75210ClientConfig")

local this
local subIDs = Q75210ClientConfig.SubIDs
local datas = Q75210ClientConfig.Datas
local npcs = Q75210ClientConfig.Npcs
local points = Q75210ClientConfig.Points

function Q7521005Trigger:OnPostDataPrepare()
    print("Q7521005Trigger - OnPostDataPrepare")
    this = self
end

function Q7521005Trigger:OnPostComponentPrepare()
    print("Q7521005Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75210)
end

function Q7521005Trigger:TriggerIn()
    print("Q7521005Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7521005)
    this:DestroySelf()
end

function Q7521005Trigger:PreTriggerIn()
    print("Q7521005Trigger - PreTriggerIn")
end

function Q7521005Trigger:LightUpTriggerIn()
    print("Q7521005Trigger - LightUpTriggerIn")
end

function Q7521005Trigger:TriggerOut()
    print("Q7521005Trigger - TriggerOut")
end

return Q7521005Trigger
