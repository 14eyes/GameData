require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70661Trigger = class("Q70661Trigger", GadgetActorProxy)
Q70661Trigger.defaultAlias = "Q70661Trigger"
local Q70661ClientConfig = require("Quest/Client/Q70661ClientConfig")

local mainID = Q70661ClientConfig.MainID
local actorAlias = Q70661ClientConfig.ActorAlias
local subIDs = Q70661ClientConfig.SubIDs
local npcs = Q70661ClientConfig.Npcs
local datas = Q70661ClientConfig.Datas

function Q70661Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70661Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70661Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7066103)
end

function Q70661Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70661Trigger
