require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74104Trigger12 = class("Q74104Trigger12", GadgetActorProxy)
Q74104Trigger12.defaultAlias = "Q74104Trigger12"
local Q74104ClientConfig = require("Quest/Client/Q74104ClientConfig")

local this
local subIDs = Q74104ClientConfig.SubIDs
local npcs = Q74104ClientConfig.Npcs
local points = Q74104ClientConfig.Points
local datas = Q74104ClientConfig.Datas

function Q74104Trigger12:OnPostDataPrepare()
    print("[MainId: 74104][Trigger: Q74104Trigger12] OnPostDataPrepare")
    this = self
end

function Q74104Trigger12:OnPostComponentPrepare()
    print("[MainId: 74104][Trigger: Q74104Trigger12] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74104Trigger12:TriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger12] TriggerIn")
    this:DestroySelf()
    actorUtils.FinishQuestID(false, 7410437)
end

function Q74104Trigger12:PreTriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger12] PreTriggerIn")
end

function Q74104Trigger12:LightUpTriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger12] LightUpTriggerIn")
end

function Q74104Trigger12:TriggerOut()
    print("[MainId: 74104][Trigger: Q74104Trigger12] TriggerOut")
end

return Q74104Trigger12
