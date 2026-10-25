require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408203EnterTriggerin = class("Q7408203EnterTriggerin", GadgetActorProxy)
Q7408203EnterTriggerin.defaultAlias = "Q7408203EnterTriggerin"
local Q74082ClientConfig = require("Quest/Client/Q74082ClientConfig")

local this
local subIDs = Q74082ClientConfig.SubIDs
local npcs = Q74082ClientConfig.Npcs
local points = Q74082ClientConfig.Points
local datas = Q74082ClientConfig.Datas

function Q7408203EnterTriggerin:OnPostDataPrepare()
    print("[MainId: 74082][Trigger: Q7408203EnterTriggerin] OnPostDataPrepare")
    this = self
end

function Q7408203EnterTriggerin:OnPostComponentPrepare()
    print("[MainId: 74082][Trigger: Q7408203EnterTriggerin] OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408203EnterTriggerin:TriggerIn()
    print("[MainId: 74082][Trigger: Q7408203EnterTriggerin] TriggerIn")
    actorUtils.FinishQuestID(false, 7408202)
    this:DestroySelf()
end

function Q7408203EnterTriggerin:PreTriggerIn()
    print("[MainId: 74082][Trigger: Q7408203EnterTriggerin] PreTriggerIn")
end

function Q7408203EnterTriggerin:LightUpTriggerIn()
    print("[MainId: 74082][Trigger: Q7408203EnterTriggerin] LightUpTriggerIn")
end

function Q7408203EnterTriggerin:TriggerOut()
    print("[MainId: 74082][Trigger: Q7408203EnterTriggerin] TriggerOut")
end

return Q7408203EnterTriggerin
