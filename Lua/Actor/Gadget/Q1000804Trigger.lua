require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000804Trigger = class("Q1000804Trigger", GadgetActorProxy)
Q1000804Trigger.defaultAlias = "Q1000804Trigger"
local Q10008ClientConfig = require("Quest/Client/Q10008ClientConfig")

local this
local subIDs = Q10008ClientConfig.SubIDs
local datas = Q10008ClientConfig.Datas
local npcs = Q10008ClientConfig.Npcs
local points = Q10008ClientConfig.Points

function Q1000804Trigger:OnPostDataPrepare()
    print("Q1000804Trigger - OnPostDataPrepare")
    this = self
end

function Q1000804Trigger:OnPostComponentPrepare()
    print("Q1000804Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10008)
end

function Q1000804Trigger:TriggerIn()
    print("Q1000804Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000804)
    this:DestroySelf()
end

function Q1000804Trigger:PreTriggerIn()
    print("Q1000804Trigger - PreTriggerIn")
end

function Q1000804Trigger:LightUpTriggerIn()
    print("Q1000804Trigger - LightUpTriggerIn")
end

function Q1000804Trigger:TriggerOut()
    print("Q1000804Trigger - TriggerOut")
end

return Q1000804Trigger
