require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q18000Trigger2 = class("Q18000Trigger2", GadgetActorProxy)
Q18000Trigger2.defaultAlias = "Q18000Trigger2"
local Q18000ClientConfig = require("Quest/Client/Q18000ClientConfig")

local mainID = Q18000ClientConfig.MainID
local actorAlias = Q18000ClientConfig.ActorAlias
local subIDs = Q18000ClientConfig.SubIDs
local npcs = Q18000ClientConfig.Npcs
local gadgets = Q18000ClientConfig.Gadgets
local datas = Q18000ClientConfig.Datas

function Q18000Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q18000Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q18000Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1800022)
    self:DestroySelf()
end

function Q18000Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q18000Trigger2
