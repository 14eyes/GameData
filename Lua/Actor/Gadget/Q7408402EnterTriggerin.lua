require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408402EnterTriggerin = class("Q7408402EnterTriggerin", GadgetActorProxy)
Q7408402EnterTriggerin.defaultAlias = "Q7408402EnterTriggerin"
local Q74084ClientConfig = require("Quest/Client/Q74084ClientConfig")

local this
local subIDs = Q74084ClientConfig.SubIDs
local npcs = Q74084ClientConfig.Npcs
local points = Q74084ClientConfig.Points
local datas = Q74084ClientConfig.Datas

function Q7408402EnterTriggerin:OnPostDataPrepare()
    print("[MainId: 74084][Trigger: Q7408402EnterTriggerin] OnPostDataPrepare")
    this = self
end

function Q7408402EnterTriggerin:OnPostComponentPrepare()
    print("[MainId: 74084][Trigger: Q7408402EnterTriggerin] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(101.0316, 200, 21.5, true, {x = 0.0, y = 0.3, z = -7.86}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408402EnterTriggerin:TriggerIn()
    print("[MainId: 74084][Trigger: Q7408402EnterTriggerin] TriggerIn")
    actorUtils.FinishQuestID(false, 7408401)
    this:DestroySelf()
end

function Q7408402EnterTriggerin:PreTriggerIn()
    print("[MainId: 74084][Trigger: Q7408402EnterTriggerin] PreTriggerIn")
end

function Q7408402EnterTriggerin:LightUpTriggerIn()
    print("[MainId: 74084][Trigger: Q7408402EnterTriggerin] LightUpTriggerIn")
end

function Q7408402EnterTriggerin:TriggerOut()
    print("[MainId: 74084][Trigger: Q7408402EnterTriggerin] TriggerOut")
end

return Q7408402EnterTriggerin
