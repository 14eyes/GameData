require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7667502Trigger = class("Q7667502Trigger", GadgetActorProxy)
Q7667502Trigger.defaultAlias = "Q7667502Trigger"
local Q76675ClientConfig = require("Quest/Client/Q76675ClientConfig")

local this
local subIDs = Q76675ClientConfig.SubIDs
local datas = Q76675ClientConfig.Datas
local npcs = Q76675ClientConfig.Npcs
local points = Q76675ClientConfig.Points

function Q7667502Trigger:OnPostDataPrepare()
    print("Q7667502Trigger - OnPostDataPrepare")
    this = self
end

function Q7667502Trigger:OnPostComponentPrepare()
    print("Q7667502Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76675)
end

function Q7667502Trigger:TriggerIn()
    print("Q7667502Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7667502)
    this:DestroySelf()
end

function Q7667502Trigger:PreTriggerIn()
    print("Q7667502Trigger - PreTriggerIn")
end

function Q7667502Trigger:LightUpTriggerIn()
    print("Q7667502Trigger - LightUpTriggerIn")
end

function Q7667502Trigger:TriggerOut()
    print("Q7667502Trigger - TriggerOut")
end

return Q7667502Trigger
