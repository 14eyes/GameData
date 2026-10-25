require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500411FailTrigger = class("Q7500411FailTrigger", GadgetActorProxy)
Q7500411FailTrigger.defaultAlias = "Q7500411FailTrigger"
local Q75004ClientConfig = require("Quest/Client/Q75004ClientConfig")

local this
local subIDs = Q75004ClientConfig.SubIDs
local npcs = Q75004ClientConfig.Npcs
local datas = Q75004ClientConfig.Datas

function Q7500411FailTrigger:OnPostDataPrepare()
    print("[MainId: 75004][Trigger: Q7500411FailTrigger] OnPostDataPrepare")
    this = self
end

function Q7500411FailTrigger:OnPostComponentPrepare()
    print("[MainId: 75004][Trigger: Q7500411FailTrigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(75, 65, 65, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75004)
end

function Q7500411FailTrigger:TriggerIn()
    print("[MainId: 75004][Trigger: Q7500411FailTrigger] TriggerIn")
end

function Q7500411FailTrigger:PreTriggerIn()
    print("[MainId: 75004][Trigger: Q7500411FailTrigger] PreTriggerIn")
end

function Q7500411FailTrigger:LightUpTriggerIn()
    print("[MainId: 75004][Trigger: Q7500411FailTrigger] LightUpTriggerIn")
end

function Q7500411FailTrigger:TriggerOut()
    print("[MainId: 75004][Trigger: Q7500411FailTrigger] TriggerOut")
    actorUtils.FinishQuestID(true, 7500411)
    this:DestroySelf()
end

return Q7500411FailTrigger
