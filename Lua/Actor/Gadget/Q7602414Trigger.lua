require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602414Trigger = class("Q7602414Trigger", GadgetActorProxy)
Q7602414Trigger.defaultAlias = "Q7602414Trigger"
local Q76024ClientConfig = require("Quest/Client/Q76024ClientConfig")

local this
local subIDs = Q76024ClientConfig.SubIDs
local datas = Q76024ClientConfig.Datas
local npcs = Q76024ClientConfig.Npcs
local points = Q76024ClientConfig.Points

function Q7602414Trigger:OnPostDataPrepare()
    print("Q7602414Trigger - OnPostDataPrepare")
    this = self
end

function Q7602414Trigger:OnPostComponentPrepare()
    print("Q7602414Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76024)
end

function Q7602414Trigger:TriggerIn()
    print("Q7602414Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7602414)
    this:DestroySelf()
end

function Q7602414Trigger:PreTriggerIn()
    print("Q7602414Trigger - PreTriggerIn")
end

function Q7602414Trigger:LightUpTriggerIn()
    print("Q7602414Trigger - LightUpTriggerIn")
end

function Q7602414Trigger:TriggerOut()
    print("Q7602414Trigger - TriggerOut")
end

return Q7602414Trigger
