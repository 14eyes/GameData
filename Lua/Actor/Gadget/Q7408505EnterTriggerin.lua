require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408505EnterTriggerin = class("Q7408505EnterTriggerin", GadgetActorProxy)
Q7408505EnterTriggerin.defaultAlias = "Q7408505EnterTriggerin"
local Q74085ClientConfig = require("Quest/Client/Q74085ClientConfig")

local this
local subIDs = Q74085ClientConfig.SubIDs
local npcs = Q74085ClientConfig.Npcs
local points = Q74085ClientConfig.Points
local datas = Q74085ClientConfig.Datas

function Q7408505EnterTriggerin:OnPostDataPrepare()
    print("[MainId: 74085][Trigger: Q7408505EnterTriggerin] OnPostDataPrepare")
    this = self
end

function Q7408505EnterTriggerin:OnPostComponentPrepare()
    print("[MainId: 74085][Trigger: Q7408505EnterTriggerin] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = -12.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408505EnterTriggerin:TriggerIn()
    print("[MainId: 74085][Trigger: Q7408505EnterTriggerin] TriggerIn")
    actorUtils.FinishQuestID(false, 7408505)
    this:DestroySelf()
end

function Q7408505EnterTriggerin:PreTriggerIn()
    print("[MainId: 74085][Trigger: Q7408505EnterTriggerin] PreTriggerIn")
end

function Q7408505EnterTriggerin:LightUpTriggerIn()
    print("[MainId: 74085][Trigger: Q7408505EnterTriggerin] LightUpTriggerIn")
end

function Q7408505EnterTriggerin:TriggerOut()
    print("[MainId: 74085][Trigger: Q7408505EnterTriggerin] TriggerOut")
end

return Q7408505EnterTriggerin
