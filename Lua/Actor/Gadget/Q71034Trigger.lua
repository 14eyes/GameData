require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71034Trigger = class("Q71034Trigger", GadgetActorProxy)
Q71034Trigger.defaultAlias = "Q71034Trigger"
local Q71034ClientConfig = require("Quest/Client/Q71034ClientConfig")

local mainID = Q71034ClientConfig.MainID
local actorAlias = Q71034ClientConfig.ActorAlias
local subIDs = Q71034ClientConfig.SubIDs
local npcs = Q71034ClientConfig.Npcs
local datas = Q71034ClientConfig.Datas

function Q71034Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q71034Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q71034Trigger:TriggerIn()
    print("TriggerIn")
end

function Q71034Trigger:TriggerOut()
    local Q71034ClientConfig = require("Quest/Client/Q71034ClientConfig")
    local actor = actorMgr:GetActor(Q71034ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 7103401)
    end

    self:DestroySelf()
end

return Q71034Trigger
