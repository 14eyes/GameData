require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400410Trigger = class("Q7400410Trigger", GadgetActorProxy)
Q7400410Trigger.defaultAlias = "Q7400410Trigger"
local Q74004ClientConfig = require("Quest/Client/Q74004ClientConfig")

local this
local subIDs = Q74004ClientConfig.SubIDs
local npcs = Q74004ClientConfig.Npcs
local points = Q74004ClientConfig.Points
local datas = Q74004ClientConfig.Datas

function Q7400410Trigger:OnPostDataPrepare()
    print("[MainId: 74004][Trigger: Q7400410Trigger] OnPostDataPrepare")
    this = self
end

function Q7400410Trigger:OnPostComponentPrepare()
    print("[MainId: 74004][Trigger: Q7400410Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400410Trigger:TriggerIn()
    print("[MainId: 74004][Trigger: Q7400410Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400410)
    this:DestroySelf()
end

function Q7400410Trigger:PreTriggerIn()
    print("[MainId: 74004][Trigger: Q7400410Trigger] PreTriggerIn")
end

function Q7400410Trigger:LightUpTriggerIn()
    print("[MainId: 74004][Trigger: Q7400410Trigger] LightUpTriggerIn")
end

function Q7400410Trigger:TriggerOut()
    print("[MainId: 74004][Trigger: Q7400410Trigger] TriggerOut")
end

return Q7400410Trigger
