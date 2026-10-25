require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70008Trigger = class("Q70008Trigger", GadgetActorProxy)
Q70008Trigger.defaultAlias = "Q70008Trigger"
local Q70008ClientConfig = require("Quest/Client/Q70008ClientConfig")

local mainID = Q70008ClientConfig.MainID
local actorAlias = Q70008ClientConfig.ActorAlias
local subIDs = Q70008ClientConfig.SubIDs
local npcs = Q70008ClientConfig.Npcs
local gadgets = Q70008ClientConfig.Gadgets
local datas = Q70008ClientConfig.Datas

function Q70008Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70008Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70008Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q70008ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 7000802)
    end

    self:DestroySelf()
end

function Q70008Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70008Trigger
