require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2012FollowFailTrigger = class("Q2012FollowFailTrigger", GadgetActorProxy)
Q2012FollowFailTrigger.defaultAlias = "Q2012FollowFailTrigger"
local Q2012ClientConfig = require("Quest/Client/Q2012ClientConfig")

local mainID = Q2012ClientConfig.MainID
local actorAlias = Q2012ClientConfig.ActorAlias
local subIDs = Q2012ClientConfig.SubIDs
local npcs = Q2012ClientConfig.Npcs
local gadgets = Q2012ClientConfig.Gadgets
local datas = Q2012ClientConfig.Datas

function Q2012FollowFailTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2012FollowFailTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2012FollowFailTrigger:TriggerIn()
    print("TriggerIn reqest")
end

function Q2012FollowFailTrigger:TriggerOut()
    print("TriggerOut")
    local actor = actorMgr:GetActor(Q2012ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 201207)
    end

    self:DestroySelf()
end

return Q2012FollowFailTrigger
