require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74104Trigger6 = class("Q74104Trigger6", GadgetActorProxy)
Q74104Trigger6.defaultAlias = "Q74104Trigger6"
local Q74104ClientConfig = require("Quest/Client/Q74104ClientConfig")

local this
local subIDs = Q74104ClientConfig.SubIDs
local npcs = Q74104ClientConfig.Npcs
local points = Q74104ClientConfig.Points
local datas = Q74104ClientConfig.Datas

function Q74104Trigger6:OnPostDataPrepare()
    print("[MainId: 74104][Trigger: Q74104Trigger6] OnPostDataPrepare")
    this = self
end

function Q74104Trigger6:OnPostComponentPrepare()
    print("[MainId: 74104][Trigger: Q74104Trigger6] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74104Trigger6:TriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger6] TriggerIn")
    actorUtils.FinishQuestID(false, 7410419)
    this:DestroySelf()
end

function Q74104Trigger6:PreTriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger6] PreTriggerIn")
end

function Q74104Trigger6:LightUpTriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger6] LightUpTriggerIn")
end

function Q74104Trigger6:TriggerOut()
    print("[MainId: 74104][Trigger: Q74104Trigger6] TriggerOut")
end

return Q74104Trigger6
