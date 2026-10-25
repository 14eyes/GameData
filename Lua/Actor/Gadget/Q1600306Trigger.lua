require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600306Trigger = class("Q1600306Trigger", GadgetActorProxy)
Q1600306Trigger.defaultAlias = "Q1600306Trigger"
local Q16003ClientConfig = require("Quest/Client/Q16003ClientConfig")

local this
local subIDs = Q16003ClientConfig.SubIDs
local datas = Q16003ClientConfig.Datas
local npcs = Q16003ClientConfig.Npcs
local points = Q16003ClientConfig.Points

function Q1600306Trigger:OnPostDataPrepare()
    print("Q1600306Trigger - OnPostDataPrepare")
    this = self
end

function Q1600306Trigger:OnPostComponentPrepare()
    print("Q1600306Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16003)
end

function Q1600306Trigger:TriggerIn()
    print("Q1600306Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1600306)
    this:DestroySelf()
end

function Q1600306Trigger:PreTriggerIn()
    print("Q1600306Trigger - PreTriggerIn")
end

function Q1600306Trigger:LightUpTriggerIn()
    print("Q1600306Trigger - LightUpTriggerIn")
end

function Q1600306Trigger:TriggerOut()
    print("Q1600306Trigger - TriggerOut")
end

return Q1600306Trigger
