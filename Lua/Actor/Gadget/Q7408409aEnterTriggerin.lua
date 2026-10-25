require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408409aEnterTriggerin = class("Q7408409aEnterTriggerin", GadgetActorProxy)
Q7408409aEnterTriggerin.defaultAlias = "Q7408409aEnterTriggerin"
local Q74084ClientConfig = require("Quest/Client/Q74084ClientConfig")

local this
local subIDs = Q74084ClientConfig.SubIDs
local npcs = Q74084ClientConfig.Npcs
local points = Q74084ClientConfig.Points
local datas = Q74084ClientConfig.Datas

function Q7408409aEnterTriggerin:OnPostDataPrepare()
    print("[MainId: 74084][Trigger: Q7408409aEnterTriggerin] OnPostDataPrepare")
    this = self
end

function Q7408409aEnterTriggerin:OnPostComponentPrepare()
    print("[MainId: 74084][Trigger: Q7408409aEnterTriggerin] OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408409aEnterTriggerin:TriggerIn()
    print("[MainId: 74084][Trigger: Q7408409aEnterTriggerin] TriggerIn")
    actorMgr:GetActor("74084"):NarratorOnlyTaskByData(datas.NarratorWithId01)
    this:DestroySelf()
end

function Q7408409aEnterTriggerin:PreTriggerIn()
    print("[MainId: 74084][Trigger: Q7408409aEnterTriggerin] PreTriggerIn")
end

function Q7408409aEnterTriggerin:LightUpTriggerIn()
    print("[MainId: 74084][Trigger: Q7408409aEnterTriggerin] LightUpTriggerIn")
end

function Q7408409aEnterTriggerin:TriggerOut()
    print("[MainId: 74084][Trigger: Q7408409aEnterTriggerin] TriggerOut")
end

return Q7408409aEnterTriggerin
