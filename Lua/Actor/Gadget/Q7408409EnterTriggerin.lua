require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408409EnterTriggerin = class("Q7408409EnterTriggerin", GadgetActorProxy)
Q7408409EnterTriggerin.defaultAlias = "Q7408409EnterTriggerin"
local Q74084ClientConfig = require("Quest/Client/Q74084ClientConfig")

local this
local subIDs = Q74084ClientConfig.SubIDs
local npcs = Q74084ClientConfig.Npcs
local points = Q74084ClientConfig.Points
local datas = Q74084ClientConfig.Datas

function Q7408409EnterTriggerin:OnPostDataPrepare()
    print("[MainId: 74084][Trigger: Q7408409EnterTriggerin] OnPostDataPrepare")
    this = self
end

function Q7408409EnterTriggerin:OnPostComponentPrepare()
    print("[MainId: 74084][Trigger: Q7408409EnterTriggerin] OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408409EnterTriggerin:TriggerIn()
    print("[MainId: 74084][Trigger: Q7408409EnterTriggerin] TriggerIn")
    actorMgr:GetActor("74084"):NarratorOnlyTaskByData(datas.NarratorWithId01)
    this:DestroySelf()
end

function Q7408409EnterTriggerin:PreTriggerIn()
    print("[MainId: 74084][Trigger: Q7408409EnterTriggerin] PreTriggerIn")
end

function Q7408409EnterTriggerin:LightUpTriggerIn()
    print("[MainId: 74084][Trigger: Q7408409EnterTriggerin] LightUpTriggerIn")
end

function Q7408409EnterTriggerin:TriggerOut()
    print("[MainId: 74084][Trigger: Q7408409EnterTriggerin] TriggerOut")
end

return Q7408409EnterTriggerin
