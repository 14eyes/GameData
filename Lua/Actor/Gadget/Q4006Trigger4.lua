require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006Trigger4 = class("Q4006Trigger4", GadgetActorProxy)
Q4006Trigger4.defaultAlias = "Q4006Trigger4"
local Q4006ClientConfig = require("Quest/Client/Q4006ClientConfig")

local this
local subIDs = Q4006ClientConfig.SubIDs
local npcs = Q4006ClientConfig.Npcs
local points = Q4006ClientConfig.Points
local datas = Q4006ClientConfig.Datas

function Q4006Trigger4:OnPostDataPrepare()
    print("[MainId: 4006][Trigger: Q4006Trigger4] OnPostDataPrepare")
    this = self
end

function Q4006Trigger4:OnPostComponentPrepare()
    print("[MainId: 4006][Trigger: Q4006Trigger4] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4006Trigger4:TriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger4] TriggerIn")
    actorUtils.FinishQuestID(false, 400620)
    this:DestroySelf()
end

function Q4006Trigger4:PreTriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger4] PreTriggerIn")
end

function Q4006Trigger4:LightUpTriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger4] LightUpTriggerIn")
end

function Q4006Trigger4:TriggerOut()
    print("[MainId: 4006][Trigger: Q4006Trigger4] TriggerOut")
end

return Q4006Trigger4
