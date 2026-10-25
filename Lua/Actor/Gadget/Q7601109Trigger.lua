require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601109Trigger = class("Q7601109Trigger", GadgetActorProxy)
Q7601109Trigger.defaultAlias = "Q7601109Trigger"
local Q76011ClientConfig = require("Quest/Client/Q76011ClientConfig")

local this
local subIDs = Q76011ClientConfig.SubIDs
local datas = Q76011ClientConfig.Datas
local npcs = Q76011ClientConfig.Npcs
local points = Q76011ClientConfig.Points

function Q7601109Trigger:OnPostDataPrepare()
    print("Q7601109Trigger - OnPostDataPrepare")
    this = self
end

function Q7601109Trigger:OnPostComponentPrepare()
    print("Q7601109Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76011)
end

function Q7601109Trigger:TriggerIn()
    print("Q7601109Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7601109)
    this:DestroySelf()
end

function Q7601109Trigger:PreTriggerIn()
    print("Q7601109Trigger - PreTriggerIn")
end

function Q7601109Trigger:LightUpTriggerIn()
    print("Q7601109Trigger - LightUpTriggerIn")
end

function Q7601109Trigger:TriggerOut()
    print("Q7601109Trigger - TriggerOut")
end

return Q7601109Trigger
