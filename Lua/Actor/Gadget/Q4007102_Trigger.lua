require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007102_Trigger = class("Q4007102_Trigger", GadgetActorProxy)
Q4007102_Trigger.defaultAlias = "Q4007102_Trigger"
local Q40071ClientConfig = require("Quest/Client/Q40071ClientConfig")

local subIDs = Q40071ClientConfig.SubIDs
local npcs = Q40071ClientConfig.Npcs
local datas = Q40071ClientConfig.Datas

function Q4007102_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007102_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007102_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40071")
    actor:CreateQuestNpcById(4007102, npcs.Npc1032Data.id, 1)
    actor:AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:GetActor("40071"):RequestInteraction(npcs.Npc1032Data.alias)
    end)

    self:DestroySelf()
end

function Q4007102_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007102_Trigger
