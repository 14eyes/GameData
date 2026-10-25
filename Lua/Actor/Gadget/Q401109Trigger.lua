require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401109Trigger = class("Q401109Trigger", GadgetActorProxy)
Q401109Trigger.defaultAlias = "Q401109Trigger"
local Q4011ClientConfig = require("Quest/Client/Q4011ClientConfig")

local this
local subIDs = Q4011ClientConfig.SubIDs
local npcs = Q4011ClientConfig.Npcs
local points = Q4011ClientConfig.Points
local datas = Q4011ClientConfig.Datas

function Q401109Trigger:OnPostDataPrepare()
    print("[MainId: 4011][Trigger: Q401109Trigger] OnPostDataPrepare")
    this = self
end

function Q401109Trigger:OnPostComponentPrepare()
    print("[MainId: 4011][Trigger: Q401109Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(27, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401109Trigger:TriggerIn()
    print("[MainId: 4011][Trigger: Q401109Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 401109)
    this:DestroySelf()
end

function Q401109Trigger:PreTriggerIn()
    print("[MainId: 4011][Trigger: Q401109Trigger] PreTriggerIn")
end

function Q401109Trigger:LightUpTriggerIn()
    print("[MainId: 4011][Trigger: Q401109Trigger] LightUpTriggerIn")
    actorMgr:GetActor("4011"):ShowBlackScreenWithDialogText(0, 2.5, 0.5, nil, nil, nil, 0, false, true)
end

function Q401109Trigger:TriggerOut()
    print("[MainId: 4011][Trigger: Q401109Trigger] TriggerOut")
end

return Q401109Trigger
