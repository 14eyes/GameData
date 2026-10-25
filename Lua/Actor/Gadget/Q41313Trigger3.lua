require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41313Trigger3 = class("Q41313Trigger3", GadgetActorProxy)
Q41313Trigger3.defaultAlias = "Q41313Trigger3"
local Q41313ClientConfig = require("Quest/Client/Q41313ClientConfig")

local mainID = Q41313ClientConfig.MainID
local actorAlias = Q41313ClientConfig.ActorAlias
local subIDs = Q41313ClientConfig.SubIDs
local npcs = Q41313ClientConfig.Npcs
local gadgets = Q41313ClientConfig.Gadgets
local datas = Q41313ClientConfig.Datas

function Q41313Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41313Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41313Trigger3:TriggerIn()
    print("Q41313Trigger3:TriggerIn")
    local Q41313ClientConfig = require("Quest/Client/Q41313ClientConfig")
    local actor = actorMgr:GetActor(Q41313ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 4131312)
    end

    self:DestroySelf()
end

function Q41313Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q41313Trigger3
