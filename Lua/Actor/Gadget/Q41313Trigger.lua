require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41313Trigger = class("Q41313Trigger", GadgetActorProxy)
Q41313Trigger.defaultAlias = "Q41313Trigger"
local Q41313ClientConfig = require("Quest/Client/Q41313ClientConfig")

local mainID = Q41313ClientConfig.MainID
local actorAlias = Q41313ClientConfig.ActorAlias
local subIDs = Q41313ClientConfig.SubIDs
local npcs = Q41313ClientConfig.Npcs
local gadgets = Q41313ClientConfig.Gadgets
local datas = Q41313ClientConfig.Datas

function Q41313Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41313Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41313Trigger:TriggerIn()
    print("Q41313Trigger1:TriggerIn")
    local Q41313ClientConfig = require("Quest/Client/Q41313ClientConfig")
    local actor = actorMgr:GetActor(Q41313ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 4131301)
    end

    self:DestroySelf()
end

function Q41313Trigger:TriggerOut()
    print("TriggerOut")
end

return Q41313Trigger
