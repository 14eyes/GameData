require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1907403FailTrigger = class("Q1907403FailTrigger", GadgetActorProxy)
Q1907403FailTrigger.defaultAlias = "Q1907403FailTrigger"
local Q19074ClientConfig = require("Quest/Client/Q19074ClientConfig")

local this
local subIDs = Q19074ClientConfig.SubIDs
local npcs = Q19074ClientConfig.Npcs
local datas = Q19074ClientConfig.Datas

function Q1907403FailTrigger:OnPostDataPrepare()
    print("[MainId: 19074][Trigger: Q1907403FailTrigger] OnPostDataPrepare")
    this = self
end

function Q1907403FailTrigger:OnPostComponentPrepare()
    print("[MainId: 19074][Trigger: Q1907403FailTrigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(31.38817, 42.7792, 13.89168, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1907403FailTrigger:TriggerIn()
    print("[MainId: 19074][Trigger: Q1907403FailTrigger] TriggerIn")
end

function Q1907403FailTrigger:PreTriggerIn()
    print("[MainId: 19074][Trigger: Q1907403FailTrigger] PreTriggerIn")
end

function Q1907403FailTrigger:LightUpTriggerIn()
    print("[MainId: 19074][Trigger: Q1907403FailTrigger] LightUpTriggerIn")
end

function Q1907403FailTrigger:TriggerOut()
    print("[MainId: 19074][Trigger: Q1907403FailTrigger] TriggerOut")
    actorUtils.FinishQuestID(true, 1907403)
    this:DestroySelf()
end

return Q1907403FailTrigger
