require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408501EnterTriggerin = class("Q7408501EnterTriggerin", GadgetActorProxy)
Q7408501EnterTriggerin.defaultAlias = "Q7408501EnterTriggerin"
local Q74085ClientConfig = require("Quest/Client/Q74085ClientConfig")

local this
local subIDs = Q74085ClientConfig.SubIDs
local npcs = Q74085ClientConfig.Npcs
local points = Q74085ClientConfig.Points
local datas = Q74085ClientConfig.Datas

function Q7408501EnterTriggerin:OnPostDataPrepare()
    print("[MainId: 74085][Trigger: Q7408501EnterTriggerin] OnPostDataPrepare")
    this = self
end

function Q7408501EnterTriggerin:OnPostComponentPrepare()
    print("[MainId: 74085][Trigger: Q7408501EnterTriggerin] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408501EnterTriggerin:TriggerIn()
    print("[MainId: 74085][Trigger: Q7408501EnterTriggerin] TriggerIn")
    actorUtils.FinishQuestID(false, 7408501)
    this:DestroySelf()
end

function Q7408501EnterTriggerin:PreTriggerIn()
    print("[MainId: 74085][Trigger: Q7408501EnterTriggerin] PreTriggerIn")
end

function Q7408501EnterTriggerin:LightUpTriggerIn()
    print("[MainId: 74085][Trigger: Q7408501EnterTriggerin] LightUpTriggerIn")
end

function Q7408501EnterTriggerin:TriggerOut()
    print("[MainId: 74085][Trigger: Q7408501EnterTriggerin] TriggerOut")
end

return Q7408501EnterTriggerin
