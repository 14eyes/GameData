require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70009Trigger = class("Q70009Trigger", GadgetActorProxy)
Q70009Trigger.defaultAlias = "Q70009Trigger"
local Q70009ClientConfig = require("Quest/Client/Q70009ClientConfig")

local mainID = Q70009ClientConfig.MainID
local actorAlias = Q70009ClientConfig.ActorAlias
local subIDs = Q70009ClientConfig.SubIDs
local npcs = Q70009ClientConfig.Npcs
local datas = Q70009ClientConfig.Datas

function Q70009Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70009Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(23, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70009Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q70009ClientConfig.ActorAlias)
    if actor:GetSubQuestState(7000905) == 2 then
        actor:FinishQuestID(false, 7000905)
    end

    print("trigger in let 7000905 finish")
    self:DestroySelf()
end

function Q70009Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70009Trigger
