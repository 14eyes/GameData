require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8003DungeonTrigger = class("Q8003DungeonTrigger", GadgetActorProxy)
Q8003DungeonTrigger.defaultAlias = "Q8003DungeonTrigger"
local Q8003ClientConfig = require("Quest/Client/Q8003ClientConfig")

local subIDs = Q8003ClientConfig.SubIDs
local npcs = Q8003ClientConfig.Npcs
local gadgets = Q8003ClientConfig.Gadgets

function Q8003DungeonTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q8003DungeonTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q8003DungeonTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8003"):FinishQuestID(false, 800302)
    self:DestroySelf()
end

function Q8003DungeonTrigger:TriggerOut()
    print("TriggerOut")
end

return Q8003DungeonTrigger
