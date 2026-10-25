require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40172Trigger2 = class("Q40172Trigger2", GadgetActorProxy)
Q40172Trigger2.defaultAlias = "Q40172Trigger2"
local Q40172ClientConfig = require("Quest/Client/Q40172ClientConfig")

local this
local subIDs = Q40172ClientConfig.SubIDs
local npcs = Q40172ClientConfig.Npcs
local points = Q40172ClientConfig.Points

function Q40172Trigger2:OnPostDataPrepare()
    print("Q40172Trigger2 - OnPostDataPrepare")
    this = self
end

function Q40172Trigger2:OnPostComponentPrepare()
    print("Q40172Trigger2 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40172)
end

function Q40172Trigger2:TriggerIn()
    print("Q40172Trigger2 - TriggerIn")
    actorUtils.FinishQuestID(false, 4017205)
    this:DestroySelf()
end

function Q40172Trigger2:PreTriggerIn()
    print("Q40172Trigger2 - PreTriggerIn")
end

function Q40172Trigger2:LightUpTriggerIn()
    print("Q40172Trigger2 - LightUpTriggerIn")
end

function Q40172Trigger2:TriggerOut()
    print("Q40172Trigger2 - TriggerOut")
end

return Q40172Trigger2
