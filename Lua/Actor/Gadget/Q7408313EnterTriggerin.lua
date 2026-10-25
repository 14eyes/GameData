require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408313EnterTriggerin = class("Q7408313EnterTriggerin", GadgetActorProxy)
Q7408313EnterTriggerin.defaultAlias = "Q7408313EnterTriggerin"
local Q74083ClientConfig = require("Quest/Client/Q74083ClientConfig")

local this
local subIDs = Q74083ClientConfig.SubIDs
local npcs = Q74083ClientConfig.Npcs
local points = Q74083ClientConfig.Points
local datas = Q74083ClientConfig.Datas

function Q7408313EnterTriggerin:OnPostDataPrepare()
    print("[MainId: 74083][Trigger: Q7408313EnterTriggerin] OnPostDataPrepare")
    this = self
end

function Q7408313EnterTriggerin:OnPostComponentPrepare()
    print("[MainId: 74083][Trigger: Q7408313EnterTriggerin] OnPostComponentPrepare")
    this:AddComponentTrigger(43, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408313EnterTriggerin:TriggerIn()
    print("[MainId: 74083][Trigger: Q7408313EnterTriggerin] TriggerIn")
    actorUtils.FinishQuestID(false, 7408313)
    this:DestroySelf()
end

function Q7408313EnterTriggerin:PreTriggerIn()
    print("[MainId: 74083][Trigger: Q7408313EnterTriggerin] PreTriggerIn")
end

function Q7408313EnterTriggerin:LightUpTriggerIn()
    print("[MainId: 74083][Trigger: Q7408313EnterTriggerin] LightUpTriggerIn")
end

function Q7408313EnterTriggerin:TriggerOut()
    print("[MainId: 74083][Trigger: Q7408313EnterTriggerin] TriggerOut")
end

return Q7408313EnterTriggerin
