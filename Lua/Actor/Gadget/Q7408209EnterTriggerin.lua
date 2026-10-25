require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408209EnterTriggerin = class("Q7408209EnterTriggerin", GadgetActorProxy)
Q7408209EnterTriggerin.defaultAlias = "Q7408209EnterTriggerin"
local Q74082ClientConfig = require("Quest/Client/Q74082ClientConfig")

local this
local subIDs = Q74082ClientConfig.SubIDs
local npcs = Q74082ClientConfig.Npcs
local points = Q74082ClientConfig.Points
local datas = Q74082ClientConfig.Datas

function Q7408209EnterTriggerin:OnPostDataPrepare()
    print("[MainId: 74082][Trigger: Q7408209EnterTriggerin] OnPostDataPrepare")
    this = self
end

function Q7408209EnterTriggerin:OnPostComponentPrepare()
    print("[MainId: 74082][Trigger: Q7408209EnterTriggerin] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(131, 111, 44.5, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408209EnterTriggerin:TriggerIn()
    print("[MainId: 74082][Trigger: Q7408209EnterTriggerin] TriggerIn")
    actorUtils.FinishQuestID(false, 7408209)
    this:DestroySelf()
end

function Q7408209EnterTriggerin:PreTriggerIn()
    print("[MainId: 74082][Trigger: Q7408209EnterTriggerin] PreTriggerIn")
end

function Q7408209EnterTriggerin:LightUpTriggerIn()
    print("[MainId: 74082][Trigger: Q7408209EnterTriggerin] LightUpTriggerIn")
end

function Q7408209EnterTriggerin:TriggerOut()
    print("[MainId: 74082][Trigger: Q7408209EnterTriggerin] TriggerOut")
end

return Q7408209EnterTriggerin
