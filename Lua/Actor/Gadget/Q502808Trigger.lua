require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502808Trigger = class("Q502808Trigger", GadgetActorProxy)
Q502808Trigger.defaultAlias = "Q502808Trigger"
local Q5028ClientConfig = require("Quest/Client/Q5028ClientConfig")

local this
local subIDs = Q5028ClientConfig.SubIDs
local datas = Q5028ClientConfig.Datas
local npcs = Q5028ClientConfig.Npcs
local points = Q5028ClientConfig.Points

function Q502808Trigger:OnPostDataPrepare()
    print("Q502808Trigger - OnPostDataPrepare")
    this = self
end

function Q502808Trigger:OnPostComponentPrepare()
    print("Q502808Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5028)
end

function Q502808Trigger:TriggerIn()
    print("Q502808Trigger - TriggerIn")
    actorMgr:GetActor("5028"):TransmitPlayerWithQuestIdByData(502808, 1, datas.TransmitDatablack, nil, nil, nil)
end

function Q502808Trigger:PreTriggerIn()
    print("Q502808Trigger - PreTriggerIn")
end

function Q502808Trigger:LightUpTriggerIn()
    print("Q502808Trigger - LightUpTriggerIn")
end

function Q502808Trigger:TriggerOut()
    print("Q502808Trigger - TriggerOut")
end

return Q502808Trigger
