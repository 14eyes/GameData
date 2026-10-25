require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601804Trigger = class("Q7601804Trigger", GadgetActorProxy)
Q7601804Trigger.defaultAlias = "Q7601804Trigger"
local Q76018ClientConfig = require("Quest/Client/Q76018ClientConfig")

local this
local subIDs = Q76018ClientConfig.SubIDs
local datas = Q76018ClientConfig.Datas
local npcs = Q76018ClientConfig.Npcs
local points = Q76018ClientConfig.Points

function Q7601804Trigger:OnPostDataPrepare()
    print("Q7601804Trigger - OnPostDataPrepare")
    this = self
end

function Q7601804Trigger:OnPostComponentPrepare()
    print("Q7601804Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76018)
end

function Q7601804Trigger:TriggerIn()
    print("Q7601804Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7601804)
    this:DestroySelf()
end

function Q7601804Trigger:PreTriggerIn()
    print("Q7601804Trigger - PreTriggerIn")
end

function Q7601804Trigger:LightUpTriggerIn()
    print("Q7601804Trigger - LightUpTriggerIn")
end

function Q7601804Trigger:TriggerOut()
    print("Q7601804Trigger - TriggerOut")
end

return Q7601804Trigger
