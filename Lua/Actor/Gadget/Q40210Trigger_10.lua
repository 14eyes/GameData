require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40210Trigger_10 = class("Q40210Trigger_10", GadgetActorProxy)
Q40210Trigger_10.defaultAlias = "Q40210Trigger_10"
local Q40210ClientConfig = require("Quest/Client/Q40210ClientConfig")

local this
local subIDs = Q40210ClientConfig.SubIDs
local datas = Q40210ClientConfig.Datas
local npcs = Q40210ClientConfig.Npcs
local points = Q40210ClientConfig.Points

function Q40210Trigger_10:OnPostDataPrepare()
    print("Q40210Trigger_10 - OnPostDataPrepare")
    this = self
end

function Q40210Trigger_10:OnPostComponentPrepare()
    print("Q40210Trigger_10 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40210)
end

function Q40210Trigger_10:TriggerIn()
    print("Q40210Trigger_10 - TriggerIn")
    actorMgr:GetActor("40210"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("40210"):TransmitPlayerWithQuestIdByData(4021010, 1, datas.TransmitData, nil, nil, nil)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q40210Trigger_10:PreTriggerIn()
    print("Q40210Trigger_10 - PreTriggerIn")
end

function Q40210Trigger_10:LightUpTriggerIn()
    print("Q40210Trigger_10 - LightUpTriggerIn")
end

function Q40210Trigger_10:TriggerOut()
    print("Q40210Trigger_10 - TriggerOut")
end

return Q40210Trigger_10
