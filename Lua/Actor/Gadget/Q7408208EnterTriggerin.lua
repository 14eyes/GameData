require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408208EnterTriggerin = class("Q7408208EnterTriggerin", GadgetActorProxy)
Q7408208EnterTriggerin.defaultAlias = "Q7408208EnterTriggerin"
local Q74082ClientConfig = require("Quest/Client/Q74082ClientConfig")

local this
local subIDs = Q74082ClientConfig.SubIDs
local npcs = Q74082ClientConfig.Npcs
local points = Q74082ClientConfig.Points
local datas = Q74082ClientConfig.Datas

function Q7408208EnterTriggerin:OnPostDataPrepare()
    print("[MainId: 74082][Trigger: Q7408208EnterTriggerin] OnPostDataPrepare")
    this = self
end

function Q7408208EnterTriggerin:OnPostComponentPrepare()
    print("[MainId: 74082][Trigger: Q7408208EnterTriggerin] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(131, 111, 44.5, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408208EnterTriggerin:TriggerIn()
    print("[MainId: 74082][Trigger: Q7408208EnterTriggerin] TriggerIn")
    actorMgr:GetActor("74082"):NarratorOnlyTaskByData(datas.NarratorWithId08)
    this:DestroySelf()
end

function Q7408208EnterTriggerin:PreTriggerIn()
    print("[MainId: 74082][Trigger: Q7408208EnterTriggerin] PreTriggerIn")
end

function Q7408208EnterTriggerin:LightUpTriggerIn()
    print("[MainId: 74082][Trigger: Q7408208EnterTriggerin] LightUpTriggerIn")
end

function Q7408208EnterTriggerin:TriggerOut()
    print("[MainId: 74082][Trigger: Q7408208EnterTriggerin] TriggerOut")
end

return Q7408208EnterTriggerin
