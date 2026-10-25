require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411332Trigger = class("Q7411332Trigger", GadgetActorProxy)
Q7411332Trigger.defaultAlias = "Q7411332Trigger"
local Q74113ClientConfig = require("Quest/Client/Q74113ClientConfig")

local this
local subIDs = Q74113ClientConfig.SubIDs
local npcs = Q74113ClientConfig.Npcs
local points = Q74113ClientConfig.Points
local datas = Q74113ClientConfig.Datas

function Q7411332Trigger:OnPostDataPrepare()
    print("[MainId: 74113][Trigger: Q7411332Trigger] OnPostDataPrepare")
    this = self
end

function Q7411332Trigger:OnPostComponentPrepare()
    print("[MainId: 74113][Trigger: Q7411332Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7411332Trigger:TriggerIn()
    print("[MainId: 74113][Trigger: Q7411332Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7411332)
    this:DestroySelf()
end

function Q7411332Trigger:PreTriggerIn()
    print("[MainId: 74113][Trigger: Q7411332Trigger] PreTriggerIn")
end

function Q7411332Trigger:LightUpTriggerIn()
    print("[MainId: 74113][Trigger: Q7411332Trigger] LightUpTriggerIn")
end

function Q7411332Trigger:TriggerOut()
    print("[MainId: 74113][Trigger: Q7411332Trigger] TriggerOut")
end

return Q7411332Trigger
