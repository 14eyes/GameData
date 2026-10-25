require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41114Trigger = class("Q41114Trigger", GadgetActorProxy)
Q41114Trigger.defaultAlias = "Q41114Trigger"
local Q41114ClientConfig = require("Quest/Client/Q41114ClientConfig")

local mainID = Q41114ClientConfig.MainID
local actorAlias = Q41114ClientConfig.ActorAlias
local subIDs = Q41114ClientConfig.SubIDs
local npcs = Q41114ClientConfig.Npcs
local gadgets = Q41114ClientConfig.Gadgets
local datas = Q41114ClientConfig.Datas

function Q41114Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41114Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41114Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q41114ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 4111410)
    end

    self:DestroySelf()
end

function Q41114Trigger:TriggerOut()
    print("TriggerOut")
end

return Q41114Trigger
