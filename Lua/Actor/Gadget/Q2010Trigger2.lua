require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2010Trigger2 = class("Q2010Trigger2", GadgetActorProxy)
Q2010Trigger2.defaultAlias = "Q2010Trigger2"
local Q2010ClientConfig = require("Quest/Client/Q2010ClientConfig")

local subIDs = Q2010ClientConfig.SubIDs
local npcs = Q2010ClientConfig.Npcs
local datas = Q2010ClientConfig.Datas

function Q2010Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2010Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(21, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2010Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("2010"):FinishQuestID(false, 201005)
    self:DestroySelf()
end

function Q2010Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q2010Trigger2
