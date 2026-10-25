require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q60130Trigger = class("Q60130Trigger", GadgetActorProxy)
Q60130Trigger.defaultAlias = "Q60130Trigger"
local Q601ClientConfig = require("Quest/Client/Q601ClientConfig")

local this
local subIDs = Q601ClientConfig.SubIDs
local datas = Q601ClientConfig.Datas
local npcs = Q601ClientConfig.Npcs
local points = Q601ClientConfig.Points

function Q60130Trigger:OnPostDataPrepare()
    print("Q60130Trigger - OnPostDataPrepare")
    this = self
end

function Q60130Trigger:OnPostComponentPrepare()
    print("Q60130Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 601)
end

function Q60130Trigger:TriggerIn()
    print("Q60130Trigger - TriggerIn")
    actorMgr:GetActor("601"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 60130)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q60130Trigger:PreTriggerIn()
    print("Q60130Trigger - PreTriggerIn")
end

function Q60130Trigger:LightUpTriggerIn()
    print("Q60130Trigger - LightUpTriggerIn")
end

function Q60130Trigger:TriggerOut()
    print("Q60130Trigger - TriggerOut")
end

return Q60130Trigger
