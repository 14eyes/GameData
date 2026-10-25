require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502204Trigger = class("Q502204Trigger", GadgetActorProxy)
Q502204Trigger.defaultAlias = "Q502204Trigger"
local Q5022ClientConfig = require("Quest/Client/Q5022ClientConfig")

local this
local subIDs = Q5022ClientConfig.SubIDs
local datas = Q5022ClientConfig.Datas
local npcs = Q5022ClientConfig.Npcs
local points = Q5022ClientConfig.Points

function Q502204Trigger:OnPostDataPrepare()
    print("Q502204Trigger - OnPostDataPrepare")
    this = self
end

function Q502204Trigger:OnPostComponentPrepare()
    print("Q502204Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5022)
end

function Q502204Trigger:TriggerIn()
    print("Q502204Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 502205)
    this:DestroySelf()
end

function Q502204Trigger:PreTriggerIn()
    print("Q502204Trigger - PreTriggerIn")
end

function Q502204Trigger:LightUpTriggerIn()
    print("Q502204Trigger - LightUpTriggerIn")
end

function Q502204Trigger:TriggerOut()
    print("Q502204Trigger - TriggerOut")
end

return Q502204Trigger
