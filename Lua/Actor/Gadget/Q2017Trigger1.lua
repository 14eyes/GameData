require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2017Trigger1 = class("Q2017Trigger1", GadgetActorProxy)
Q2017Trigger1.defaultAlias = "Q2017Trigger1"
local Q2017ClientConfig = require("Quest/Client/Q2017ClientConfig")

local subIDs = Q2017ClientConfig.SubIDs
local npcs = Q2017ClientConfig.Npcs
local gadgets = Q2017ClientConfig.Gadgets
local datas = Q2017ClientConfig.Datas

function Q2017Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2017Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2017Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("2017"):FinishQuestID(false, 201706)
    self:DestroySelf()
end

function Q2017Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q2017Trigger1
