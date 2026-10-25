require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602410Trigger = class("Q602410Trigger", GadgetActorProxy)
Q602410Trigger.defaultAlias = "Q602410Trigger"
local Q6024ClientConfig = require("Quest/Client/Q6024ClientConfig")

local this
local subIDs = Q6024ClientConfig.SubIDs
local datas = Q6024ClientConfig.Datas
local npcs = Q6024ClientConfig.Npcs
local points = Q6024ClientConfig.Points

function Q602410Trigger:OnPostDataPrepare()
    print("Q602410Trigger - OnPostDataPrepare")
    this = self
end

function Q602410Trigger:OnPostComponentPrepare()
    print("Q602410Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(180, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6024)
end

function Q602410Trigger:TriggerIn()
    print("Q602410Trigger - TriggerIn")
    actorMgr:GetActor("6024"):TransmitPlayerWithQuestIdByData(602410, 1, datas.TransmitData_1, nil, nil, nil)
    this:DestroySelf()
end

function Q602410Trigger:PreTriggerIn()
    print("Q602410Trigger - PreTriggerIn")
end

function Q602410Trigger:LightUpTriggerIn()
    print("Q602410Trigger - LightUpTriggerIn")
end

function Q602410Trigger:TriggerOut()
    print("Q602410Trigger - TriggerOut")
end

return Q602410Trigger
