require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2016Trigger1 = class("Q2016Trigger1", GadgetActorProxy)
Q2016Trigger1.defaultAlias = "Q2016Trigger1"
local Q2016ClientConfig = require("Quest/Client/Q2016ClientConfig")

local subIDs = Q2016ClientConfig.SubIDs
local npcs = Q2016ClientConfig.Npcs

function Q2016Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2016Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2016Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("2016"):FinishQuestID(false, 201605)
    self:DestroySelf()
end

function Q2016Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q2016Trigger1
