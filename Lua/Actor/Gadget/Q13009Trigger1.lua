require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13009Trigger1 = class("Q13009Trigger1", GadgetActorProxy)
Q13009Trigger1.defaultAlias = "Q13009Trigger1"
local Q13009ClientConfig = require("Quest/Client/Q13009ClientConfig")

local subIDs = Q13009ClientConfig.SubIDs
local npcs = Q13009ClientConfig.Npcs

function Q13009Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13009Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13009Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1300906)
    self:DestroySelf()
end

function Q13009Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q13009Trigger1
