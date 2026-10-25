require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408506EnterTriggerin = class("Q7408506EnterTriggerin", GadgetActorProxy)
Q7408506EnterTriggerin.defaultAlias = "Q7408506EnterTriggerin"
local Q74085ClientConfig = require("Quest/Client/Q74085ClientConfig")

local this
local subIDs = Q74085ClientConfig.SubIDs
local npcs = Q74085ClientConfig.Npcs
local points = Q74085ClientConfig.Points
local datas = Q74085ClientConfig.Datas

function Q7408506EnterTriggerin:OnPostDataPrepare()
    print("[MainId: 74085][Trigger: Q7408506EnterTriggerin] OnPostDataPrepare")
    this = self
end

function Q7408506EnterTriggerin:OnPostComponentPrepare()
    print("[MainId: 74085][Trigger: Q7408506EnterTriggerin] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408506EnterTriggerin:TriggerIn()
    print("[MainId: 74085][Trigger: Q7408506EnterTriggerin] TriggerIn")
    actorUtils.FinishQuestID(false, 7408506)
    this:DestroySelf()
end

function Q7408506EnterTriggerin:PreTriggerIn()
    print("[MainId: 74085][Trigger: Q7408506EnterTriggerin] PreTriggerIn")
end

function Q7408506EnterTriggerin:LightUpTriggerIn()
    print("[MainId: 74085][Trigger: Q7408506EnterTriggerin] LightUpTriggerIn")
end

function Q7408506EnterTriggerin:TriggerOut()
    print("[MainId: 74085][Trigger: Q7408506EnterTriggerin] TriggerOut")
end

return Q7408506EnterTriggerin
