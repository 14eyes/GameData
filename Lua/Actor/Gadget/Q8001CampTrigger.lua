require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8001CampTrigger = class("Q8001CampTrigger", GadgetActorProxy)
Q8001CampTrigger.defaultAlias = "Q8001CampTrigger"
local Q8001ClientConfig = require("Quest/Client/Q8001ClientConfig")

local subIDs = Q8001ClientConfig.SubIDs
local npcs = Q8001ClientConfig.Npcs
local gadgets = Q8001ClientConfig.Gadgets

function Q8001CampTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q8001CampTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q8001CampTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8001"):FinishQuestID(false, 800109)
    self:DestroySelf()
end

function Q8001CampTrigger:TriggerOut()
    print("TriggerOut")
end

return Q8001CampTrigger
