require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8003GuardianTrigger = class("Q8003GuardianTrigger", GadgetActorProxy)
Q8003GuardianTrigger.defaultAlias = "Q8003GuardianTrigger"
local Q8003ClientConfig = require("Quest/Client/Q8003ClientConfig")

local subIDs = Q8003ClientConfig.SubIDs
local npcs = Q8003ClientConfig.Npcs
local gadgets = Q8003ClientConfig.Gadgets

function Q8003GuardianTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q8003GuardianTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q8003GuardianTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8003"):FinishQuestID(false, 800306)
    self:DestroySelf()
end

function Q8003GuardianTrigger:TriggerOut()
    print("TriggerOut")
end

return Q8003GuardianTrigger
