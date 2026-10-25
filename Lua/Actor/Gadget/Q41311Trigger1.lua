require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41311Trigger1 = class("Q41311Trigger1", GadgetActorProxy)
Q41311Trigger1.defaultAlias = "Q41311Trigger1"
local Q41311ClientConfig = require("Quest/Client/Q41311ClientConfig")

local mainID = Q41311ClientConfig.MainID
local actorAlias = Q41311ClientConfig.ActorAlias
local subIDs = Q41311ClientConfig.SubIDs
local npcs = Q41311ClientConfig.Npcs
local datas = Q41311ClientConfig.Datas

function Q41311Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41311Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41311Trigger1:TriggerIn()
    print("Q41311Trigger1:TriggerIn")
    local Q41311ClientConfig = require("Quest/Client/Q41311ClientConfig")
    local actor = actorMgr:GetActor(Q41311ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 4131102)
    end

    self:DestroySelf()
end

function Q41311Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q41311Trigger1
