require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11012Trigger = class("Q11012Trigger", GadgetActorProxy)
Q11012Trigger.defaultAlias = "Q11012Trigger"
local Q11012ClientConfig = require("Quest/Client/Q11012ClientConfig")

local mainID = Q11012ClientConfig.MainID
local actorAlias = Q11012ClientConfig.ActorAlias
local subIDs = Q11012ClientConfig.SubIDs
local npcs = Q11012ClientConfig.Npcs
local datas = Q11012ClientConfig.Datas

function Q11012Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11012Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11012Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q11012ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1101201) == 2 then
        actor:FinishQuestID(false, 1101201)
    end

    print("let 1101201 finish")
    self:DestroySelf()
end

function Q11012Trigger:TriggerOut()
    print("TriggerOut")
end

return Q11012Trigger
