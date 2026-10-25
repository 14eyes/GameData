require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41312Trigger4 = class("Q41312Trigger4", GadgetActorProxy)
Q41312Trigger4.defaultAlias = "Q41312Trigger4"
local Q41312ClientConfig = require("Quest/Client/Q41312ClientConfig")

local mainID = Q41312ClientConfig.MainID
local actorAlias = Q41312ClientConfig.ActorAlias
local subIDs = Q41312ClientConfig.SubIDs
local npcs = Q41312ClientConfig.Npcs
local gadgets = Q41312ClientConfig.Gadgets
local datas = Q41312ClientConfig.Datas

function Q41312Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41312Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41312Trigger4:TriggerIn()
    print("Q41312Trigger3:TriggerIn")
    local Q41312ClientConfig = require("Quest/Client/Q41312ClientConfig")
    local actor = actorMgr:GetActor(Q41312ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 4131207)
    end

    self:DestroySelf()
end

function Q41312Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q41312Trigger4
