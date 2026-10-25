require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110006Trigger = class("Q7110006Trigger", GadgetActorProxy)
Q7110006Trigger.defaultAlias = "Q7110006Trigger"
local Q71100ClientConfig = require("Quest/Client/Q71100ClientConfig")

local this
local subIDs = Q71100ClientConfig.SubIDs
local npcs = Q71100ClientConfig.Npcs
local points = Q71100ClientConfig.Points
local datas = Q71100ClientConfig.Datas

function Q7110006Trigger:OnPostDataPrepare()
    print("[MainId: 71100][Trigger: Q7110006Trigger] OnPostDataPrepare")
    this = self
end

function Q7110006Trigger:OnPostComponentPrepare()
    print("[MainId: 71100][Trigger: Q7110006Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110006Trigger:TriggerIn()
    print("[MainId: 71100][Trigger: Q7110006Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110006)
    this:DestroySelf()
end

function Q7110006Trigger:PreTriggerIn()
    print("[MainId: 71100][Trigger: Q7110006Trigger] PreTriggerIn")
end

function Q7110006Trigger:LightUpTriggerIn()
    print("[MainId: 71100][Trigger: Q7110006Trigger] LightUpTriggerIn")
end

function Q7110006Trigger:TriggerOut()
    print("[MainId: 71100][Trigger: Q7110006Trigger] TriggerOut")
end

return Q7110006Trigger
