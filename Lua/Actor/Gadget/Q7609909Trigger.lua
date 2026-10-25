require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609909Trigger = class("Q7609909Trigger", GadgetActorProxy)
Q7609909Trigger.defaultAlias = "Q7609909Trigger"
local Q76099ClientConfig = require("Quest/Client/Q76099ClientConfig")

local this
local subIDs = Q76099ClientConfig.SubIDs
local datas = Q76099ClientConfig.Datas
local npcs = Q76099ClientConfig.Npcs
local points = Q76099ClientConfig.Points

function Q7609909Trigger:OnPostDataPrepare()
    print("Q7609909Trigger - OnPostDataPrepare")
    this = self
end

function Q7609909Trigger:OnPostComponentPrepare()
    print("Q7609909Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76099)
end

function Q7609909Trigger:TriggerIn()
    print("Q7609909Trigger - TriggerIn")
    actorMgr:GetActor("76099"):PlayCutsceneIndex(7609909, function(arg1)
        actorUtils.FinishQuestID(false, 7609909)
        this:DestroySelf()
    end, nil, nil, false)
end

function Q7609909Trigger:PreTriggerIn()
    print("Q7609909Trigger - PreTriggerIn")
end

function Q7609909Trigger:LightUpTriggerIn()
    print("Q7609909Trigger - LightUpTriggerIn")
end

function Q7609909Trigger:TriggerOut()
    print("Q7609909Trigger - TriggerOut")
end

return Q7609909Trigger
