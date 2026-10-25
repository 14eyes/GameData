require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408509EnterTriggerin = class("Q7408509EnterTriggerin", GadgetActorProxy)
Q7408509EnterTriggerin.defaultAlias = "Q7408509EnterTriggerin"
local Q74085ClientConfig = require("Quest/Client/Q74085ClientConfig")

local this
local subIDs = Q74085ClientConfig.SubIDs
local npcs = Q74085ClientConfig.Npcs
local points = Q74085ClientConfig.Points
local datas = Q74085ClientConfig.Datas

function Q7408509EnterTriggerin:OnPostDataPrepare()
    print("[MainId: 74085][Trigger: Q7408509EnterTriggerin] OnPostDataPrepare")
    this = self
end

function Q7408509EnterTriggerin:OnPostComponentPrepare()
    print("[MainId: 74085][Trigger: Q7408509EnterTriggerin] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408509EnterTriggerin:TriggerIn()
    print("[MainId: 74085][Trigger: Q7408509EnterTriggerin] TriggerIn")
    actorUtils.FinishQuestID(false, 7408509)
    this:DestroySelf()
end

function Q7408509EnterTriggerin:PreTriggerIn()
    print("[MainId: 74085][Trigger: Q7408509EnterTriggerin] PreTriggerIn")
end

function Q7408509EnterTriggerin:LightUpTriggerIn()
    print("[MainId: 74085][Trigger: Q7408509EnterTriggerin] LightUpTriggerIn")
end

function Q7408509EnterTriggerin:TriggerOut()
    print("[MainId: 74085][Trigger: Q7408509EnterTriggerin] TriggerOut")
end

return Q7408509EnterTriggerin
