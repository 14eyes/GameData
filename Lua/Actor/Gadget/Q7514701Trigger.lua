require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7514701Trigger = class("Q7514701Trigger", GadgetActorProxy)
Q7514701Trigger.defaultAlias = "Q7514701Trigger"
local Q75147ClientConfig = require("Quest/Client/Q75147ClientConfig")

local this
local subIDs = Q75147ClientConfig.SubIDs
local datas = Q75147ClientConfig.Datas
local npcs = Q75147ClientConfig.Npcs
local points = Q75147ClientConfig.Points

function Q7514701Trigger:OnPostDataPrepare()
    print("Q7514701Trigger - OnPostDataPrepare")
    this = self
end

function Q7514701Trigger:OnPostComponentPrepare()
    print("Q7514701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75147)
end

function Q7514701Trigger:TriggerIn()
    print("Q7514701Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7514701)
    this:DestroySelf()
end

function Q7514701Trigger:PreTriggerIn()
    print("Q7514701Trigger - PreTriggerIn")
end

function Q7514701Trigger:LightUpTriggerIn()
    print("Q7514701Trigger - LightUpTriggerIn")
end

function Q7514701Trigger:TriggerOut()
    print("Q7514701Trigger - TriggerOut")
end

return Q7514701Trigger
