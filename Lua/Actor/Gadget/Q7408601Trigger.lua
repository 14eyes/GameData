require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408601Trigger = class("Q7408601Trigger", GadgetActorProxy)
Q7408601Trigger.defaultAlias = "Q7408601Trigger"
local Q74086ClientConfig = require("Quest/Client/Q74086ClientConfig")

local this
local subIDs = Q74086ClientConfig.SubIDs
local npcs = Q74086ClientConfig.Npcs
local points = Q74086ClientConfig.Points
local datas = Q74086ClientConfig.Datas

function Q7408601Trigger:OnPostDataPrepare()
    print("[MainId: 74086][Trigger: Q7408601Trigger] OnPostDataPrepare")
    this = self
end

function Q7408601Trigger:OnPostComponentPrepare()
    print("[MainId: 74086][Trigger: Q7408601Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408601Trigger:TriggerIn()
    print("[MainId: 74086][Trigger: Q7408601Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7408601)
    this:DestroySelf()
end

function Q7408601Trigger:PreTriggerIn()
    print("[MainId: 74086][Trigger: Q7408601Trigger] PreTriggerIn")
end

function Q7408601Trigger:LightUpTriggerIn()
    print("[MainId: 74086][Trigger: Q7408601Trigger] LightUpTriggerIn")
end

function Q7408601Trigger:TriggerOut()
    print("[MainId: 74086][Trigger: Q7408601Trigger] TriggerOut")
end

return Q7408601Trigger
