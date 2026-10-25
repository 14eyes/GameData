require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4009513Trigger = class("Q4009513Trigger", GadgetActorProxy)
Q4009513Trigger.defaultAlias = "Q4009513Trigger"
local Q40095ClientConfig = require("Quest/Client/Q40095ClientConfig")

local subIDs = Q40095ClientConfig.SubIDs
local npcs = Q40095ClientConfig.Npcs

function Q4009513Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4009513Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4009513Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40095"):ShowTutorialDialog(1281, function(arg1)
        actorUtils.FinishQuestID(false, 4009513)
    end)

    self:DestroySelf()
end

function Q4009513Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4009513Trigger
