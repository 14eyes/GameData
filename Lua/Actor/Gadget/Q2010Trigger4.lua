require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2010Trigger4 = class("Q2010Trigger4", GadgetActorProxy)
Q2010Trigger4.defaultAlias = "Q2010Trigger4"
local Q2010ClientConfig = require("Quest/Client/Q2010ClientConfig")

local subIDs = Q2010ClientConfig.SubIDs
local npcs = Q2010ClientConfig.Npcs
local datas = Q2010ClientConfig.Datas

function Q2010Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2010Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2010Trigger4:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("2010"):FinishQuestID(false, 201010)
    self:DestroySelf()
end

function Q2010Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q2010Trigger4
