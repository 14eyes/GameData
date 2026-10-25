require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q800708_TriggerOut = class("Q800708_TriggerOut", GadgetActorProxy)
Q800708_TriggerOut.defaultAlias = "Q800708_TriggerOut"
local Q8007ClientConfig = require("Quest/Client/Q8007ClientConfig")

local subIDs = Q8007ClientConfig.SubIDs
local npcs = Q8007ClientConfig.Npcs
local gadgets = Q8007ClientConfig.Gadgets
local datas = Q8007ClientConfig.Datas

function Q800708_TriggerOut:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q800708_TriggerOut:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(110, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q800708_TriggerOut:TriggerIn()
    print("TriggerIn")
end

function Q800708_TriggerOut:TriggerOut()
    print("TriggerOut")
    local actor = actorMgr:GetActor("8007")
    local n = actor:GetQuestVar(800708, 0) + 1
    print("QuestVar = ", n)
    actor:TransmitPlayerByQuestId(800708, n)
end

return Q800708_TriggerOut
