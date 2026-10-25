require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411312Trigger = class("Q7411312Trigger", GadgetActorProxy)
Q7411312Trigger.defaultAlias = "Q7411312Trigger"
local Q74113ClientConfig = require("Quest/Client/Q74113ClientConfig")

local this
local subIDs = Q74113ClientConfig.SubIDs
local npcs = Q74113ClientConfig.Npcs
local points = Q74113ClientConfig.Points
local datas = Q74113ClientConfig.Datas

function Q7411312Trigger:OnPostDataPrepare()
    print("[MainId: 74113][Trigger: Q7411312Trigger] OnPostDataPrepare")
    this = self
end

function Q7411312Trigger:OnPostComponentPrepare()
    print("[MainId: 74113][Trigger: Q7411312Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7411312Trigger:TriggerIn()
    print("[MainId: 74113][Trigger: Q7411312Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7411312)
    this:DestroySelf()
end

function Q7411312Trigger:PreTriggerIn()
    print("[MainId: 74113][Trigger: Q7411312Trigger] PreTriggerIn")
end

function Q7411312Trigger:LightUpTriggerIn()
    print("[MainId: 74113][Trigger: Q7411312Trigger] LightUpTriggerIn")
end

function Q7411312Trigger:TriggerOut()
    print("[MainId: 74113][Trigger: Q7411312Trigger] TriggerOut")
end

return Q7411312Trigger
