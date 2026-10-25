require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1201605Trigger = class("Q1201605Trigger", GadgetActorProxy)
Q1201605Trigger.defaultAlias = "Q1201605Trigger"
local Q12016ClientConfig = require("Quest/Client/Q12016ClientConfig")

local this
local subIDs = Q12016ClientConfig.SubIDs
local npcs = Q12016ClientConfig.Npcs
local points = Q12016ClientConfig.Points
local datas = Q12016ClientConfig.Datas

function Q1201605Trigger:OnPostDataPrepare()
    print("[MainId: 12016][Trigger: Q1201605Trigger] OnPostDataPrepare")
    this = self
end

function Q1201605Trigger:OnPostComponentPrepare()
    print("[MainId: 12016][Trigger: Q1201605Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1201605Trigger:TriggerIn()
    print("[MainId: 12016][Trigger: Q1201605Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1201605)
    this:DestroySelf()
end

function Q1201605Trigger:TriggerOut()
    print("[MainId: 12016][Trigger: Q1201605Trigger] TriggerOut")
end

return Q1201605Trigger
