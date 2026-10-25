require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102314Trigger = class("Q1102314Trigger", GadgetActorProxy)
Q1102314Trigger.defaultAlias = "Q1102314Trigger"
local Q11023ClientConfig = require("Quest/Client/Q11023ClientConfig")

local mainID = Q11023ClientConfig.MainID
local actorAlias = Q11023ClientConfig.ActorAlias
local subIDs = Q11023ClientConfig.SubIDs
local npcs = Q11023ClientConfig.Npcs
local gadgets = Q11023ClientConfig.Gadgets
local datas = Q11023ClientConfig.Datas

function Q1102314Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1102314Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(17, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1102314Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q11023ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1102314)
    end

    self:DestroySelf()
end

function Q1102314Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1102314Trigger
