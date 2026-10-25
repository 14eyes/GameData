require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41111Trigger = class("Q41111Trigger", GadgetActorProxy)
Q41111Trigger.defaultAlias = "Q41111Trigger"
local Q41111ClientConfig = require("Quest/Client/Q41111ClientConfig")

local mainID = Q41111ClientConfig.MainID
local actorAlias = Q41111ClientConfig.ActorAlias
local subIDs = Q41111ClientConfig.SubIDs
local npcs = Q41111ClientConfig.Npcs
local gadgets = Q41111ClientConfig.Gadgets
local points = Q41111ClientConfig.Points
local datas = Q41111ClientConfig.Datas

function Q41111Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41111Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER_XZ, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41111Trigger:TriggerIn()
    local Q41111ClientConfig = require("Quest/Client/Q41111ClientConfig")
    local actor = actorMgr:GetActor(Q41111ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 4111104)
    end

    self:DestroySelf()
end

function Q41111Trigger:TriggerOut()
    print("TriggerOut")
end

return Q41111Trigger
