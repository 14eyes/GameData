require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408302EnterTriggerin = class("Q7408302EnterTriggerin", GadgetActorProxy)
Q7408302EnterTriggerin.defaultAlias = "Q7408302EnterTriggerin"
local Q74083ClientConfig = require("Quest/Client/Q74083ClientConfig")

local this
local subIDs = Q74083ClientConfig.SubIDs
local npcs = Q74083ClientConfig.Npcs
local points = Q74083ClientConfig.Points
local datas = Q74083ClientConfig.Datas

function Q7408302EnterTriggerin:OnPostDataPrepare()
    print("[MainId: 74083][Trigger: Q7408302EnterTriggerin] OnPostDataPrepare")
    this = self
end

function Q7408302EnterTriggerin:OnPostComponentPrepare()
    print("[MainId: 74083][Trigger: Q7408302EnterTriggerin] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(30, 60, true, {x = 0.0, y = 18.5, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408302EnterTriggerin:TriggerIn()
    print("[MainId: 74083][Trigger: Q7408302EnterTriggerin] TriggerIn")
    actorUtils.FinishQuestID(false, 7408302)
    this:DestroySelf()
end

function Q7408302EnterTriggerin:PreTriggerIn()
    print("[MainId: 74083][Trigger: Q7408302EnterTriggerin] PreTriggerIn")
end

function Q7408302EnterTriggerin:LightUpTriggerIn()
    print("[MainId: 74083][Trigger: Q7408302EnterTriggerin] LightUpTriggerIn")
end

function Q7408302EnterTriggerin:TriggerOut()
    print("[MainId: 74083][Trigger: Q7408302EnterTriggerin] TriggerOut")
end

return Q7408302EnterTriggerin
