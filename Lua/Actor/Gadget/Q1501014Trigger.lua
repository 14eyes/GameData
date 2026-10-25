require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1501014Trigger = class("Q1501014Trigger", GadgetActorProxy)
Q1501014Trigger.defaultAlias = "Q1501014Trigger"
local Q15010ClientConfig = require("Quest/Client/Q15010ClientConfig")

local this
local subIDs = Q15010ClientConfig.SubIDs
local datas = Q15010ClientConfig.Datas
local npcs = Q15010ClientConfig.Npcs
local points = Q15010ClientConfig.Points

function Q1501014Trigger:OnPostDataPrepare()
    print("Q1501014Trigger - OnPostDataPrepare")
    this = self
end

function Q1501014Trigger:OnPostComponentPrepare()
    print("Q1501014Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15010)
end

function Q1501014Trigger:TriggerIn()
    print("Q1501014Trigger - TriggerIn")
    actorMgr:GetActor("15010"):ShowBlackScreenWithDialogText(0, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("15010"):TransmitPlayerWithDialogTextByQuestId(1501014, 5, datas.DialogIdsData, 1, nil, nil, nil)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q1501014Trigger:PreTriggerIn()
    print("Q1501014Trigger - PreTriggerIn")
end

function Q1501014Trigger:LightUpTriggerIn()
    print("Q1501014Trigger - LightUpTriggerIn")
end

function Q1501014Trigger:TriggerOut()
    print("Q1501014Trigger - TriggerOut")
end

return Q1501014Trigger
