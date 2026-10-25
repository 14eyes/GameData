require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71033Trigger1 = class("Q71033Trigger1", GadgetActorProxy)
Q71033Trigger1.defaultAlias = "Q71033Trigger1"
local Q71033ClientConfig = require("Quest/Client/Q71033ClientConfig")

local mainID = Q71033ClientConfig.MainID
local actorAlias = Q71033ClientConfig.ActorAlias
local subIDs = Q71033ClientConfig.SubIDs
local npcs = Q71033ClientConfig.Npcs
local gadgets = Q71033ClientConfig.Gadgets
local datas = Q71033ClientConfig.Datas

function Q71033Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q71033Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q71033Trigger1:TriggerIn()
    print("Q7103302Trigger1:TriggerIn")
    local Q71033ClientConfig = require("Quest/Client/Q71033ClientConfig")
    local actor = actorMgr:GetActor(Q71033ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 7103302)
    end

    self:DestroySelf()
end

function Q71033Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q71033Trigger1
