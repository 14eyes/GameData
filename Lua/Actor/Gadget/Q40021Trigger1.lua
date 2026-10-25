require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40021Trigger1 = class("Q40021Trigger1", GadgetActorProxy)
Q40021Trigger1.defaultAlias = "Q40021Trigger1"
local Q40021ClientConfig = require("Quest/Client/Q40021ClientConfig")

local mainID = Q40021ClientConfig.MainID
local actorAlias = Q40021ClientConfig.ActorAlias
local subIDs = Q40021ClientConfig.SubIDs
local npcs = Q40021ClientConfig.Npcs
local gadgets = Q40021ClientConfig.Gadgets
local datas = Q40021ClientConfig.Datas

function Q40021Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40021Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40021Trigger1:TriggerIn()
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 4002103)
    self:DestroySelf()
end

function Q40021Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q40021Trigger1
