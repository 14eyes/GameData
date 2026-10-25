require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102107Trigger = class("Q1102107Trigger", GadgetActorProxy)
Q1102107Trigger.defaultAlias = "Q1102107Trigger"
local Q11021ClientConfig = require("Quest/Client/Q11021ClientConfig")

local mainID = Q11021ClientConfig.MainID
local actorAlias = Q11021ClientConfig.ActorAlias
local subIDs = Q11021ClientConfig.SubIDs
local npcs = Q11021ClientConfig.Npcs
local gadgets = Q11021ClientConfig.Gadgets
local datas = Q11021ClientConfig.Datas

function Q1102107Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1102107Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1102107Trigger:TriggerIn()
    print("In 1102107")
    local actor = actorMgr:GetActor(Q11021ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1102107)
    end

    self:DestroySelf()
end

function Q1102107Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1102107Trigger
