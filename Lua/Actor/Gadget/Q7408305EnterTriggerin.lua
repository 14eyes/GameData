require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408305EnterTriggerin = class("Q7408305EnterTriggerin", GadgetActorProxy)
Q7408305EnterTriggerin.defaultAlias = "Q7408305EnterTriggerin"
local Q74083ClientConfig = require("Quest/Client/Q74083ClientConfig")

local this
local subIDs = Q74083ClientConfig.SubIDs
local npcs = Q74083ClientConfig.Npcs
local points = Q74083ClientConfig.Points
local datas = Q74083ClientConfig.Datas

function Q7408305EnterTriggerin:OnPostDataPrepare()
    print("[MainId: 74083][Trigger: Q7408305EnterTriggerin] OnPostDataPrepare")
    this = self
end

function Q7408305EnterTriggerin:OnPostComponentPrepare()
    print("[MainId: 74083][Trigger: Q7408305EnterTriggerin] OnPostComponentPrepare")
    this:AddComponentTrigger(43, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408305EnterTriggerin:TriggerIn()
    print("[MainId: 74083][Trigger: Q7408305EnterTriggerin] TriggerIn")
    actorUtils.FinishQuestID(false, 7408305)
    this:DestroySelf()
end

function Q7408305EnterTriggerin:PreTriggerIn()
    print("[MainId: 74083][Trigger: Q7408305EnterTriggerin] PreTriggerIn")
end

function Q7408305EnterTriggerin:LightUpTriggerIn()
    print("[MainId: 74083][Trigger: Q7408305EnterTriggerin] LightUpTriggerIn")
end

function Q7408305EnterTriggerin:TriggerOut()
    print("[MainId: 74083][Trigger: Q7408305EnterTriggerin] TriggerOut")
end

return Q7408305EnterTriggerin
