require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602412Trigger = class("Q7602412Trigger", GadgetActorProxy)
Q7602412Trigger.defaultAlias = "Q7602412Trigger"
local Q76024ClientConfig = require("Quest/Client/Q76024ClientConfig")

local this
local subIDs = Q76024ClientConfig.SubIDs
local datas = Q76024ClientConfig.Datas
local npcs = Q76024ClientConfig.Npcs
local points = Q76024ClientConfig.Points

function Q7602412Trigger:OnPostDataPrepare()
    print("Q7602412Trigger - OnPostDataPrepare")
    this = self
end

function Q7602412Trigger:OnPostComponentPrepare()
    print("Q7602412Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76024)
end

function Q7602412Trigger:TriggerIn()
    print("Q7602412Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7602412)
    this:DestroySelf()
end

function Q7602412Trigger:PreTriggerIn()
    print("Q7602412Trigger - PreTriggerIn")
end

function Q7602412Trigger:LightUpTriggerIn()
    print("Q7602412Trigger - LightUpTriggerIn")
end

function Q7602412Trigger:TriggerOut()
    print("Q7602412Trigger - TriggerOut")
end

return Q7602412Trigger
