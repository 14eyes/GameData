require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000907Trigger = class("Q1000907Trigger", GadgetActorProxy)
Q1000907Trigger.defaultAlias = "Q1000907Trigger"
local Q10009ClientConfig = require("Quest/Client/Q10009ClientConfig")

local this
local subIDs = Q10009ClientConfig.SubIDs
local datas = Q10009ClientConfig.Datas
local npcs = Q10009ClientConfig.Npcs
local points = Q10009ClientConfig.Points

function Q1000907Trigger:OnPostDataPrepare()
    print("Q1000907Trigger - OnPostDataPrepare")
    this = self
end

function Q1000907Trigger:OnPostComponentPrepare()
    print("Q1000907Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10009)
end

function Q1000907Trigger:TriggerIn()
    print("Q1000907Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000907)
    this:DestroySelf()
end

function Q1000907Trigger:PreTriggerIn()
    print("Q1000907Trigger - PreTriggerIn")
end

function Q1000907Trigger:LightUpTriggerIn()
    print("Q1000907Trigger - LightUpTriggerIn")
end

function Q1000907Trigger:TriggerOut()
    print("Q1000907Trigger - TriggerOut")
end

return Q1000907Trigger
