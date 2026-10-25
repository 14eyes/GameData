require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501245Trigger = class("Q501245Trigger", GadgetActorProxy)
Q501245Trigger.defaultAlias = "Q501245Trigger"
local Q5012ClientConfig = require("Quest/Client/Q5012ClientConfig")

local this
local subIDs = Q5012ClientConfig.SubIDs
local datas = Q5012ClientConfig.Datas
local npcs = Q5012ClientConfig.Npcs
local points = Q5012ClientConfig.Points

function Q501245Trigger:OnPostDataPrepare()
    print("Q501245Trigger - OnPostDataPrepare")
    this = self
end

function Q501245Trigger:OnPostComponentPrepare()
    print("Q501245Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(75, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5012)
end

function Q501245Trigger:TriggerIn()
    print("Q501245Trigger - TriggerIn")
    actorMgr:GetActor("5012"):LevelLoadFinishSafeCall(function(arg1)
        actorMgr:GetActor("5012"):TransmitPlayerWithQuestIdByData(501245, 1, datas.TransmitData_Ballon, nil, nil, nil)
    end)

    this:DestroySelf()
end

function Q501245Trigger:PreTriggerIn()
    print("Q501245Trigger - PreTriggerIn")
end

function Q501245Trigger:LightUpTriggerIn()
    print("Q501245Trigger - LightUpTriggerIn")
end

function Q501245Trigger:TriggerOut()
    print("Q501245Trigger - TriggerOut")
end

return Q501245Trigger
