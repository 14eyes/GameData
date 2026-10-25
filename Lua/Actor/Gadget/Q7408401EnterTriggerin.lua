require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408401EnterTriggerin = class("Q7408401EnterTriggerin", GadgetActorProxy)
Q7408401EnterTriggerin.defaultAlias = "Q7408401EnterTriggerin"
local Q74084ClientConfig = require("Quest/Client/Q74084ClientConfig")

local this
local subIDs = Q74084ClientConfig.SubIDs
local npcs = Q74084ClientConfig.Npcs
local points = Q74084ClientConfig.Points
local datas = Q74084ClientConfig.Datas

function Q7408401EnterTriggerin:OnPostDataPrepare()
    print("[MainId: 74084][Trigger: Q7408401EnterTriggerin] OnPostDataPrepare")
    this = self
end

function Q7408401EnterTriggerin:OnPostComponentPrepare()
    print("[MainId: 74084][Trigger: Q7408401EnterTriggerin] OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408401EnterTriggerin:TriggerIn()
    print("[MainId: 74084][Trigger: Q7408401EnterTriggerin] TriggerIn")
    this:DestroySelf()
end

function Q7408401EnterTriggerin:PreTriggerIn()
    print("[MainId: 74084][Trigger: Q7408401EnterTriggerin] PreTriggerIn")
end

function Q7408401EnterTriggerin:LightUpTriggerIn()
    print("[MainId: 74084][Trigger: Q7408401EnterTriggerin] LightUpTriggerIn")
end

function Q7408401EnterTriggerin:TriggerOut()
    print("[MainId: 74084][Trigger: Q7408401EnterTriggerin] TriggerOut")
end

return Q7408401EnterTriggerin
