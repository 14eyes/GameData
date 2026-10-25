require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408306EnterTriggerin = class("Q7408306EnterTriggerin", GadgetActorProxy)
Q7408306EnterTriggerin.defaultAlias = "Q7408306EnterTriggerin"
local Q74083ClientConfig = require("Quest/Client/Q74083ClientConfig")

local this
local subIDs = Q74083ClientConfig.SubIDs
local npcs = Q74083ClientConfig.Npcs
local points = Q74083ClientConfig.Points
local datas = Q74083ClientConfig.Datas

function Q7408306EnterTriggerin:OnPostDataPrepare()
    print("[MainId: 74083][Trigger: Q7408306EnterTriggerin] OnPostDataPrepare")
    this = self
end

function Q7408306EnterTriggerin:OnPostComponentPrepare()
    print("[MainId: 74083][Trigger: Q7408306EnterTriggerin] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408306EnterTriggerin:TriggerIn()
    print("[MainId: 74083][Trigger: Q7408306EnterTriggerin] TriggerIn")
    actorUtils.FinishQuestID(false, 7408306)
    this:DestroySelf()
end

function Q7408306EnterTriggerin:PreTriggerIn()
    print("[MainId: 74083][Trigger: Q7408306EnterTriggerin] PreTriggerIn")
end

function Q7408306EnterTriggerin:LightUpTriggerIn()
    print("[MainId: 74083][Trigger: Q7408306EnterTriggerin] LightUpTriggerIn")
end

function Q7408306EnterTriggerin:TriggerOut()
    print("[MainId: 74083][Trigger: Q7408306EnterTriggerin] TriggerOut")
end

return Q7408306EnterTriggerin
