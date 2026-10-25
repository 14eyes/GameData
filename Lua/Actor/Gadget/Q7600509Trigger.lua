require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600509Trigger = class("Q7600509Trigger", GadgetActorProxy)
Q7600509Trigger.defaultAlias = "Q7600509Trigger"
local Q76005ClientConfig = require("Quest/Client/Q76005ClientConfig")

local this
local subIDs = Q76005ClientConfig.SubIDs
local datas = Q76005ClientConfig.Datas
local npcs = Q76005ClientConfig.Npcs
local points = Q76005ClientConfig.Points

function Q7600509Trigger:OnPostDataPrepare()
    print("Q7600509Trigger - OnPostDataPrepare")
    this = self
end

function Q7600509Trigger:OnPostComponentPrepare()
    print("Q7600509Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76005)
end

function Q7600509Trigger:TriggerIn()
    print("Q7600509Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600509)
    this:DestroySelf()
end

function Q7600509Trigger:PreTriggerIn()
    print("Q7600509Trigger - PreTriggerIn")
end

function Q7600509Trigger:LightUpTriggerIn()
    print("Q7600509Trigger - LightUpTriggerIn")
end

function Q7600509Trigger:TriggerOut()
    print("Q7600509Trigger - TriggerOut")
end

return Q7600509Trigger
