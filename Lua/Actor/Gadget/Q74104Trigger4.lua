require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74104Trigger4 = class("Q74104Trigger4", GadgetActorProxy)
Q74104Trigger4.defaultAlias = "Q74104Trigger4"
local Q74104ClientConfig = require("Quest/Client/Q74104ClientConfig")

local this
local subIDs = Q74104ClientConfig.SubIDs
local npcs = Q74104ClientConfig.Npcs
local points = Q74104ClientConfig.Points
local datas = Q74104ClientConfig.Datas

function Q74104Trigger4:OnPostDataPrepare()
    print("[MainId: 74104][Trigger: Q74104Trigger4] OnPostDataPrepare")
    this = self
end

function Q74104Trigger4:OnPostComponentPrepare()
    print("[MainId: 74104][Trigger: Q74104Trigger4] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74104Trigger4:TriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger4] TriggerIn")
    actorUtils.FinishQuestID(false, 7410415)
    this:DestroySelf()
end

function Q74104Trigger4:PreTriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger4] PreTriggerIn")
end

function Q74104Trigger4:LightUpTriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger4] LightUpTriggerIn")
end

function Q74104Trigger4:TriggerOut()
    print("[MainId: 74104][Trigger: Q74104Trigger4] TriggerOut")
end

return Q74104Trigger4
