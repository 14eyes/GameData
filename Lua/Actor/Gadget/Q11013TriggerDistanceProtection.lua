require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11013TriggerDistanceProtection = class("Q11013TriggerDistanceProtection", GadgetActorProxy)
Q11013TriggerDistanceProtection.defaultAlias = "Q11013TriggerDistanceProtection"
local Q11013ClientConfig = require("Quest/Client/Q11013ClientConfig")

local subIDs = Q11013ClientConfig.SubIDs
local npcs = Q11013ClientConfig.Npcs
local datas = Q11013ClientConfig.Datas

function Q11013TriggerDistanceProtection:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11013TriggerDistanceProtection:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(38, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11013TriggerDistanceProtection:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11013"):FinishQuestID(false, 1101335)
    self:DestroySelf()
end

function Q11013TriggerDistanceProtection:TriggerOut()
    print("TriggerOut")
end

return Q11013TriggerDistanceProtection
