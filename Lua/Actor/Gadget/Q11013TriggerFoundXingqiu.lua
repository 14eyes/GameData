require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11013TriggerFoundXingqiu = class("Q11013TriggerFoundXingqiu", GadgetActorProxy)
Q11013TriggerFoundXingqiu.defaultAlias = "Q11013TriggerFoundXingqiu"
local Q11013ClientConfig = require("Quest/Client/Q11013ClientConfig")

local subIDs = Q11013ClientConfig.SubIDs
local npcs = Q11013ClientConfig.Npcs

function Q11013TriggerFoundXingqiu:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11013TriggerFoundXingqiu:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn)
end

function Q11013TriggerFoundXingqiu:TriggerIn()
    print("TriggerIn")
    print("TriggerIn")
    local actor = actorMgr:GetActor(Q11013ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1101302) == 2 then
        actor:FinishQuestID(false, 1101302)
    end

    self:DestroySelf()
end

function Q11013TriggerFoundXingqiu:TriggerOut()
    print("TriggerOut")
end

return Q11013TriggerFoundXingqiu
