require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1201601Trigger = class("Q1201601Trigger", GadgetActorProxy)
Q1201601Trigger.defaultAlias = "Q1201601Trigger"
local Q12016ClientConfig = require("Quest/Client/Q12016ClientConfig")

local this
local subIDs = Q12016ClientConfig.SubIDs
local npcs = Q12016ClientConfig.Npcs
local points = Q12016ClientConfig.Points
local datas = Q12016ClientConfig.Datas

function Q1201601Trigger:OnPostDataPrepare()
    print("[MainId: 12016][Trigger: Q1201601Trigger] OnPostDataPrepare")
    this = self
end

function Q1201601Trigger:OnPostComponentPrepare()
    print("[MainId: 12016][Trigger: Q1201601Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1201601Trigger:TriggerIn()
    print("[MainId: 12016][Trigger: Q1201601Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1201601)
    this:DestroySelf()
end

function Q1201601Trigger:TriggerOut()
    print("[MainId: 12016][Trigger: Q1201601Trigger] TriggerOut")
end

return Q1201601Trigger
