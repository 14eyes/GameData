require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000902Trigger = class("Q1000902Trigger", GadgetActorProxy)
Q1000902Trigger.defaultAlias = "Q1000902Trigger"
local Q10009ClientConfig = require("Quest/Client/Q10009ClientConfig")

local this
local subIDs = Q10009ClientConfig.SubIDs
local datas = Q10009ClientConfig.Datas
local npcs = Q10009ClientConfig.Npcs
local points = Q10009ClientConfig.Points

function Q1000902Trigger:OnPostDataPrepare()
    print("Q1000902Trigger - OnPostDataPrepare")
    this = self
end

function Q1000902Trigger:OnPostComponentPrepare()
    print("Q1000902Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10009)
end

function Q1000902Trigger:TriggerIn()
    print("Q1000902Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000902)
    this:DestroySelf()
end

function Q1000902Trigger:PreTriggerIn()
    print("Q1000902Trigger - PreTriggerIn")
end

function Q1000902Trigger:LightUpTriggerIn()
    print("Q1000902Trigger - LightUpTriggerIn")
end

function Q1000902Trigger:TriggerOut()
    print("Q1000902Trigger - TriggerOut")
end

return Q1000902Trigger
