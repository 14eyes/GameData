require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q702009Trigger = class("Q702009Trigger", GadgetActorProxy)
Q702009Trigger.defaultAlias = "Q702009Trigger"
local Q7020ClientConfig = require("Quest/Client/Q7020ClientConfig")

local this
local subIDs = Q7020ClientConfig.SubIDs
local datas = Q7020ClientConfig.Datas
local npcs = Q7020ClientConfig.Npcs
local points = Q7020ClientConfig.Points

function Q702009Trigger:OnPostDataPrepare()
    print("Q702009Trigger - OnPostDataPrepare")
    this = self
end

function Q702009Trigger:OnPostComponentPrepare()
    print("Q702009Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(200, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7020)
end

function Q702009Trigger:TriggerIn()
    print("Q702009Trigger - TriggerIn")
    actorMgr:GetActor("7020"):TransmitPlayerWithQuestIdByData(702008, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q702009Trigger:PreTriggerIn()
    print("Q702009Trigger - PreTriggerIn")
end

function Q702009Trigger:LightUpTriggerIn()
    print("Q702009Trigger - LightUpTriggerIn")
end

function Q702009Trigger:TriggerOut()
    print("Q702009Trigger - TriggerOut")
end

return Q702009Trigger
