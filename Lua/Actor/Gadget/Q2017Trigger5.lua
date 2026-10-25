require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2017Trigger5 = class("Q2017Trigger5", GadgetActorProxy)
Q2017Trigger5.defaultAlias = "Q2017Trigger5"
local Q2017ClientConfig = require("Quest/Client/Q2017ClientConfig")

local subIDs = Q2017ClientConfig.SubIDs
local npcs = Q2017ClientConfig.Npcs
local gadgets = Q2017ClientConfig.Gadgets
local datas = Q2017ClientConfig.Datas

function Q2017Trigger5:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2017Trigger5:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(120, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2017Trigger5:TriggerIn()
    print("TriggerIn")
end

function Q2017Trigger5:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("2017"):FinishQuestID(true, 201711)
    self:DestroySelf()
end

return Q2017Trigger5
