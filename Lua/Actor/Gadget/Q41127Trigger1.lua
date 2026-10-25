require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41127Trigger1 = class("Q41127Trigger1", GadgetActorProxy)
Q41127Trigger1.defaultAlias = "Q41127Trigger1"
local Q41127ClientConfig = require("Quest/Client/Q41127ClientConfig")

local mainID = Q41127ClientConfig.MainID
local actorAlias = Q41127ClientConfig.ActorAlias
local subIDs = Q41127ClientConfig.SubIDs
local npcs = Q41127ClientConfig.Npcs
local gadgets = Q41127ClientConfig.Gadgets
local datas = Q41127ClientConfig.Datas

function Q41127Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41127Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41127Trigger1:TriggerIn()
    print("TriggerIn1")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 4112708)
    self:DestroySelf()
end

function Q41127Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q41127Trigger1
