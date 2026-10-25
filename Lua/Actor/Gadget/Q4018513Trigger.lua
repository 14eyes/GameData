require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4018513Trigger = class("Q4018513Trigger", GadgetActorProxy)
Q4018513Trigger.defaultAlias = "Q4018513Trigger"
local Q40185ClientConfig = require("Quest/Client/Q40185ClientConfig")

local this
local subIDs = Q40185ClientConfig.SubIDs
local datas = Q40185ClientConfig.Datas
local npcs = Q40185ClientConfig.Npcs
local points = Q40185ClientConfig.Points

function Q4018513Trigger:OnPostDataPrepare()
    print("Q4018513Trigger - OnPostDataPrepare")
    this = self
end

function Q4018513Trigger:OnPostComponentPrepare()
    print("Q4018513Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40185)
end

function Q4018513Trigger:TriggerIn()
    print("Q4018513Trigger - TriggerIn")
    actorMgr:GetActor("40185"):TransmitPlayerWithQuestIdByData(4018513, 1, datas.TransmitData4018408, nil, nil, nil)
end

function Q4018513Trigger:PreTriggerIn()
    print("Q4018513Trigger - PreTriggerIn")
end

function Q4018513Trigger:LightUpTriggerIn()
    print("Q4018513Trigger - LightUpTriggerIn")
end

function Q4018513Trigger:TriggerOut()
    print("Q4018513Trigger - TriggerOut")
end

return Q4018513Trigger
