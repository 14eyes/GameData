require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400419Trigger = class("Q7400419Trigger", GadgetActorProxy)
Q7400419Trigger.defaultAlias = "Q7400419Trigger"
local Q74004ClientConfig = require("Quest/Client/Q74004ClientConfig")

local this
local subIDs = Q74004ClientConfig.SubIDs
local npcs = Q74004ClientConfig.Npcs
local points = Q74004ClientConfig.Points
local datas = Q74004ClientConfig.Datas

function Q7400419Trigger:OnPostDataPrepare()
    print("[MainId: 74004][Trigger: Q7400419Trigger] OnPostDataPrepare")
    this = self
end

function Q7400419Trigger:OnPostComponentPrepare()
    print("[MainId: 74004][Trigger: Q7400419Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400419Trigger:TriggerIn()
    print("[MainId: 74004][Trigger: Q7400419Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400419)
    this:DestroySelf()
end

function Q7400419Trigger:PreTriggerIn()
    print("[MainId: 74004][Trigger: Q7400419Trigger] PreTriggerIn")
end

function Q7400419Trigger:LightUpTriggerIn()
    print("[MainId: 74004][Trigger: Q7400419Trigger] LightUpTriggerIn")
end

function Q7400419Trigger:TriggerOut()
    print("[MainId: 74004][Trigger: Q7400419Trigger] TriggerOut")
end

return Q7400419Trigger
