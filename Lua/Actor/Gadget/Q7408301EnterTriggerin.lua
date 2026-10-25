require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408301EnterTriggerin = class("Q7408301EnterTriggerin", GadgetActorProxy)
Q7408301EnterTriggerin.defaultAlias = "Q7408301EnterTriggerin"
local Q74083ClientConfig = require("Quest/Client/Q74083ClientConfig")

local this
local subIDs = Q74083ClientConfig.SubIDs
local npcs = Q74083ClientConfig.Npcs
local points = Q74083ClientConfig.Points
local datas = Q74083ClientConfig.Datas

function Q7408301EnterTriggerin:OnPostDataPrepare()
    print("[MainId: 74083][Trigger: Q7408301EnterTriggerin] OnPostDataPrepare")
    this = self
end

function Q7408301EnterTriggerin:OnPostComponentPrepare()
    print("[MainId: 74083][Trigger: Q7408301EnterTriggerin] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(70, 60, true, {x = 0.0, y = 17.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408301EnterTriggerin:TriggerIn()
    print("[MainId: 74083][Trigger: Q7408301EnterTriggerin] TriggerIn")
    actorUtils.FinishQuestID(false, 7408301)
    this:DestroySelf()
end

function Q7408301EnterTriggerin:PreTriggerIn()
    print("[MainId: 74083][Trigger: Q7408301EnterTriggerin] PreTriggerIn")
end

function Q7408301EnterTriggerin:LightUpTriggerIn()
    print("[MainId: 74083][Trigger: Q7408301EnterTriggerin] LightUpTriggerIn")
end

function Q7408301EnterTriggerin:TriggerOut()
    print("[MainId: 74083][Trigger: Q7408301EnterTriggerin] TriggerOut")
end

return Q7408301EnterTriggerin
