require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1401602_FailTrigger = class("Q1401602_FailTrigger", GadgetActorProxy)
Q1401602_FailTrigger.defaultAlias = "Q1401602_FailTrigger"
local Q14016ClientConfig = require("Quest/Client/Q14016ClientConfig")

local this
local subIDs = Q14016ClientConfig.SubIDs
local npcs = Q14016ClientConfig.Npcs
local datas = Q14016ClientConfig.Datas

function Q1401602_FailTrigger:OnPostDataPrepare()
    print("[MainId: 14016][Trigger: Q1401602_FailTrigger] OnPostDataPrepare")
    this = self
end

function Q1401602_FailTrigger:OnPostComponentPrepare()
    print("[MainId: 14016][Trigger: Q1401602_FailTrigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(53.5708, 129.3224, 27.65878, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1401602_FailTrigger:TriggerIn()
    print("[MainId: 14016][Trigger: Q1401602_FailTrigger] TriggerIn")
end

function Q1401602_FailTrigger:PreTriggerIn()
    print("[MainId: 14016][Trigger: Q1401602_FailTrigger] PreTriggerIn")
end

function Q1401602_FailTrigger:LightUpTriggerIn()
    print("[MainId: 14016][Trigger: Q1401602_FailTrigger] LightUpTriggerIn")
end

function Q1401602_FailTrigger:TriggerOut()
    print("[MainId: 14016][Trigger: Q1401602_FailTrigger] TriggerOut")
    actorUtils.FinishQuestID(true, 1401602)
    this:DestroySelf()
end

return Q1401602_FailTrigger
