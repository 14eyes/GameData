require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7665108Trigger = class("Q7665108Trigger", GadgetActorProxy)
Q7665108Trigger.defaultAlias = "Q7665108Trigger"
local Q76651ClientConfig = require("Quest/Client/Q76651ClientConfig")

local this
local subIDs = Q76651ClientConfig.SubIDs
local datas = Q76651ClientConfig.Datas
local npcs = Q76651ClientConfig.Npcs
local points = Q76651ClientConfig.Points

function Q7665108Trigger:OnPostDataPrepare()
    print("Q7665108Trigger - OnPostDataPrepare")
    this = self
end

function Q7665108Trigger:OnPostComponentPrepare()
    print("Q7665108Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76651)
end

function Q7665108Trigger:TriggerIn()
    print("Q7665108Trigger - TriggerIn")
    actorMgr:GetActor("76651"):ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 7665108)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q7665108Trigger:PreTriggerIn()
    print("Q7665108Trigger - PreTriggerIn")
end

function Q7665108Trigger:LightUpTriggerIn()
    print("Q7665108Trigger - LightUpTriggerIn")
end

function Q7665108Trigger:TriggerOut()
    print("Q7665108Trigger - TriggerOut")
end

return Q7665108Trigger
