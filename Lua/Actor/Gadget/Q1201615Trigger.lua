require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1201615Trigger = class("Q1201615Trigger", GadgetActorProxy)
Q1201615Trigger.defaultAlias = "Q1201615Trigger"
local Q12016ClientConfig = require("Quest/Client/Q12016ClientConfig")

local this
local subIDs = Q12016ClientConfig.SubIDs
local npcs = Q12016ClientConfig.Npcs
local points = Q12016ClientConfig.Points
local datas = Q12016ClientConfig.Datas

function Q1201615Trigger:OnPostDataPrepare()
    print("[MainId: 12016][Trigger: Q1201615Trigger] OnPostDataPrepare")
    this = self
end

function Q1201615Trigger:OnPostComponentPrepare()
    print("[MainId: 12016][Trigger: Q1201615Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(70, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1201615Trigger:TriggerIn()
    print("[MainId: 12016][Trigger: Q1201615Trigger] TriggerIn")
end

function Q1201615Trigger:TriggerOut()
    print("[MainId: 12016][Trigger: Q1201615Trigger] TriggerOut")
    actorUtils.FinishQuestID(true, 1201615)
    this:DestroySelf()
end

return Q1201615Trigger
