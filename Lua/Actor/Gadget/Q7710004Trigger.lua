require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710004Trigger = class("Q7710004Trigger", GadgetActorProxy)
Q7710004Trigger.defaultAlias = "Q7710004Trigger"
local Q77100ClientConfig = require("Quest/Client/Q77100ClientConfig")

local this
local subIDs = Q77100ClientConfig.SubIDs
local datas = Q77100ClientConfig.Datas
local npcs = Q77100ClientConfig.Npcs
local points = Q77100ClientConfig.Points

function Q7710004Trigger:OnPostDataPrepare()
    print("Q7710004Trigger - OnPostDataPrepare")
    this = self
end

function Q7710004Trigger:OnPostComponentPrepare()
    print("Q7710004Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77100)
end

function Q7710004Trigger:TriggerIn()
    print("Q7710004Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710004)
    this:DestroySelf()
end

function Q7710004Trigger:PreTriggerIn()
    print("Q7710004Trigger - PreTriggerIn")
end

function Q7710004Trigger:LightUpTriggerIn()
    print("Q7710004Trigger - LightUpTriggerIn")
end

function Q7710004Trigger:TriggerOut()
    print("Q7710004Trigger - TriggerOut")
end

return Q7710004Trigger
