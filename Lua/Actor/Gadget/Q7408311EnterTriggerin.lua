require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408311EnterTriggerin = class("Q7408311EnterTriggerin", GadgetActorProxy)
Q7408311EnterTriggerin.defaultAlias = "Q7408311EnterTriggerin"
local Q74083ClientConfig = require("Quest/Client/Q74083ClientConfig")

local this
local subIDs = Q74083ClientConfig.SubIDs
local npcs = Q74083ClientConfig.Npcs
local points = Q74083ClientConfig.Points
local datas = Q74083ClientConfig.Datas

function Q7408311EnterTriggerin:OnPostDataPrepare()
    print("[MainId: 74083][Trigger: Q7408311EnterTriggerin] OnPostDataPrepare")
    this = self
end

function Q7408311EnterTriggerin:OnPostComponentPrepare()
    print("[MainId: 74083][Trigger: Q7408311EnterTriggerin] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(70, 60, true, {x = 0.0, y = 17.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408311EnterTriggerin:TriggerIn()
    print("[MainId: 74083][Trigger: Q7408311EnterTriggerin] TriggerIn")
    actorUtils.FinishQuestID(false, 7408311)
    this:DestroySelf()
end

function Q7408311EnterTriggerin:PreTriggerIn()
    print("[MainId: 74083][Trigger: Q7408311EnterTriggerin] PreTriggerIn")
end

function Q7408311EnterTriggerin:LightUpTriggerIn()
    print("[MainId: 74083][Trigger: Q7408311EnterTriggerin] LightUpTriggerIn")
end

function Q7408311EnterTriggerin:TriggerOut()
    print("[MainId: 74083][Trigger: Q7408311EnterTriggerin] TriggerOut")
end

return Q7408311EnterTriggerin
