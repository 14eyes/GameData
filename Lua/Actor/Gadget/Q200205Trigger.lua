require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200205Trigger = class("Q200205Trigger", GadgetActorProxy)
Q200205Trigger.defaultAlias = "Q200205Trigger"
local Q2002ClientConfig = require("Quest/Client/Q2002ClientConfig")

local mainID = Q2002ClientConfig.MainID
local actorAlias = Q2002ClientConfig.ActorAlias
local subIDs = Q2002ClientConfig.SubIDs
local npcs = Q2002ClientConfig.Npcs
local gadgets = Q2002ClientConfig.Gadgets
local datas = Q2002ClientConfig.Datas

function Q200205Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200205Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200205Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 200205)
    self:DestroySelf()
end

function Q200205Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200205Trigger
