require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7603006Trigger = class("Q7603006Trigger", GadgetActorProxy)
Q7603006Trigger.defaultAlias = "Q7603006Trigger"
local Q76030ClientConfig = require("Quest/Client/Q76030ClientConfig")

local this
local subIDs = Q76030ClientConfig.SubIDs
local datas = Q76030ClientConfig.Datas
local npcs = Q76030ClientConfig.Npcs
local points = Q76030ClientConfig.Points

function Q7603006Trigger:OnPostDataPrepare()
    print("Q7603006Trigger - OnPostDataPrepare")
    this = self
end

function Q7603006Trigger:OnPostComponentPrepare()
    print("Q7603006Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(22.8029, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76030)
end

function Q7603006Trigger:TriggerIn()
    print("Q7603006Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7603006)
    this:DestroySelf()
end

function Q7603006Trigger:PreTriggerIn()
    print("Q7603006Trigger - PreTriggerIn")
end

function Q7603006Trigger:LightUpTriggerIn()
    print("Q7603006Trigger - LightUpTriggerIn")
end

function Q7603006Trigger:TriggerOut()
    print("Q7603006Trigger - TriggerOut")
end

return Q7603006Trigger
