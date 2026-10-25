require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41112Trigger7 = class("Q41112Trigger7", GadgetActorProxy)
Q41112Trigger7.defaultAlias = "Q41112Trigger7"
local Q41112ClientConfig = require("Quest/Client/Q41112ClientConfig")

local mainID = Q41112ClientConfig.MainID
local actorAlias = Q41112ClientConfig.ActorAlias
local subIDs = Q41112ClientConfig.SubIDs
local npcs = Q41112ClientConfig.Npcs
local gadgets = Q41112ClientConfig.Gadgets
local datas = Q41112ClientConfig.Datas

function Q41112Trigger7:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41112Trigger7:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41112Trigger7:TriggerIn()
    local actor = actorMgr:GetActor(Q41112ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 4111204)
    end

    self:DestroySelf()
end

function Q41112Trigger7:TriggerOut()
    print("TriggerOut")
end

return Q41112Trigger7
