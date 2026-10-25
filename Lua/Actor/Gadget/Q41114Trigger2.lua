require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41114Trigger2 = class("Q41114Trigger2", GadgetActorProxy)
Q41114Trigger2.defaultAlias = "Q41114Trigger2"
local Q41114ClientConfig = require("Quest/Client/Q41114ClientConfig")

local mainID = Q41114ClientConfig.MainID
local actorAlias = Q41114ClientConfig.ActorAlias
local subIDs = Q41114ClientConfig.SubIDs
local npcs = Q41114ClientConfig.Npcs
local gadgets = Q41114ClientConfig.Gadgets
local datas = Q41114ClientConfig.Datas

function Q41114Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41114Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41114Trigger2:TriggerIn()
    print("TriggerIn")
end

function Q41114Trigger2:TriggerOut()
    print("Out Q41114Trigger2")
    local actor = actorMgr:GetActor(Q41114ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 4111412)
    end

    self:DestroySelf()
end

return Q41114Trigger2
