require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411313Trigger = class("Q7411313Trigger", GadgetActorProxy)
Q7411313Trigger.defaultAlias = "Q7411313Trigger"
local Q74113ClientConfig = require("Quest/Client/Q74113ClientConfig")

local this
local subIDs = Q74113ClientConfig.SubIDs
local npcs = Q74113ClientConfig.Npcs
local points = Q74113ClientConfig.Points
local datas = Q74113ClientConfig.Datas

function Q7411313Trigger:OnPostDataPrepare()
    print("[MainId: 74113][Trigger: Q7411313Trigger] OnPostDataPrepare")
    this = self
end

function Q7411313Trigger:OnPostComponentPrepare()
    print("[MainId: 74113][Trigger: Q7411313Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7411313Trigger:TriggerIn()
    print("[MainId: 74113][Trigger: Q7411313Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7411313)
    this:DestroySelf()
end

function Q7411313Trigger:PreTriggerIn()
    print("[MainId: 74113][Trigger: Q7411313Trigger] PreTriggerIn")
end

function Q7411313Trigger:LightUpTriggerIn()
    print("[MainId: 74113][Trigger: Q7411313Trigger] LightUpTriggerIn")
end

function Q7411313Trigger:TriggerOut()
    print("[MainId: 74113][Trigger: Q7411313Trigger] TriggerOut")
end

return Q7411313Trigger
