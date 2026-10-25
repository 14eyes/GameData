require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102301Trigger = class("Q1102301Trigger", GadgetActorProxy)
Q1102301Trigger.defaultAlias = "Q1102301Trigger"
local Q11023ClientConfig = require("Quest/Client/Q11023ClientConfig")

local mainID = Q11023ClientConfig.MainID
local actorAlias = Q11023ClientConfig.ActorAlias
local subIDs = Q11023ClientConfig.SubIDs
local npcs = Q11023ClientConfig.Npcs
local gadgets = Q11023ClientConfig.Gadgets
local datas = Q11023ClientConfig.Datas

function Q1102301Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1102301Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1102301Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q11023ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 11023)
    end

    print("11023 narrator 01 ")
    self:DestroySelf()
end

function Q1102301Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1102301Trigger
