require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11123Trigger_InCave = class("Q11123Trigger_InCave", GadgetActorProxy)
Q11123Trigger_InCave.defaultAlias = "Q11123Trigger_InCave"
local Q11123ClientConfig = require("Quest/Client/Q11123ClientConfig")

local mainID = Q11123ClientConfig.MainID
local actorAlias = Q11123ClientConfig.ActorAlias
local subIDs = Q11123ClientConfig.SubIDs
local npcs = Q11123ClientConfig.Npcs
local gadgets = Q11123ClientConfig.Gadgets
local datas = Q11123ClientConfig.Datas

function Q11123Trigger_InCave:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11123Trigger_InCave:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11123Trigger_InCave:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1112303)
    actorMgr:DestroyEntityActor(datas.Q11123Trigger_InCave_.alias, 3, false)
end

function Q11123Trigger_InCave:TriggerOut()
    print("TriggerOut")
end

return Q11123Trigger_InCave
