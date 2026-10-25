require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614716Trigger = class("Q7614716Trigger", GadgetActorProxy)
Q7614716Trigger.defaultAlias = "Q7614716Trigger"
local Q76147ClientConfig = require("Quest/Client/Q76147ClientConfig")

local this
local subIDs = Q76147ClientConfig.SubIDs
local datas = Q76147ClientConfig.Datas
local npcs = Q76147ClientConfig.Npcs
local points = Q76147ClientConfig.Points

function Q7614716Trigger:OnPostDataPrepare()
    print("Q7614716Trigger - OnPostDataPrepare")
    this = self
end

function Q7614716Trigger:OnPostComponentPrepare()
    print("Q7614716Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76147)
end

function Q7614716Trigger:TriggerIn()
    print("Q7614716Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614716)
    this:DestroySelf()
end

function Q7614716Trigger:PreTriggerIn()
    print("Q7614716Trigger - PreTriggerIn")
end

function Q7614716Trigger:LightUpTriggerIn()
    print("Q7614716Trigger - LightUpTriggerIn")
end

function Q7614716Trigger:TriggerOut()
    print("Q7614716Trigger - TriggerOut")
end

return Q7614716Trigger
