require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006Trigger1 = class("Q4006Trigger1", GadgetActorProxy)
Q4006Trigger1.defaultAlias = "Q4006Trigger1"
local Q4006ClientConfig = require("Quest/Client/Q4006ClientConfig")

local this
local subIDs = Q4006ClientConfig.SubIDs
local npcs = Q4006ClientConfig.Npcs
local points = Q4006ClientConfig.Points
local datas = Q4006ClientConfig.Datas

function Q4006Trigger1:OnPostDataPrepare()
    print("[MainId: 4006][Trigger: Q4006Trigger1] OnPostDataPrepare")
    this = self
end

function Q4006Trigger1:OnPostComponentPrepare()
    print("[MainId: 4006][Trigger: Q4006Trigger1] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(200, 200, 35, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4006Trigger1:TriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger1] TriggerIn")
    actorUtils.FinishQuestID(false, 400606)
    this:DestroySelf()
end

function Q4006Trigger1:PreTriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger1] PreTriggerIn")
end

function Q4006Trigger1:LightUpTriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger1] LightUpTriggerIn")
end

function Q4006Trigger1:TriggerOut()
    print("[MainId: 4006][Trigger: Q4006Trigger1] TriggerOut")
end

return Q4006Trigger1
