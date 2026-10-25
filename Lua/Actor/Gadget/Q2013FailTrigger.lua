require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2013FailTrigger = class("Q2013FailTrigger", GadgetActorProxy)
Q2013FailTrigger.defaultAlias = "Q2013FailTrigger"
local Q2013ClientConfig = require("Quest/Client/Q2013ClientConfig")

local mainID = Q2013ClientConfig.MainID
local actorAlias = Q2013ClientConfig.ActorAlias
local subIDs = Q2013ClientConfig.SubIDs
local npcs = Q2013ClientConfig.Npcs
local gadgets = Q2013ClientConfig.Gadgets
local datas = Q2013ClientConfig.Datas

function Q2013FailTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2013FailTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(95, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2013FailTrigger:TriggerIn()
    print("TriggerIn reqest")
end

function Q2013FailTrigger:TriggerOut()
    print("TriggerOut")
    local actor = actorMgr:GetActor(Q2013ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 201309)
    end

    self:DestroySelf()
end

return Q2013FailTrigger
