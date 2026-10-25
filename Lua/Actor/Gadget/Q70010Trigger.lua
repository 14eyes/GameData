require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70010Trigger = class("Q70010Trigger", GadgetActorProxy)
Q70010Trigger.defaultAlias = "Q70010Trigger"
local Q70010ClientConfig = require("Quest/Client/Q70010ClientConfig")

local mainID = Q70010ClientConfig.MainID
local actorAlias = Q70010ClientConfig.ActorAlias
local subIDs = Q70010ClientConfig.SubIDs
local npcs = Q70010ClientConfig.Npcs
local datas = Q70010ClientConfig.Datas

function Q70010Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70010Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(43, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70010Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q70010ClientConfig.ActorAlias)
    if actor:GetSubQuestState(7001010) == 2 then
        actor:FinishQuestID(false, 7001010)
    end

    print("trigger in let 7001010 finish")
    self:DestroySelf()
end

function Q70010Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70010Trigger
