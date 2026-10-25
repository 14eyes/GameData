require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41312Trigger5 = class("Q41312Trigger5", GadgetActorProxy)
Q41312Trigger5.defaultAlias = "Q41312Trigger5"
local Q41312ClientConfig = require("Quest/Client/Q41312ClientConfig")

local mainID = Q41312ClientConfig.MainID
local actorAlias = Q41312ClientConfig.ActorAlias
local subIDs = Q41312ClientConfig.SubIDs
local npcs = Q41312ClientConfig.Npcs
local gadgets = Q41312ClientConfig.Gadgets
local datas = Q41312ClientConfig.Datas

function Q41312Trigger5:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41312Trigger5:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41312Trigger5:TriggerIn()
    print("TriggerIn")
end

function Q41312Trigger5:TriggerOut()
    print("Q41312Trigger5:TriggerOut")
    local Q41312ClientConfig = require("Quest/Client/Q41312ClientConfig")
    local actor = actorMgr:GetActor(Q41312ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 4131227)
    end

    self:DestroySelf()
end

return Q41312Trigger5
