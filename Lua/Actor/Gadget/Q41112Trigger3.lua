require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41112Trigger3 = class("Q41112Trigger3", GadgetActorProxy)
Q41112Trigger3.defaultAlias = "Q41112Trigger3"
local Q41112ClientConfig = require("Quest/Client/Q41112ClientConfig")

local mainID = Q41112ClientConfig.MainID
local actorAlias = Q41112ClientConfig.ActorAlias
local subIDs = Q41112ClientConfig.SubIDs
local npcs = Q41112ClientConfig.Npcs
local gadgets = Q41112ClientConfig.Gadgets
local datas = Q41112ClientConfig.Datas

function Q41112Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41112Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41112Trigger3:TriggerIn()
    local actor = actorMgr:GetActor(Q41112ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 4111221)
    end

    self:DestroySelf()
end

function Q41112Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q41112Trigger3
