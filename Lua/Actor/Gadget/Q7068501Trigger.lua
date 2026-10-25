require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7068501Trigger = class("Q7068501Trigger", GadgetActorProxy)
Q7068501Trigger.defaultAlias = "Q7068501Trigger"
local Q70685ClientConfig = require("Quest/Client/Q70685ClientConfig")

local this
local subIDs = Q70685ClientConfig.SubIDs
local npcs = Q70685ClientConfig.Npcs
local points = Q70685ClientConfig.Points

function Q7068501Trigger:OnPostDataPrepare()
    print("Q7068501Trigger - OnPostDataPrepare")
    this = self
end

function Q7068501Trigger:OnPostComponentPrepare()
    print("Q7068501Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70685)
end

function Q7068501Trigger:TriggerIn()
    print("Q7068501Trigger - TriggerIn")
end

function Q7068501Trigger:PreTriggerIn()
    print("Q7068501Trigger - PreTriggerIn")
end

function Q7068501Trigger:LightUpTriggerIn()
    print("Q7068501Trigger - LightUpTriggerIn")
end

function Q7068501Trigger:TriggerOut()
    print("Q7068501Trigger - TriggerOut")
    actorUtils.FinishQuestID(false, 7068501)
    this:DestroySelf()
end

return Q7068501Trigger
