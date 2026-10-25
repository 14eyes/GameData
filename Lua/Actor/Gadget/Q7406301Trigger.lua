require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7406301Trigger = class("Q7406301Trigger", GadgetActorProxy)
Q7406301Trigger.defaultAlias = "Q7406301Trigger"
local Q74063ClientConfig = require("Quest/Client/Q74063ClientConfig")

local this
local subIDs = Q74063ClientConfig.SubIDs
local npcs = Q74063ClientConfig.Npcs
local points = Q74063ClientConfig.Points
local datas = Q74063ClientConfig.Datas

function Q7406301Trigger:OnPostDataPrepare()
    print("[MainId: 74063][Trigger: Q7406301Trigger] OnPostDataPrepare")
    this = self
end

function Q7406301Trigger:OnPostComponentPrepare()
    print("[MainId: 74063][Trigger: Q7406301Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7406301Trigger:TriggerIn()
    print("[MainId: 74063][Trigger: Q7406301Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7406301)
    this:DestroySelf()
end

function Q7406301Trigger:PreTriggerIn()
    print("[MainId: 74063][Trigger: Q7406301Trigger] PreTriggerIn")
end

function Q7406301Trigger:LightUpTriggerIn()
    print("[MainId: 74063][Trigger: Q7406301Trigger] LightUpTriggerIn")
end

function Q7406301Trigger:TriggerOut()
    print("[MainId: 74063][Trigger: Q7406301Trigger] TriggerOut")
end

return Q7406301Trigger
