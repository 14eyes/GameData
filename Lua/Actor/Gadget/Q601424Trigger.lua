require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601424Trigger = class("Q601424Trigger", GadgetActorProxy)
Q601424Trigger.defaultAlias = "Q601424Trigger"
local Q6014ClientConfig = require("Quest/Client/Q6014ClientConfig")

local this
local subIDs = Q6014ClientConfig.SubIDs
local datas = Q6014ClientConfig.Datas
local npcs = Q6014ClientConfig.Npcs
local points = Q6014ClientConfig.Points

function Q601424Trigger:OnPostDataPrepare()
    print("Q601424Trigger - OnPostDataPrepare")
    this = self
end

function Q601424Trigger:OnPostComponentPrepare()
    print("Q601424Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6014)
end

function Q601424Trigger:TriggerIn()
    print("Q601424Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 601424)
    this:DestroySelf()
end

function Q601424Trigger:PreTriggerIn()
    print("Q601424Trigger - PreTriggerIn")
end

function Q601424Trigger:LightUpTriggerIn()
    print("Q601424Trigger - LightUpTriggerIn")
end

function Q601424Trigger:TriggerOut()
    print("Q601424Trigger - TriggerOut")
end

return Q601424Trigger
