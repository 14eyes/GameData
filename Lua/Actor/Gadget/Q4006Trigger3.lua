require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006Trigger3 = class("Q4006Trigger3", GadgetActorProxy)
Q4006Trigger3.defaultAlias = "Q4006Trigger3"
local Q4006ClientConfig = require("Quest/Client/Q4006ClientConfig")

local this
local subIDs = Q4006ClientConfig.SubIDs
local npcs = Q4006ClientConfig.Npcs
local points = Q4006ClientConfig.Points
local datas = Q4006ClientConfig.Datas

function Q4006Trigger3:OnPostDataPrepare()
    print("[MainId: 4006][Trigger: Q4006Trigger3] OnPostDataPrepare")
    this = self
end

function Q4006Trigger3:OnPostComponentPrepare()
    print("[MainId: 4006][Trigger: Q4006Trigger3] OnPostComponentPrepare")
    this:AddComponentTrigger(130, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4006Trigger3:TriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger3] TriggerIn")
    actorUtils.FinishQuestID(false, 400619)
    this:DestroySelf()
end

function Q4006Trigger3:PreTriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger3] PreTriggerIn")
end

function Q4006Trigger3:LightUpTriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger3] LightUpTriggerIn")
end

function Q4006Trigger3:TriggerOut()
    print("[MainId: 4006][Trigger: Q4006Trigger3] TriggerOut")
end

return Q4006Trigger3
