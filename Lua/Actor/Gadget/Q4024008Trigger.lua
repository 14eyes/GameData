require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4024008Trigger = class("Q4024008Trigger", GadgetActorProxy)
Q4024008Trigger.defaultAlias = "Q4024008Trigger"
local Q40240ClientConfig = require("Quest/Client/Q40240ClientConfig")

local this
local subIDs = Q40240ClientConfig.SubIDs
local datas = Q40240ClientConfig.Datas
local npcs = Q40240ClientConfig.Npcs
local points = Q40240ClientConfig.Points

function Q4024008Trigger:OnPostDataPrepare()
    print("Q4024008Trigger - OnPostDataPrepare")
    this = self
end

function Q4024008Trigger:OnPostComponentPrepare()
    print("Q4024008Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40240)
end

function Q4024008Trigger:TriggerIn()
    print("Q4024008Trigger - TriggerIn")
    actorMgr:GetActor("40240"):ShowBlackScreenWithDialogText(0.5, 1, 0, function(arg1)
        actorMgr:GetActor("40240"):TransmitPlayerWithQuestIdByData(4024008, 1, datas.TransmitData03, nil, nil, nil)
    end, nil, nil, 0, false, true)
end

function Q4024008Trigger:PreTriggerIn()
    print("Q4024008Trigger - PreTriggerIn")
end

function Q4024008Trigger:LightUpTriggerIn()
    print("Q4024008Trigger - LightUpTriggerIn")
end

function Q4024008Trigger:TriggerOut()
    print("Q4024008Trigger - TriggerOut")
end

return Q4024008Trigger
