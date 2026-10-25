require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73099Trigger_03 = class("Q73099Trigger_03", GadgetActorProxy)
Q73099Trigger_03.defaultAlias = "Q73099Trigger_03"
local Q73099ClientConfig = require("Quest/Client/Q73099ClientConfig")

local subIDs = Q73099ClientConfig.SubIDs
local npcs = Q73099ClientConfig.Npcs

function Q73099Trigger_03:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73099Trigger_03:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73099Trigger_03:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7309903)
    self:DestroySelf()
end

function Q73099Trigger_03:TriggerOut()
    print("TriggerOut")
end

return Q73099Trigger_03
